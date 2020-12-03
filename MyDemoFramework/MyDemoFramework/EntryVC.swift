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

        // Do any additional setup after loading the view.
    }
    
    static var bundle:Bundle {
        let podBundle = Bundle(for: EntryVC.self)

        let bundleURL = podBundle.url(forResource: "MyDemoFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
    
    public static func performSegueToFrameworkVC(caller: UIViewController) {
        let podBundle = Bundle(for: EntryVC.self)

        let bundleURL = podBundle.url(forResource: "MyDemoFramework", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let storyboard = UIStoryboard(name: "First", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        caller.present(vc, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
