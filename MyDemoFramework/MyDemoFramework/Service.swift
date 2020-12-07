//
//  Service.swift
//  MyDemoFramework
//
//  Created by Shweta Suryakant Lodhe on 03/12/20.
//  Copyright © 2020 theiOSDev. All rights reserved.
//


import UIKit

public class Service{
    
   
    
    public static func DoSomething() -> String {
        return "Successfully import dynamic framework"
    }
    
    static var bundle:Bundle {
        let podBundle = Bundle(for: EntryVC.self)
        let bundleURL = podBundle.url(forResource: "MyDemoFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
    public static func performSegueToFrameworkVC(caller: UIViewController) {
        let storyboard = UIStoryboard(name: "First", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        caller.present(vc, animated: false, completion: nil)
    }

    
}
