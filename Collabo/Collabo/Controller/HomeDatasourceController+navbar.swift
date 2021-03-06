//
//  HomeDatasourceController+navbar.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-20.
//  Copyright © 2018 Kyla . All rights reserved.
//

import UIKit

extension HomeDatasourceController {
  
  func setUpNavigationBarItems() {
    setUpLeftNavItems()
    setUpRightNavItems()
    setUpRemainingNavItems()
  }
  
  private func setUpRemainingNavItems() {
    let titleImageView = UIImageView(image: UIImage(named: "xCloudIcon"))
    titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    titleImageView.contentMode = .scaleAspectFit
    
    navigationItem.titleView = titleImageView
    
    navigationController?.navigationBar.backgroundColor = .white
    navigationController?.navigationBar.isTranslucent = false
    
    ///this replaces the line between the header and nav bar with nothing
//    navigationController?.navigationBar.shadowImage = UIImage()
//    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//    let navBarSeperatorView = UIView()
//    navBarSeperatorView.backgroundColor = .gray
//    navBarSeperatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
  }
  
  private func setUpLeftNavItems() {
    let followButton = UIButton(type: .system)
    followButton.setImage(UIImage(named: "addUserBlueGray")?.withRenderingMode(.alwaysOriginal), for: .normal)
    followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    followButton.contentMode = .scaleAspectFit
    navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
  }
  
  private func setUpRightNavItems() {
    let searchButton = UIButton(type: .system)
    searchButton.setImage(UIImage(named: "searchIcon")?.withRenderingMode(.alwaysOriginal), for: .normal)
    searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    searchButton.contentMode = .scaleAspectFit
    
    let composeButton = UIButton(type: .system)
    composeButton.setImage(UIImage(named: "writeGrayIcon")?.withRenderingMode(.alwaysOriginal), for: .normal)
    composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    composeButton.contentMode = .scaleAspectFit
    
    navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
  }
  
/////this funcion will get rid of my darkGray buffer between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return 0
    }
  
}
