//
//  TweetCell.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-22.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      guard let tweet = datasourceItem as? Tweet else { return }
      
      let attributedText = NSMutableAttributedString(string: tweet.user.name, attributes: [NSAttributedString.Key.font: UIFont(name:  "AvenirNext-Bold", size: 18) as Any])
      
      let twitterBlue = UIColor(r: 61, g: 167, b: 244)

      let userNameString = "  \(tweet.user.userName)\n"
      attributedText.append(NSAttributedString(string: userNameString, attributes: [NSAttributedString.Key.font: UIFont(name: "AvenirNext-Regular", size: 16) as Any, NSAttributedString.Key.foregroundColor: twitterBlue]))
      
      let paragraphStyle = NSMutableParagraphStyle()
      paragraphStyle.lineSpacing = 4
      let range = NSMakeRange(0, attributedText.string.characters.count)
      attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: range)
      
      attributedText.append(NSAttributedString(string: tweet.message, attributes: [NSAttributedString.Key.font: UIFont(name: "AvenirNext-Regular", size: 16) as Any]))

      
      messageTextView.attributedText = attributedText
          }
  }
  
  let messageTextView: UITextView = {
    let tv = UITextView()
    tv.text = "Some sample text!"
    tv.textColor = .black
    tv.font = UIFont(name: "AvenirNext-Regular", size: 16)
    return tv
  }()
  
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
    addSubview(messageTextView)
    
    profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
    
    messageTextView.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 4, leftConstant: 4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
  }
  
}
