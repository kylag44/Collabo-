//
//  HomeController.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-17.
//  Copyright © 2018 Kyla . All rights reserved.
//

import UIKit

class WordCell: UICollectionViewCell {
  
  ///this gets called when a cell is dequeued
  override init(frame: CGRect) {
    super.init(frame: frame)
    setUpViews()
  }
  
  let wordLabel: UILabel =  {
    let label = UILabel()
    label.text = "TEST TEST TEST"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  func setUpViews() {
    backgroundColor = .cyan
    
    addSubview(wordLabel)
    wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
    wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  
  let cellId = "cellId"
  let headerId = "headerId"
  let footerId = "footerId"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.backgroundColor = .darkGray
    collectionView.register(WordCell.self, forCellWithReuseIdentifier: cellId)
    collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerId)
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)

    return cell
  }
  
  ///this makes the cells the size I want
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: 50)
  }
  
  override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    ///make sure you're not returning the header as the footer
    if kind == UICollectionView.elementKindSectionHeader {
      let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
      header.backgroundColor = .black
      return header
    } else {
      let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerId, for: indexPath)
      footer.backgroundColor = .black
      return footer
  }
}
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 50)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 100)
  }
  
}
