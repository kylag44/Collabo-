//
//  Service.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-24.
//  Copyright © 2018 Kyla . All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
  
  let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
  
  static let sharedInstance = Service()

  func fetchHomeFeed(completion: @escaping (HomeDatasource) -> ()) {
    //start JSON fetch
    let request: APIRequest<HomeDatasource, JSONError> = tron.swiftyJSON.request("/twitter/home")
    request.perform(withSuccess: { (homeDatasource) in
      completion(homeDatasource)
    }) { (err) in
      print("Failed to fetch JSON...", err)
    }
  }
  
  class JSONError: JSONDecodable {
    required init(json: JSON) throws {
      print("JSON ERROR")
    }
  }
  
}
