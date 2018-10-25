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

  func fetchHomeFeed(completion: @escaping (HomeDatasource?, Error?) -> ()) {
    //start JSON fetch
    let request: APIRequest<HomeDatasource, JSONError> = tron.swiftyJSON.request("/twitter/home1")
    request.perform(withSuccess: { (homeDatasource) in
      completion(homeDatasource, nil)
    }) { (err) in
//      let err = err as? APIError<JSONError>
//      err?.response?.statusCode
      completion(nil, err)
    }
  }
  
  class JSONError: JSONDecodable {
    required init(json: JSON) throws {
      print("JSON ERROR")
    }
  }
  
}
