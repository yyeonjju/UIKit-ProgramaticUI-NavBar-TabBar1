//
//  FirstViewNextPageController.swift
//  NavBar&TabBarCode
//
//  Created by 하연주 on 2023/10/23.
//

import UIKit

class FirstViewNextPageController: UIViewController {
    private lazy var label : UILabel = {
       let label = UILabel()
        label.text = "첫번째 탭 다음 화면"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }

}
