//
//  ViewController.swift
//  testWork
//
//  Created by Илья on 27.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let authorize = Authorize()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authorize.Login()
    }
  
   @IBAction func Authorization(_ sender: Any) {
         self.performSegue(withIdentifier: "isAuthorizedShow", sender: self)
    }
    
    @IBSegueAction
    func prepare(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> AuthorizeResultVC? {
         debugPrint("isAuthorizedShow")
         return  AuthorizeResultVC(coder: coder, authorize: authorize)
    }
}
