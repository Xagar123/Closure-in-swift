//
//  SecondViewController.swift
//  closure
//
//  Created by Admin on 10/11/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var emailLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func GoToHomePageButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "first") as! ViewController
        
        vc.completion = { dict in
            self.nameLable.text = dict["name"] as! String
            self.emailLable.text = dict["password"] as! String
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    
    
    

}
