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
      
      profileImageView.loadImage(urlString: tweet.user.profileImageUrl)
      
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
    tv.backgroundColor = .clear
    tv.textColor = .black
    tv.font = UIFont(name: "AvenirNext-Regular", size: 16)
    return tv
  }()
  
  let profileImageView: CachedImageView = {
    let imageView = CachedImageView()
    imageView.image = UIImage(named: "profile_image")
    imageView.layer.cornerRadius = 5
    imageView.layer.masksToBounds = true
    imageView.mask?.contentMode = .scaleAspectFit
    return imageView
  }()
  
  let replyButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(UIImage(named: "replyIconGray")?.withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let retweetButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(UIImage(named: "retweetIconBlue")?.withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let likeButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(UIImage(named: "heartBubbleIconGray")?.withRenderingMode(.alwaysOriginal), for: .normal)
    return button
  }()
  
  let directMessageButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(UIImage(named: "mailIconGray")?.withRenderingMode(.alwaysOriginal), for: .normal)
    return button
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

    setUpBottomButtons()
  }
  
  fileprivate func setUpBottomButtons() {
    let replyButtonContainerView = UIView()
    replyButtonContainerView.backgroundColor = .clear
    
    let retweetButtonContainerView = UIView()
    retweetButtonContainerView.backgroundColor = .clear
    
    let likeButtonContainerView = UIView()
    likeButtonContainerView.backgroundColor = .clear
    
    let directMessageContainerView = UIView()
    directMessageContainerView.backgroundColor = .clear
    
    let buttonStackView = UIStackView(arrangedSubviews: [replyButtonContainerView, retweetButtonContainerView, likeButtonContainerView, directMessageContainerView])
    buttonStackView.axis = .horizontal
    buttonStackView.distribution = .fillEqually
    
    addSubview(buttonStackView)
    buttonStackView.anchor(nil, left: messageTextView.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 4, rightConstant: 0, widthConstant: 0, heightConstant: 20)
    
    addSubview(replyButton)
    addSubview(retweetButton)
    addSubview(likeButton)
    addSubview(directMessageButton)
    
    replyButton.anchor(replyButtonContainerView.topAnchor, left: replyButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
    
    retweetButton.anchor(replyButtonContainerView.topAnchor, left: retweetButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
    
    likeButton.anchor(likeButtonContainerView.topAnchor, left: likeButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
    
    directMessageButton.anchor(directMessageContainerView.topAnchor, left: directMessageContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
  }
  
}
