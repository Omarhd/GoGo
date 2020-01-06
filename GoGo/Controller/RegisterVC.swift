//
//  RegisterVC.swift
//  GoGo
//
//  Created by Omar on 05/01/2020.
//  Copyright © 2020 Omar. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {
    
    // outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPasswordTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passCheckImg: UIImageView!
    @IBOutlet weak var confirmPassCheckImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        passwordTxt.addTarget(self, action: #selector(txtFieldChanged(_ :)), for: UIControl.Event.editingChanged)
        confirmPasswordTxt.addTarget(self, action: #selector(txtFieldChanged(_ :)), for: UIControl.Event.editingChanged)


        // Do any additional setup after loading the view.
    }
    
    @objc func txtFieldChanged(_ textField: UITextField) {
        
        guard let passTxt = passwordTxt.text else {return}
        
        // check will start when start typing in confirm pass feiled
        if textField == confirmPasswordTxt {
            passCheckImg.isHidden = false
            confirmPassCheckImg.isHidden = false
        } else {
            if passTxt.isEmpty {
                passCheckImg.isHidden = true
                confirmPassCheckImg.isHidden = true
                confirmPasswordTxt.text = ""
            }
        }
        
        if passwordTxt.text == confirmPasswordTxt.text{
            passCheckImg.image = UIImage(named: AppImages.GreenCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.GreenCheck)
            
        } else {
            passCheckImg.image = UIImage(named: AppImages.RedCheck)
            confirmPassCheckImg.image = UIImage(named: AppImages.RedCheck)
            
        }
    }


    @IBAction func registerClicked(_ sender: Any) {
        
        guard let username = usernameTxt.text, username.isNotEmpty ,
            let email = emailTxt.text, email.isNotEmpty ,
            let password = passwordTxt.text, password.isNotEmpty else {return}
      
        activityIndicator.startAnimating()
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                debugPrint(error)
                return
            }
            self.activityIndicator.stopAnimating()
            
        }
}
}
