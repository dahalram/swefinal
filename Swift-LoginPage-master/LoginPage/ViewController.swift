//
//  ViewController.swift
//  LoginPage
//
//  Created by 游宗翰 on 2016/7/27.
//  Copyright © 2016年 han. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    let ac = "12345"
    let pw = "12345"
    
    @IBOutlet weak var account: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == account
        {
            password.becomeFirstResponder()
        }
        else
        {
            if account.text == ac && password.text == pw
            {
                password.resignFirstResponder()
                let controller = self.storyboard?.instantiateViewController(withIdentifier: "wellcome")
                controller?.modalTransitionStyle = .flipHorizontal
                self.present(controller!, animated: true, completion: nil)
            }
            else
            {
                password.resignFirstResponder()
                account.text = ""
                password.text = ""
                let alertController = UIAlertController(title: "Try Again", message: "使用者名稱或密碼有誤", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(ok)
                self.present(alertController, animated: true, completion: nil)
            }
            
        }
        return true
    }
}
