//
//  AuthorizeResultView.swift
//  testWork
//
//  Created by Илья on 28.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

import Foundation
import UIKit

class AuthorizeResultVC: UIViewController {
     
    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var labelID: UILabel!
      
     var authorize: Authorize
 
    init?(coder: NSCoder, authorize: Authorize) {
    self.authorize = authorize
    super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
        labelLogin.text = authorize.GetLogin()
        labelID.text = authorize.GetId() 
    }
}
