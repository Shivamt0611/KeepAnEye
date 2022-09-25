//
//  ViewController.swift
//  KeepAnEye
//
//  Created by Shivam Tomar on 08/09/22.
//

import UIKit
import FirebaseAuth
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var cnfpwd: UITextField!
    @IBOutlet weak var LBL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sign(_ sender: Any) {
        if username.text?.isEmpty == true{
            print("No email")
            return
        }
        if password.text?.isEmpty == true{
            print("No password")
            return
        }
        if cnfpwd.text == password.text{
            signUP()
            LBL.backgroundColor = UIColor.green
            LBL.text = "New user created"
        }else
        {
            LBL.text =  "Password & Confirm Password must be same"
        }
    }
    func signUP() {
        Auth.auth().createUser(withEmail: username.text!, password: password.text!) { (authResult, error) in
            guard let user = authResult?.user, error == nil else {
                print("Error \(error?.localizedDescription)")
                return
            }
        }
    }
    @IBAction func signuppp(_ sender: Any) {
        performSegue(withIdentifier: "loginggg", sender: self)
    }
    

    
}

