//
//  login.swift
//  KlHagaa
//
//  Created by mhr on 12/7/18.
//  Copyright © 2018 mido salem. All rights reserved.
//

import UIKit
import Alamofire

class login: UIViewController {

    @IBAction func loginBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    override func viewDidLoad() {
        
            
                super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func Btnlogin(_ sender: Any) {
        if ((textEmail.text?.isEmpty)!){
            let alertController = UIAlertController (title: "Erorr",message: "please enter corect emaile",preferredStyle: .alert)
            let cancelButton = UIAlertAction(title: "OK",style: .cancel,handler: nil)
            alertController.addAction(cancelButton)
            self.present(alertController, animated: true, completion: nil)
            return
        }
        
            else if ((textPassword.text?.isEmpty)!){
                let alertController = UIAlertController (title: "Erorr",message: "please enter corect password",preferredStyle: .alert)
                let cancelButton = UIAlertAction(title: "OK",style: .cancel,handler: nil)
                alertController.addAction(cancelButton)
                self.present(alertController, animated: true, completion: nil)
                return
        }
            let loginurl = "https://sayedfreeonline.000webhostapp.com/api/login"
            let params: [String : String] = [
                "email"       : "\(textEmail.text!)",
                "password"    : "\(textPassword.text!)",
                "firebase_token" : "b",
                "device_id"   : UIDevice.current.identifierForVendor!.uuidString
            ]
            Alamofire.request(loginurl, method: .post, parameters: params )
                .responseJSON{ response in
                    print("the response is : \(response)")
                    let result = response.result
                    print("the result is :\(result)")
                    if let arrayOfDic  = result.value as? Dictionary<String, AnyObject>{
                        if(arrayOfDic["success"] as! Bool == false ){
                            let alert = UIAlertController(title: "Error", message: "enter correct email & password", preferredStyle: .alert)
                            let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                            alert.addAction(ok)
                            self.present(alert, animated: true, completion: nil)
                            return
                        }
                        else{
                            let storypord: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
                            let nextViewController = storypord.instantiateViewController(withIdentifier: "Home") as! Home
                            self.present(nextViewController, animated:true, completion:nil)
                            
                        }
                    }
                }
            }
        }
