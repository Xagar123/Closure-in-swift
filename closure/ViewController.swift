//
//  ViewController.swift
//  closure
//
//  Created by Admin on 10/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    typealias completionHandler = ([String:Any]) -> Void
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    var completion: completionHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func saveButton(_ sender: UIButton) {
        
//        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        
        guard let name = nameTextField.text else { return }
        guard let password = emailTextField.text else { return }

        let dict = ["name": name, "email": password]
        
        guard let completionBlock = completion else {return}
        completionBlock(dict)
        //self.navigationController?.pushViewController(secondVC, animated: true)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
}

