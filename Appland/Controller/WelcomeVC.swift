//
//  ViewController.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-02.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    
    fileprivate var welcomeView: WelcomeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    setupView()
            
        }
        
        private func setupView() {
            hideKeyboardWhenTappedAround()
            view.backgroundColor = .white
            welcomeView = WelcomeView()
            view.addSubview(welcomeView)
            welcomeView.pinToEdges(view: view)
            welcomeView.webViewAction = handleWebView
            welcomeView.webViewAction2 = handleWebView2
            welcomeView.webViewAction3 = handleSafari
            welcomeView.webViewAction4 = handlePinedView
        }
    
    private func handleWebView() {
        guard let text = welcomeView.textField.text, text != "" else {return}
        print("Open WebView here: \(text)")
        
        let webVC = WebVC()
        webVC.myUrl = text
        webVC.modalPresentationStyle = .fullScreen
        self.present(webVC, animated: false, completion: nil)

    }
    private func handleWebView2() {
        guard let text = welcomeView.textField.text, text != "" else {return}
        print("Open WebView here: \(text)")
        
        let webVC = WebVC2()
        webVC.myUrl = text
        webVC.modalPresentationStyle = .fullScreen
        self.present(webVC, animated: false, completion: nil)
    }
    
    private func handleSafari() {
        guard let text = welcomeView.textField.text, text != "" else {return}
        if let url = URL(string: text) {
            UIApplication.shared.open(url)
        }
    }
    
    private func handlePinedView() {

        
        guard let text = welcomeView.textField.text, text != "" else {return}
        print("Open WebView here: \(text)")
        
        let webVC = PinnedWebVC()
        webVC.myUrl = text
        
        
        webVC.modalPresentationStyle = .fullScreen
        self.present(webVC, animated: false, completion: nil)
    }


}

