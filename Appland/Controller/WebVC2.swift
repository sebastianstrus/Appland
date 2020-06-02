//
//  WebVC2.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-02.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit
import WebKit

class WebVC2: UIViewController {

    let webView = WKWebView()
    var myUrl:String!
    //@IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        let myURL = URL(string: myUrl)
        
        let myRequest = URLRequest(url: myURL!)
        setupWKWebViewConstraints()
        webView.load(myRequest)
    }

    // add constraints to your web view
    func setupWKWebViewConstraints() {

        let paddingConstant:CGFloat = 10.0

        webView.translatesAutoresizingMaskIntoConstraints = false

        webView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: paddingConstant).isActive = true
        webView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -paddingConstant).isActive = true
        webView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: paddingConstant).isActive = true
        webView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -paddingConstant).isActive = true
    }

}
