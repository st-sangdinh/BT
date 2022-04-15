//
//  CustomTableVC.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 08/04/2022.
//

import UIKit

class CustomTableVC: UIViewController, CustomTableViewCellDelegate {
    
    func nameMess(cell: CustomTableViewCell) {
        let messName = cell.nameLabel.text
        print("Nhắn tin \(messName ?? "")")
    }
    
    func callName(cell: CustomTableViewCell) {
//        tableView.indexPath(for: name)
        let callName = cell.nameLabel.text
        print("Gọi cho \(callName ?? "")")
    }
    

    @IBOutlet weak var tableView: UITableView!
    var listStudents: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CustomTabelVC"
      configTableView()
    }
    private func configTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CustomTBV")
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}
extension CustomTableVC: UITableViewDataSource{

    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return 3
        }else{
            return 3
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTBV", for: indexPath)
            cell.textLabel?.text = "Cell\(indexPath.row)"
            cell.imageView?.image = UIImage(named: "home")
            cell.accessoryType = .detailButton
            return cell
        }else{
            listStudents = [Student(id: 0, name: "ABCD"),
                            Student(id: 1, name: "Sang"),
                            Student(id: 1, name: "Sang2")
            ]
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell
            let students = Student(id: listStudents[indexPath.row].id, name: "\(listStudents[indexPath.row].name)")
            cell?.setData(students)
            cell?.delegate = self
            return cell ?? UITableViewCell()
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Header\(section)"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        "Footer\(section)"
    }
  
}
extension CustomTableVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Dã chọn Cell tại vị trí \(indexPath.row) trong seletion thứ \(indexPath.section)")
        let use = BT1()
        if(indexPath.row == 1 && indexPath.section == 0){
            navigationController?.pushViewController(use, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("Dã bỏ chọn Cell tại vị trí \(indexPath.row) trong seletion thứ \(indexPath.section)")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }

}
