//
//  ViewController.swift
//  UserLogin
//
//  Created by Vincent Zhao on 8/3/15.
//  Copyright (c) 2015 AskiNowDemos. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
  @IBOutlet var emailTextField : UITextField!
  @IBOutlet var passwordTextField : UITextField!
  
  @IBAction func submitLogin(sender: AnyObject) {
    let loginParameters = [
      "session": [
        "email": emailTextField.text,
        "password": passwordTextField.text
      ]
    ]
    Alamofire.request(.POST, "http://localhost:3000/sessions", parameters: loginParameters, encoding: .JSON).response {
      request, response, data, error in
      println(request)
      println(response)
      println(JSON(data: data!))
    }
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

