//
//  SecondViewController.swift
//  NavBar&TabBarCode
//
//  Created by 하연주 on 2023/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    private lazy var nextButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("두번째 탭 다음 화면으로", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
//        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        // Do any additional setup after loading the view.
    }
    
    func makeUI() {
        view.backgroundColor = .yellow
        view.addSubview(nextButton)
        
//        self.title = "Main - 네비게이션 제목"
        
        NSLayoutConstraint.activate([
            nextButton.widthAnchor.constraint(equalToConstant: 180),
            nextButton.heightAnchor.constraint(equalToConstant: 70),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func nextButtonTapped () {
        let secondViewNextPageController = SecondViewNextPageController()
        secondViewNextPageController.modalPresentationStyle = .fullScreen
        //⭐️⭐️⭐️⭐️⭐️ 네비게이션할려면 present가 아니라 Push??⭐️⭐️⭐️⭐️⭐️⭐️⭐️
//        present(secondViewNextPageController, animated: true, completion: nil)
        self.navigationController?.pushViewController(secondViewNextPageController, animated:
        true)
    }


}
