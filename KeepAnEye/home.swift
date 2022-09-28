//
//  home.swift
//  KeepAnEye
//
//  Created by Shivam Tomar on 08/09/22.
//

import UIKit
import FirebaseDatabase
import Firebase
import FirebaseCore
import FirebaseAuth


class home: UIViewController {

    @IBOutlet weak var income: UILabel!
    @IBOutlet weak var expense: UILabel!
    @IBOutlet weak var total: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func income(_ sender: Any) {
        performSegue(withIdentifier: "income", sender: self)
    }
    
    @IBAction func expense(_ sender: Any) {
        performSegue(withIdentifier: "expense", sender: self)
    }
    
    @IBAction func transfer(_ sender: Any) {
        performSegue(withIdentifier: "transfer", sender: self)
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
