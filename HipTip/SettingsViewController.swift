//
//  SettingsViewController.swift
//  HipTip
//
//  Created by Andriana Aivazians on 9/10/18.
//  Copyright © 2018 Andriana Aivazians. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var dtipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Set Default
        let defaults = UserDefaults.standard
        defaults.set(dtipControl.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
        let dtipValue = defaults.integer(forKey: "defaultTip")
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
