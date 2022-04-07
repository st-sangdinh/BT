//
//  StudentDetaillVC.swift
//  Sang.Dinh.V
//
//  Created by Rin Sang on 07/04/2022.
//

import UIKit
protocol StdentDetaillDelegate: class {
    func updateStudent(student: Student)
}

class StudentDetaillVC: UIViewController {
    @IBOutlet weak var nameTextFileld: UITextField!
    var student: Student = Student(id: 0, name: "")
    weak var delegate: StdentDetaillDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Student Detaill"
        nameTextFileld.text = student.name
    }
    
    @IBAction func didTapSaveButton(_ button: UIButton){
        print("UpdateName")
        student.name = nameTextFileld.text ?? ""
        delegate?.updateStudent(student: student)
        navigationController?.popViewController(animated: true)
    }
}
