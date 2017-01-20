//
//  ImageCollectionViewCell.swift
//  CollectionViewSample
//
//  Created by otukutun on 1/20/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setImage(_ image: String) {
        print("hoge")
        self.imageView.image = UIImage(named: image)
        self.titleLabel.text = image
        self.titleLabel.textColor = UIColor.red
    }
}
