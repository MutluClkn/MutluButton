//
//  MutluButton.swift
//  MutluButton
//
//  Created by Mutlu Çalkan on 17.01.2023.
//

import UIKit

public class MutluButton: UIButton {
    
    public func configureButton(title: String = "Button", titleColor: UIColor = .white, tintColor: UIColor = .systemBlue, cornerRadius: CGFloat = 20.0){
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.tintColor = tintColor
        self.layer.masksToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
    
    
}
