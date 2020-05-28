//
//  Authorize.swift
//  testWork
//
//  Created by Илья on 27.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

import Foundation
import Alamofire

class Authorize {
    
    private
        
        let _loginData = [
            "username" : "guest" as String,
            "password" : "guest" as String
        ]
        
        let _authorizationUrl = "http://37.140.199.187:3000/auth/login"
        var login: String? = "default"
        var id: String? = "default"
    
    public
       
    func GetLogin() -> String{
        return self.login ?? "errorValue"
    }
    
    func GetId() -> String{ 
        return self.id ?? "errorValue"
    }
    
    func Login() {
    AF.request(_authorizationUrl,
               method: .post,
               parameters: _loginData,
               encoder: JSONParameterEncoder.default).responseJSON {
                response in switch response.result {
                    
                  case .success(let JSON):
                        let response = JSON as! NSDictionary
                        self.id = response.object(forKey: "id") as? String
                        self.login = response.object(forKey: "login") as? String
                    
                    debugPrint(self.login ?? "errorValue")
                    debugPrint(self.id ?? "errorValue")
                    
                  case .failure(_): break
      }
     }
    }
}
 
//https://github.com/Alamofire/Alamofire/blob/master/Documentation/Usage.md
