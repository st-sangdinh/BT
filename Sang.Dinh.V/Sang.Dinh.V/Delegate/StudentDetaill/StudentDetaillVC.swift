//
//  StudentDetaillVC.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 07/04/2022.
//

import UIKit
//1/Định nghĩa Delegate
protocol StdentDetaillDelegate: class {
    func updateStudent(student: Student)
}

class StudentDetaillVC: UIViewController {
    @IBOutlet weak var nameTextFileld: UITextField!
    var student: Student = Student(id: 0, name: "")
//2/Khởi tạo giá tị StdentDetaillDelegate
    weak var delegate: StdentDetaillDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Student Detaill"
        
//        Set dữ liệu
        nameTextFileld.text = student.name
    }
    
    @IBAction func didTapSaveButton(_ button: UIButton){
        print("UpdateName")
        student.name = nameTextFileld.text ?? ""
//        Tạo student
        delegate?.updateStudent(student: student)
        navigationController?.popViewController(animated: true)
    }
}
