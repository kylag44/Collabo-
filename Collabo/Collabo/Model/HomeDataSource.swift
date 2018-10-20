//
//  HomeDataSource.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-17.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
  
  let users: [User] = {
    let kylaUser = User(name: "Kyla Georgievski", userName: "@kylag44", bioText: "Hey, this is my twitter like layout view that I'm testing out right now! Looks good, don't it?!I'm going to make this cell extra large so I can test out my dynamic cell sizing!!! Does it work? How does this look now? Are we getting dynamic sizing?🍔🍟", profileImage: UIImage(named: "profile_image")!)
    let doggyUser = User(name: "Pokey Puppy", userName: "@wigglyjiggly", bioText: "Woof!", profileImage: UIImage(named: "dog9")!)
    let pikaPupUser = User(name: "PikaPup", userName: "@pikaPup88", bioText: "I am a cute dog and I love to wiggle and jiggle all around town! I love eating burgers and fries and I can never get enough!", profileImage: UIImage(named: "dog8")!)
    
    return [kylaUser, doggyUser, pikaPupUser]
  }()
  
  
  //let words = ["user1", "user2", "user3"]
  
  override func footerClasses() -> [DatasourceCell.Type]? {
    return [UserFooter.self]
  }
  
  override func headerClasses() -> [DatasourceCell.Type]? {
    return [UserHeader.self]
  }
  
  override func cellClasses() -> [DatasourceCell.Type] {
    return [UserCell.self]
  }
  
  override func item(_ indexPath: IndexPath) -> Any? {
    return users[indexPath.item]
  }
  
  override func numberOfItems(_ section: Int) -> Int {
    return users.count
  }
  
}
