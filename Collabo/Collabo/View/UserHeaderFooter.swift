//
//  Cells.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-17.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents

class UserFooter: DatasourceCell {
  
  let textLabel: UILabel = {
    let label = UILabel()
    label.text = "SHOW ME MORE"
    label.textColor = UIColor(r: 61, g: 167, b: 244)
    label.font = UIFont(name: "AvenirNext-Medium", size: 18)
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = .gray
    
    backgroundColor = .white
    addSubview(textLabel)
    textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    backgroundColor = .white
  }
}

class UserHeader: DatasourceCell {
  
  let textLabel: UILabel = {
    let label = UILabel()
    label.text = "WHO TO FOLLOW"
    label.textColor = .darkGray
    label.font = UIFont(name: "AvenirNext-Medium", size: 22)
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    
    separatorLineView.isHidden = false
    separatorLineView.backgroundColor = .gray
    
    backgroundColor = .white
    addSubview(textLabel)
    textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    backgroundColor = .white
  }
}

