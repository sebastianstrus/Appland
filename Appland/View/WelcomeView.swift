//
//  WelcomeView.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-02.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//

import UIKit

class WelcomeView: UIView {

    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - All subviews
    var imageView: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "appland_logo"))
        iv.backgroundColor = .white
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let textField: UITextField = {
        let textField = TextField()
        textField.placeholder = "Type url"
        textField.textColor = UIColor.lightGray
        textField.layer.cornerRadius = 5.0
        textField.layer.borderColor = UIColor.systemBlue.cgColor
        textField.layer.borderWidth = 1
        textField.tintColor = UIColor.systemBlue
        textField.textColor = UIColor.darkGray
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        return textField
    }()
    
    
    
    let webViewBtn: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Open WebView", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(20)
        button.addTarget(self, action: #selector(handleWebView), for: .touchUpInside)
        return button
    }()
    
    let webViewBtn2: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Open WebView 2", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(20)
        button.addTarget(self, action: #selector(handleWebView2), for: .touchUpInside)
        return button
    }()
    
    let webViewBtn3: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Open in Safari", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(20)
        button.addTarget(self, action: #selector(handleWebView3), for: .touchUpInside)
        return button
    }()
    
    let webViewBtn4: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Open PinnedWebVC", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(20)
        button.addTarget(self, action: #selector(handleWebView4), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Public actions
    var webViewAction: (() -> Void)?
    var webViewAction2: (() -> Void)?
    var webViewAction3: (() -> Void)?
    var webViewAction4: (() -> Void)?
    
    func setup() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.setAnchor(top: topAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 280, height: 70)

        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(textField)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setAnchor(top: imageView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, paddingTop: 40, paddingLeft: 30, paddingBottom: 0, paddingRight: 30, width: 200, height: 40)



        addSubview(webViewBtn)
        webViewBtn.translatesAutoresizingMaskIntoConstraints = false
        webViewBtn.setAnchor(top: textField.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 40)
        webViewBtn.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        webViewBtn.tintColor = UIColor.systemBlue
        
        
        addSubview(webViewBtn2)
        webViewBtn2.translatesAutoresizingMaskIntoConstraints = false
        webViewBtn2.setAnchor(top: webViewBtn.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 40)
        webViewBtn2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        webViewBtn2.tintColor = UIColor.systemBlue
        
        
        addSubview(webViewBtn3)
        webViewBtn3.translatesAutoresizingMaskIntoConstraints = false
        webViewBtn3.setAnchor(top: webViewBtn2.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 40)
        webViewBtn3.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        webViewBtn3.tintColor = UIColor.systemBlue
        
        addSubview(webViewBtn4)
        webViewBtn4.translatesAutoresizingMaskIntoConstraints = false
        webViewBtn4.setAnchor(top: webViewBtn3.bottomAnchor, leading: nil, bottom: nil, trailing: nil, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 40)
        webViewBtn4.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        webViewBtn4.tintColor = UIColor.systemBlue
        
    }

    @objc func handleWebView() {
        webViewAction?()
    }
    @objc func handleWebView2() {
        webViewAction2?()
    }
    @objc func handleWebView3() {
        webViewAction3?()
    }
    @objc func handleWebView4() {
        webViewAction4?()
    }
}


class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
