//
//  Users.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-19.
//  Copyright © 2018 Kyla . All rights reserved.
//

import UIKit
import SwiftyJSON

struct User {
  let name: String
  let userName: String
  let bioText: String
  let profileImage: UIImage
  
  init(json: JSON) {
    self.name = json["name"].stringValue
    self.userName = json["username"].stringValue
    self.bioText = json["bio"].stringValue
    self.profileImage = UIImage()
  }
}
