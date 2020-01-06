//
//  RoundedButton.swift
//  GoGo
//
//  Created by Omar on 06/01/2020.
//  Copyright © 2020 Omar. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
    }
}

class RoundedShadowView : UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
        layer.shadowColor = AppColor.DarkBlue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}

class RoundedImageView: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
    }
}

