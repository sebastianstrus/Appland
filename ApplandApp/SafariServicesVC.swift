//
//  SafariServicesVC.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-03.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit
import SafariServices

class SafariServicesVC: SFSafariViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        self.navigationController?.isNavigationBarHidden = true;
        
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true;

        self.navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
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
