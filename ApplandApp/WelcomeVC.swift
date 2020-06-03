//
//  ViewController.swift
//  ApplandApp
//
//  Created by Sebastian Strus on 2020-06-03.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit
import SafariServices

class WelcomeVC: UIViewController, SFSafariViewControllerDelegate {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var webViewBtn: UIButton!
    @IBOutlet weak var safariBtn: UIButton!
    @IBOutlet weak var pinnedVCBtn: UIButton!
    @IBOutlet weak var safariServicesBtn: UIButton!
    @IBOutlet weak var pushSafariServicesBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        setupViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        
    }

    
    
    @IBAction func webViewAction(_ sender: Any) {
        guard let urlString = textField.text, urlString != "" else {return}
        
        let webVC = WebVC()
        webVC.myUrl = urlString
        webVC.modalPresentationStyle = .fullScreen
        self.present(webVC, animated: false, completion: nil)
    }
    
    @IBAction func safariAction(_ sender: Any) {
        guard let urlString = textField.text, urlString != "" else { return }
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func pinnedVCAction(_ sender: Any) {
        guard let urlString = textField.text, urlString != "" else {return}
        
        let webVC = PinnedWebVC()
        webVC.myUrl = urlString
        
        
        webVC.modalPresentationStyle = .fullScreen
        self.present(webVC, animated: false, completion: nil)
    }
    
    @IBAction func safariServicesAction(_ sender: Any) {
        guard let urlString = textField.text, urlString != "" else {return}
        //        if let url = URL(string: text) {
        //            UIApplication.shared.open(url)
        //            //UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
        //            //exit(-1)
        //            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
        //                UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
        //                 DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        //                  exit(0)
        //                 }
        //            }
        //        }
                

                if let url = URL(string: urlString) {
                    let vc = SafariServicesVC(url: url)
                    
                    vc.delegate = self
                    
                    present(vc, animated: true)
        }
        
    }
    
    
    
    @IBAction func pushSafariServicesAction(_ sender: Any) {
        guard let urlString = textField.text, urlString != "" else {return}

        //test
        if let url = URL(string: urlString) {
            let vc = SafariServicesVC(url: url)
            
            vc.delegate = self
            
            navigationController?.pushViewController(vc, animated: true)
            //push(vc, animated: true)
        }
    
    }
    
    
    func setupViews() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.setAnchor(top: view.topAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 80, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 70)
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setAnchor(top: imageView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, paddingTop: 40, paddingLeft: 30, paddingBottom: 0, paddingRight: 30, width: 200, height: 40)
        
        
        webViewBtn.translatesAutoresizingMaskIntoConstraints = false
        webViewBtn.titleLabel?.font = webViewBtn.titleLabel?.font.withSize(20)
        webViewBtn.setAnchor(top: textField.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 40)
        webViewBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        safariBtn.translatesAutoresizingMaskIntoConstraints = false
        safariBtn.titleLabel?.font = safariBtn.titleLabel?.font.withSize(20)
        safariBtn.setAnchor(top: webViewBtn.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 40)
        safariBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        pinnedVCBtn.translatesAutoresizingMaskIntoConstraints = false
        pinnedVCBtn.titleLabel?.font = pinnedVCBtn.titleLabel?.font.withSize(20)
        pinnedVCBtn.setAnchor(top: safariBtn.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 40)
        pinnedVCBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        safariServicesBtn.translatesAutoresizingMaskIntoConstraints = false
        safariServicesBtn.titleLabel?.font = safariServicesBtn.titleLabel?.font.withSize(20)
        safariServicesBtn.setAnchor(top: pinnedVCBtn.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 40)
        safariServicesBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        pushSafariServicesBtn.translatesAutoresizingMaskIntoConstraints = false
        pushSafariServicesBtn.titleLabel?.font = pushSafariServicesBtn.titleLabel?.font.withSize(20)
        pushSafariServicesBtn.setAnchor(top: safariServicesBtn.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 40)
        pushSafariServicesBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    }
}
