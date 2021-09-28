//
//  ViewController.swift
//  alertProject
//
//  Created by talha kaya on 16.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    
    func alerts(message:String,title:String) {
        
       
        let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
       
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler:.none)
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func singUpClicked(_ sender: Any) {
        
        if userNameText.text == "" {
        alerts(message: "can not be null user name ",title: "error!")
            }
        else if passwordText.text == "" {
            alerts(message:"can not be null password",title: "error!" )
            }
       else if passwordText.text != password2Text.text{
            alerts(message: "passwords does not match",title:"error!")
        }
       else{
        
       }
    
    }
    
    
    
    

}



