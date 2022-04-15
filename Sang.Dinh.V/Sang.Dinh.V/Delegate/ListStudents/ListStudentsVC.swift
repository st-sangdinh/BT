//
//  ListStudentsVC.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 07/04/2022.
//

import UIKit

class ListStudentsVC: UIViewController, StdentDetaillDelegate {
    func updateStudent(student: Student) {
        if(student.id == 0){
            name1.text = student.name
        }else{
            name2.text = student.name
        }
        listStudents = [Student(id: student.id, name: student.name)]
    }
    
    
    @IBOutlet weak var id1: UILabel!
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var id2: UILabel!
    @IBOutlet weak var name2: UILabel!
    
    var listStudents: [Student] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List Students"
        listStudents = [Student(id: 0, name: "Sang"),
                        Student(id: 1, name: "Sang1")]
//       In ra data của 2 item
        listStudents.forEach {student in
            if(student.id == 0){
                id1.text = "\(student.id)"
                name1.text = (student.name)
            }else{
                id2.text = "\(student.id)"
                name2.text = (student.name)
            }
        }
    }


    @IBAction func tapOnEditButton(_ button: UIButton){
        let index = button.tag
        if (button.tag == 0){
            print("Open First Index")
        }else{
            print("Open Second Index")
        }
        let detailVC = StudentDetaillVC()
        detailVC.student = listStudents[index]
//        Uỷ quyền thực hiện công việc
        detailVC.delegate = self
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
