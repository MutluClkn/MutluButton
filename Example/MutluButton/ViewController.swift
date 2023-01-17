//
//  ViewController.swift
//  MutluButton
//
//  Created by MutluClkn on 01/16/2023.
//  Copyright (c) 2023 MutluClkn. All rights reserved.
//

import UIKit
import MutluButton

class ViewController: UIViewController {

    @IBOutlet weak var testButton: MutluButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testButton.configureButton(title: "Mutlu", titleColor: .black, tintColor: .red, cornerRadius: 30)
        
    }

}
