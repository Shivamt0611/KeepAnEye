//
//  signinpage.swift
//  KeepAnEye
//
//  Created by Shivam Tomar on 08/09/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import Firebase


class signinpage: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signin(_ sender: Any) {
        let email = email.text
        let pass = password.text
        Auth.auth().signIn(withEmail: email!, password: pass!) { (user, error) in
            if let error = error {
                print("Unable to signin",error.localizedDescription)
                self.lbl.text = "Enter valid Email and Password"
                return
            }
            self.performSegue(withIdentifier: "home", sender: self)
          
            
            
        }
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
