//
//  PinnedWebVC.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-02.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit
import WebKit

class PinnedWebVC: UIViewController, WKNavigationDelegate, WKUIDelegate {

    
    let webView = WKWebView()
    var myUrl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.navigationDelegate = self
        
        
        view.addSubview(webView)
        webView.pinToEdges(view: view)

        let myURL = URL(string: myUrl)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        
        view.backgroundColor = UIColor.green
        // Do any additional setup after loading the view.
    }
    

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("one")
    }
        
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("two")
    }
    
        
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("three")
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("four")
    }
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("five")
    }

}
