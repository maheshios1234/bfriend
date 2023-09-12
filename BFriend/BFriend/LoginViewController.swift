//
//  LoginViewController.swift
//  BFriend
//
//  Created by admin on 06/09/23.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        contVw.layer.cornerRadius = 25
        contVw.layer.masksToBounds = true
        emailStack.layer.cornerRadius = 30
        emailStack.layer.masksToBounds = true
       
        fbBtn.layer.cornerRadius = 25
        fbBtn.layer.masksToBounds = true
        googleBtn.layer.cornerRadius = 25
        googleBtn.layer.masksToBounds = true
        pwStack.layer.cornerRadius = 30
        pwStack.layer.masksToBounds = true

    }
    @IBOutlet weak var googleBtn: UIButton!
    
    @IBAction func forgotBtn(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "forgotPwVC") as! forgotPwVC
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    @IBAction func signupBtn(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    
    @IBOutlet weak var fbBtn: UIButton!
    

    
    @IBOutlet weak var pwStack: UIStackView!
    
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var emailStack: UIStackView!
    @IBOutlet weak var contVw: UIView!
    @IBOutlet weak var pwTxt: UITextField!
    @IBAction func loginBtn(_ sender: Any) {
     txtValidate()
    }
    func txtValidate(){
        if emailTxt.text == "abc@gmail.com" && pwTxt.text == "1234"{
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "OtpVc") as! OtpVc
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }else if emailTxt.text == "" || pwTxt.text == ""{
            let alert = UIAlertController(title: "Alert", message: "Empty Fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                    case .default:
                    print("default")
                    
                    case .cancel:
                    print("cancel")
                    
                    case .destructive:
                    print("destructive")
                    
                }
            }))
            self.present(alert, animated: true, completion: nil)
            }
        
        else{
            let alert = UIAlertController(title: "Alert", message: "Wrong EmailAdress or Password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                    case .default:
                    print("default")
                    
                    case .cancel:
                    print("cancel")
                    
                    case .destructive:
                    print("destructive")
                    
                }
            }))
            self.present(alert, animated: true, completion: nil)
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
