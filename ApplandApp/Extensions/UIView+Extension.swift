//
//  UIView+Extension.swift
//  Appland
//
//  Created by Sebastian Strus on 2020-06-02.
//  Copyright © 2020 Sebastian Strus. All rights reserved.
//


import UIKit

extension UIView {
    
    func setAnchor(width: CGFloat, height: CGFloat) {
        
        self.setAnchor(top: nil,
                       leading: nil,
                       bottom: nil,
                       trailing: nil,
                       paddingTop: 0,
                       paddingLeft: 0,
                       paddingBottom: 0,
                       paddingRight: 0,
                       width: width,
                       height: height)
    }
    
    func setAnchor(top: NSLayoutYAxisAnchor?,
                   leading: NSLayoutXAxisAnchor?,
                   bottom: NSLayoutYAxisAnchor?,
                   trailing: NSLayoutXAxisAnchor?,
                   paddingTop: CGFloat,
                   paddingLeft: CGFloat,
                   paddingBottom: CGFloat,
                   paddingRight: CGFloat,
                   width: CGFloat = 0,
                   height: CGFloat = 0) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
    
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    
    var safeLeadingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.leadingAnchor
        }
        return leadingAnchor
    }
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
    
    var safeTrailingAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.trailingAnchor
        }
        return trailingAnchor
    }
    
    func setCellShadow() {
        self.backgroundColor = UIColor.white
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 4.0
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        self.layer.cornerRadius = 4
    }
    
    func pinToEdges(view: UIView) {
        setAnchor(top: view.topAnchor,
                  leading: view.leadingAnchor,
                  bottom: view.bottomAnchor,
                  trailing: view.trailingAnchor,
                  paddingTop: 0,
                  paddingLeft: 0,
                  paddingBottom: 0,
                  paddingRight: 0)
    }
    
    func pinToSafeEdges(view: UIView) {
        setAnchor(top: view.safeTopAnchor,
                  leading: view.safeLeadingAnchor,
                  bottom: view.safeBottomAnchor,
                  trailing: view.safeTrailingAnchor,
                  paddingTop: 0,
                  paddingLeft: 0,
                  paddingBottom: 0,
                  paddingRight: 0)
    }
    
    func addSubviews(_ views:[UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}

