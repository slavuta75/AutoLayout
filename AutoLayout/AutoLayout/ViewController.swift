//
//  ViewController.swift
//  AutoLayout
//
//  Created by Slava Utyuzh on 27.06.2018.
//  Copyright © 2018 Slava Utyuzh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let view1: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        view.backgroundColor = .red
        return view
    }()
    
    let view2: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       view.addSubview(view1)
        view.addSubview(view2)
        creatViewRedConstraint()
        creatViewGreenConstraint()
//        creatView1Constrant()
//         creatView2Constrant()
//        let viewVFL = ["viewRed": view1, "viewGreen": view2]
//        let metrics = ["height": 100, "width": view.bounds.size.width / 3, "top": view.bounds.size.height / 3]
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewRed(height)]|",
//                                                           options: [],
//                                                           metrics: metrics,
//                                                           views: viewVFL))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewGreen(height)]|",
//                                                           options: [],
//                                                           metrics: metrics,
//                                                           views: viewVFL))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[viewRed(width)]-(50)-[viewGreen(width)]-|",
//                                                           options: [],
//                                                           metrics: metrics,
//                                                           views: viewVFL))
//
//
    }

    func creatViewRedConstraint() {
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func creatViewGreenConstraint() {
        view2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
//    func creatView1Constrant() {
//        NSLayoutConstraint(item: view1,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerX,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .centerY,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerY,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 140).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 140).isActive = true
//    }
//    func creatView2Constrant() {
//        NSLayoutConstraint(item: view2,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerX,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view2,
//                           attribute: .bottom,
//                           relatedBy: .equal,
//                           toItem: view1,
//                           attribute: .top,
//                           multiplier: 1,
//                           constant: -30).isActive = true
//        NSLayoutConstraint(item: view2,
//                           attribute: .width,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 100).isActive = true
//        NSLayoutConstraint(item: view2,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: nil,
//                           attribute: .notAnAttribute,
//                           multiplier: 1,
//                           constant: 100).isActive = true
//    }


}

