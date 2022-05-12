//
//  AddStudentViewController.swift
//  Ex2
//
//  Created by Lee Wolf on 12/05/2022.
//

import UIKit

class AddStudentViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var address: UITextField!
    
    private var list = Data.shared.getStudentList()
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        clearTextFields()
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        if !name.text!.isEmpty && !id.text!.isEmpty {
            Data.shared.AddStudent(Student(name.text!,id.text!,"image"))
            clearTextFields()
            print(Data.shared.getStudentList())
            let listVC = tabBarController?.children[0].children[0] as? StudentListViewController
            listVC?.reload()
            listVC?.tableView
            tabBarController?.selectedIndex = 0
        }
    }
    
    private func clearTextFields() {
        name.text = ""
        id.text = ""
        phone.text = ""
        address.text = ""
    }
}
