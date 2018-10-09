//
//  LoginViewController.swift
//  Fabelizer
//
//  Created by Infinitum on 04/10/18.
//  Copyright © 2018 Infinitumus.com. All rights reserved.
//

import UIKit
import ACFloatingTextfield_Swift
class LoginViewController: UIViewController,UITextFieldDelegate
{

    @IBOutlet weak var usernameTxt: ACFloatingTextfield!
    @IBOutlet weak var passwordTxt: ACFloatingTextfield!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Submit(_ sender: UIButton) {        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let redViewController = mainStoryBoard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = redViewController
    }
    //    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        self.view.endEditing(true)
//        return false
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField .resignFirstResponder()
        return false;
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
