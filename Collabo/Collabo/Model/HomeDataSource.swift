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

  let tweets: [Tweet] = {
    let kylaUser = User(name: "Kyla Georgievski", userName: "@kylag44", bioText: "Hey, this is my twitter like layout view that I'm testing out right now! Looks good, don't it?!I'm going to make this cell extra large so I can test out my dynamic cell sizing!!! Does it work? How does this look now? Are we getting dynamic sizing?🍔🍟", profileImage: UIImage(named: "profile_image")!)
    let tweet = Tweet(user: kylaUser, message: "This is just some text to test that the message text is being shown. I will make it nice and long because I really need a nice and long text block to render out for all these testing purposes. One more run on sentence should do the trick, I really would like this to work!☺️")
    let tweet2 = Tweet(user: kylaUser, message: "Needed some smaller text!")
    let tweet3 = Tweet(user: kylaUser, message: "I need a medium amount of text to test out this one. Maybe just a few more words should do the trick!")
    return [tweet, tweet2, tweet3]
  }()
  
  override func footerClasses() -> [DatasourceCell.Type]? {
    return [UserFooter.self]
  }
  
  override func headerClasses() -> [DatasourceCell.Type]? {
    return [UserHeader.self]
  }
  
  override func cellClasses() -> [DatasourceCell.Type] {
    return [UserCell.self, TweetCell.self]
  }
  
  override func item(_ indexPath: IndexPath) -> Any? {
    if indexPath.section == 1 {
      return tweets[indexPath.item]
    }
    return users[indexPath.item]
  }
  
  override func numberOfSections() -> Int {
    return 2
  }
  
  override func numberOfItems(_ section: Int) -> Int {
    if section == 1 {
      return tweets.count
    }
    return users.count
  }
  
}
