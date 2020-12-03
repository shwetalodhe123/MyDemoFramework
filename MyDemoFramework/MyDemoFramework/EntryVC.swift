//
//  EntryVC.swift
//  MyDemoFramework
//
//  Created by Shweta Suryakant Lodhe on 03/12/20.
//  Copyright © 2020 theiOSDev. All rights reserved.
//

import UIKit

public class EntryVC: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = Bundle(for: EntryVC.self)

        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        // Do any additional setup after loading the view.
    }
    
   

    

}
