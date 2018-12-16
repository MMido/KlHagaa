//
//  ViewController.swift
//  KlHagaa
//
//  Created by mhr on 12/7/18.
//  Copyright © 2018 mido salem. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBAction func login(_ sender: Any) {
        let storypord: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        let nextViewController = storypord.instantiateViewController(withIdentifier: "login") as! login
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func singup(_ sender: Any) {
        let storypord: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        let nextViewController = storypord.instantiateViewController(withIdentifier: "singup") as! singup
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

