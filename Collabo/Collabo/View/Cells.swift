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
  
  let nameLabel: UILabel =  {
    let label = UILabel()
    label.text = "TEST TEST TEST"
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    backgroundColor = .cyan
    addSubview(nameLabel)
    nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
  }
}

