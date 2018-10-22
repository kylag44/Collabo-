//
//  TweetCell.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
  
  let profileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "profile_image")
    imageView.layer.cornerRadius = 5
    imageView.layer.masksToBounds = true
    imageView.mask?.contentMode = .scaleAspectFit
    return imageView
  }()
  
  override func setupViews() {
    super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = .gray 
    
    backgroundColor = .white
    
    addSubview(profileImageView)
    profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
  }
  
}
