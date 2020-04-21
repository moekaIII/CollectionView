//
//  TopMainView.swift
//  CollectionView
//
//  Created by 伊原萌夏 on 2020/04/15.
//  Copyright © 2020 Playground, Inc. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewDelegate: NSObjectProtocol{
}

extension TopMainViewDelegate {
}

// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        
        collectionViewFlowLayout.estimatedItemSize = CGSize(width: 20, height: 20)
        
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
    }
}

// MARK: - Protocol
extension TopMainView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath) as? TopMainCollectionViewCell else {return UICollectionViewCell()}
        cell.cellWidth.constant = collectionView.frame.width / 2
        return cell
    }
}

// MARK: - method
extension TopMainView {
    func setDelegate() {
        collectionView.dataSource = self
    }
}
