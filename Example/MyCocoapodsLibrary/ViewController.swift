//
//  ViewController.swift
//  MyCocoapodsLibrary
//
//  Created by 568329 on 06/27/2022.
//  Copyright (c) 2022 568329. All rights reserved.
//

import UIKit
import MyCocoapodsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let log=Logger()
        log.printLog()
        
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourcesBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "trash.png", in: resourcesBundle, compatibleWith: nil)
        self.view.addSubview(UIImageView(image: image))
        print(image)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

