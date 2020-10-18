//
//  ViewController.swift
//  dom4
//
//  Created by Андрей on 18/10/2020.
//  Copyright © 2020 Андрей. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var showImage: UIImageView!
    
    @IBOutlet private weak var showLabel: UILabel!
    
    @IBOutlet private weak var showText: UITextView!
    
    var text: String!
    var label: String!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

   private  func configure() {
        showLabel.text = label
        showText.text = text
        showImage.image = image
    }
}

