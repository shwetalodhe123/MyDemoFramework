//
//  Service.swift
//  MyDemoFramework
//
//  Created by Shweta Suryakant Lodhe on 03/12/20.
//  Copyright © 2020 theiOSDev. All rights reserved.
//

import Foundation
import UIKit
public class Service{
    
    private init(){}
    
    public static func DoSomething() -> String {
        return "Successfully import dynamic framework"
    }
    
    static var bundle:Bundle {
        let podBundle = Bundle(for: EntryVC.self)
        let bundleURL = podBundle.url(forResource: "MyDemoFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
       
    public static func performSegueToFrameworkVC(caller: UIViewController) {
           let podBundle = Bundle(for: EntryVC.self)
           let bundle = Bundle(for: type(of: EntryVC.self) as! AnyClass)
           let storyboard = UIStoryboard(name: "First", bundle: bundle)
           let vc = storyboard.instantiateInitialViewController()!
           caller.present(vc, animated: true, completion: nil)
    }
    open func presentFirstViewControllerOn(_ viewController:UIViewController) {
//        let storyBoard : UIStoryboard = UIStoryboard(name: "First", bundle:nil)
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "EntryVC") as! EntryVC
//        viewController.present(nextViewController, animated:true, completion:nil)
        
        let newViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
        viewController.present(newViewController, animated:true, completion:nil)
    }
   

        public static func getEntryVC() -> UIViewController {

                let storyboard = UIStoryboard.init(name: "First", bundle: Bundle(for: self))
                let entryVC = storyboard.instantiateViewController(withIdentifier: "EntryVC")
                return entryVC
        }

    
}
