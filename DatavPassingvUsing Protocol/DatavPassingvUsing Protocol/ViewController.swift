//
//  ViewController.swift
//  DatavPassingvUsing Protocol
//
//  Created by Admin on 27/01/23.
//

import UIKit

class ViewController: UIViewController, StudentProtocol {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func nextPage(_ sender: UIButton) {
       let svc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        svc.delegate = self
        self.navigationController?.pushViewController(svc, animated: true)
        
    }
    
    func passData(firstName: String, lastName: String) {
        self.firstName.text = firstName
        self.lastName.text = lastName
    }
}

