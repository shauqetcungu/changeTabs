//
//  SecondViewController.swift
//  ChangeVC
//
//  Created by Saša Vujanovic on 22/04/2019.
//  Copyright © 2019 Shauqet Cungu. All rights reserved.
//

import UIKit

struct CollectionCellData {
    var message: String?
}

class SecondViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    var collectionData = [CollectionCellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionData = [CollectionCellData.init(message: "⛑"),CollectionCellData.init(message: "👚"),CollectionCellData.init(message: "🦊"),CollectionCellData.init(message: "👿"),CollectionCellData.init(message: "🦑"),CollectionCellData.init(message: "🐘"),CollectionCellData.init(message: "📱"),CollectionCellData.init(message: "🏦"),CollectionCellData.init(message: "🦊"),CollectionCellData.init(message: "👿"),CollectionCellData.init(message: "🦑"),CollectionCellData.init(message: "🐘"),CollectionCellData.init(message: "📱"),CollectionCellData.init(message: "🏦")]
        self.collectionView.register(CustomCollectionCell.self, forCellWithReuseIdentifier: "customCollection")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.collectionData.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCollection", for: indexPath) as! CustomCollectionCell
        cell.message = collectionData[indexPath.row].message
        return cell
    }
    
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numOfColumns : CGFloat = 3
        if UIScreen.main.bounds.width > 320{
            numOfColumns = 4
        }

        let spaceBetweenCells : CGFloat = 10
        let padding : CGFloat = 40
        let cellDimension = ((collectionView.bounds.width - padding) - (numOfColumns - 1) * spaceBetweenCells) / numOfColumns
        return CGSize(width: cellDimension, height: cellDimension);
    }
    
}
