//
//  HomeDatasourceController.swift
//  Collabo
//
//  Created by Kyla  on 2018-10-17.
//  Copyright © 2018 Kyla . All rights reserved.
//

import LBTAComponents


class HomeDatasourceController: DatasourceController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let homeDatasource = HomeDatasource()
    self.datasource = homeDatasource
    collectionView.backgroundColor = .darkGray
  }
  
  ///this funcion will get rid of my darkGray buffer between cells
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//    return 0
//  }
  
  override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    if let user = self.datasource?.item(indexPath) as? User {
      //      user.bioText
      ///getting an estimation for the height of the cell based on bioText
      ///i am subtracting 12 because that is the padding from the left side and 50 is the size of the profileImageView. minus 12 because there is a little gap between the profileImage and the red bioTextFields background. I changed the background from clear to red to do this estimation and will change it back to clear after. Minus 2 so it works across all device sizes
      let approximateWidthOfBioTextView = view.frame.width - 12 - 50 - 12 - 2
      ///height needs to be set to arbitrarily large value
      let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
      ///use the font and size from bioTextView 
      let attributes = [NSAttributedString.Key.font: UIFont(name: "AvenirNext-Regular", size: 16)]
      let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
      
      ///plus 52 because name label and user label are both 20. 20+20 = 40 and then plus 12 because that is what the top constant is 40+12=52. plus another 14 because the textField inherintly needs height 52+14=66
      return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
    }
    
    return CGSize(width: view.frame.width, height: 200)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 50)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    return CGSize(width: view.frame.width, height: 50)
  }
  
}
