//
//  UserCell.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-19.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class UserCell: DatasourceCell {
  
  let twitterBlue = UIColor(r: 61, g: 167, b: 244)
  
  override var datasourceItem: Any? {
    didSet {
      guard let user = datasourceItem as? User else { return }
      nameLabel.text = user.name
      userNameLabel.text = user.userName
      bioTextView.text = user.bioText
      profileImageView.image = user.profileImage
    }
  }
  
  let profileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "profile_image")
    imageView.layer.cornerRadius = 5
    imageView.layer.masksToBounds = true
    imageView.mask?.contentMode = .scaleAspectFit
    return imageView
  }()
  
  let nameLabel: UILabel =  {
    let label = UILabel()
    label.text = "Kyla Georgievski"
    label.backgroundColor = .white
    label.textColor = .black
    label.font = UIFont(name: "AvenirNext-Bold", size: 18)
    return label
  }()
  
  let userNameLabel: UILabel =  {
    let label = UILabel()
    label.text = "@kylag44"
    label.backgroundColor = .white
    label.textColor = UIColor(r: 61, g: 167, b: 244)
    label.font = UIFont(name: "AvenirNext- Regular", size: 16)
    return label
  }()
  
  let bioTextView: UITextView = {
    let textView = UITextView()
    textView.text = "WHOOOOOOOOOO MEEEEE"
    textView.backgroundColor = .clear
//    textView.backgroundColor = .red
    textView.textColor = .black
    textView.font = UIFont(name: "AvenirNext-Regular", size: 16)
    return textView
  }()
  
  let followButton: UIButton = {
    let twitterBlue = UIColor(r: 61, g: 167, b: 244)
    let button = UIButton()
    button.layer.cornerRadius = 5
    button.layer.borderColor = twitterBlue.cgColor
    button.layer.borderWidth = 2
    button.setImage(UIImage(named: "addUserBlueGray"), for: .normal)
    button.imageView?.contentMode = .scaleAspectFit
    button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
    button.setTitle("Follow", for: .normal)
    button.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 20)
    button.setTitleColor(twitterBlue, for: .normal)
    button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
    return button
  }()
  
  override func setupViews() {
    super.setupViews()
    backgroundColor = .white
   
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = .gray
    
    addSubview(profileImageView)
    addSubview(nameLabel)
    addSubview(userNameLabel)
    addSubview(bioTextView)
    addSubview(followButton)
    
    profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
    
    nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
    
    userNameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 4, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
    
    bioTextView.anchor(userNameLabel.bottomAnchor, left: userNameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    
    followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
  }
  
}

