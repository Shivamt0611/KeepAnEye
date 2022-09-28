//
//  ExpensePage.swift
//  KeepAnEye
//
//  Created by Shivam Tomar on 27/09/22.
//

import UIKit
import FirebaseDatabase
import Firebase
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

class ExpensePage: UIViewController {
    var ref: DatabaseReference!
    var db: Firestore!
    
    @IBOutlet weak var Amount: UITextField!
    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var desc: UITextField!
    @IBOutlet weak var lbl: UILabel!
    let datepicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ref = Database.database().reference()
        db = Firestore.firestore()
        createdatepicker()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addbu(_ sender: Any) {
        db.collection("Expense").addDocument(data:[
            //"Date":Timestamp(date: Date()),
            "Date":(date.text)!,
            "Expense":Int(Amount.text!)!,
                "Description":(desc.text)! ]){
                    Err in
                    if let oErr = Err{
                        print("Error: \(oErr)")
                    }
                    else{
                        print("Added")
                        self.lbl.text = "Expense Added Sucessfully"
                    }
                }
    }
    func createdatepicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let dbtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donefc))
        toolbar.setItems([dbtn], animated: true)
        date.inputAccessoryView = toolbar
        date.inputView = datepicker
        datepicker.datePickerMode = .date
    }
    @objc func donefc(){
        let formate = DateFormatter()
        formate.dateStyle = .medium
        formate.timeStyle = .none
        
        date.text = formate.string(from: datepicker.date)
        self.view.endEditing(true)
        
        
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
