//
//  SecondViewController.swift
//  DatavPassingvUsing Protocol
//
//  Created by Admin on 27/01/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var emptyMsg: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var delegate:StudentProtocol?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        emptyMsg.isHidden = true
        navigationItem.hidesBackButton = true
    }
    

    @IBAction func saveAndPassData(_ sender: UIButton) {
        guard delegate != nil
        else {
             print("Delegate Not Set")
              return
        }
        if(firstNameTextField.text!.isEmpty || lastNameTextField.text!.isEmpty){
            emptyMsg.isHidden = false
        }
        else{
            emptyMsg.isHidden = true
            let firstName:String = "First Name :- " + firstNameTextField.text!
            let lastName:String = "Last Name :- " + lastNameTextField.text!
            self.delegate?.passData(firstName: firstName, lastName: lastName)
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
}
