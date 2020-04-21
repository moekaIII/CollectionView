//
//  TopMainCollectionViewCell.swift
//  CollectionView
//
//  Created by 伊原萌夏 on 2020/04/15.
//  Copyright © 2020 Playground, Inc. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainCollectionViewCellDelegate: NSObjectProtocol{
}

extension TopMainCollectionViewCellDelegate {
}

// MARK: - Property
class TopMainCollectionViewCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewCellDelegate? = nil
    @IBOutlet weak var cellWidth: NSLayoutConstraint!
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var imageView: UIImageView!
}

// MARK: - Life cycle
extension TopMainCollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}

// MARK: - Protocol
extension TopMainCollectionViewCell {
}

// MARK: - method
extension TopMainCollectionViewCell {
    func setLayout() {
        baseView.layer.cornerRadius = 10
        imageView.layer.cornerRadius = 10
    }
}
