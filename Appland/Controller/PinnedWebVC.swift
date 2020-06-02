//
//  PinnedWebVC.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-02.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit
import WebKit

class PinnedWebVC: UIViewController {

    
    let webView = WKWebView()
    var myUrl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(webView)
        webView.pinToEdges(view: view)

        let myURL = URL(string: myUrl)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        
        view.backgroundColor = UIColor.green
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
