//
//  Cells.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-17.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {
  override func setupViews() {
    backgroundColor = .lightGray
  }
}

class UserHeader: DatasourceCell {
  override func setupViews() {
    super.setupViews()
    backgroundColor = .lightGray
  }
}

class UserCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      nameLabel.text = datasourceItem as? String
    }
  }
  
  ///for the profile image view
  let profileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .white
    return imageView
  }()
  
  let nameLabel: UILabel =  {
    let label = UILabel()
    label.text = "TEST TEST TEST"
    label.backgroundColor = .darkGray
    label.textColor = .white
    label.font = UIFont(name: "AvenirNext-Bold", size: 20)
    return label
  }()
  
  let userNameLabel: UILabel =  {
    let label = UILabel()
    label.text = "User Name"
    label.backgroundColor = .darkGray
    label.textColor = .white
    label.font = UIFont(name: "AvenirNext", size: 20)
    return label
  }()
  
  let bioTextView: UITextView = {
    let textView = UITextView()
    textView.backgroundColor = .gray
    textView.textColor = .white
    textView.font = UIFont(name: "AvenirNext", size: 20)
    return textView
  }()
  
  let followButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .white
    return button
  }()
  
  override func setupViews() {
    super.setupViews()
    backgroundColor = .cyan
    
    addSubview(profileImageView)
    addSubview(nameLabel)
    addSubview(userNameLabel)
    addSubview(bioTextView)
    addSubview(followButton)
    
    profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
    
    nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
    
    userNameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)

    bioTextView.anchor(userNameLabel.bottomAnchor, left: userNameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    
    followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
  }
  
}

