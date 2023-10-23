//
//  FirstViewController.swift
//  NavBar&TabBarCode
//
//  Created by 하연주 on 2023/10/23.
//

import UIKit

class FirstViewController: UIViewController {
    private lazy var nextButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("첫번째 탭 다음 화면으로", for: .normal)
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
        //⭐️⭐️⭐️⭐️⭐️ UIViewController에 다 포함되어 있음 ⭐️⭐️⭐️⭐️⭐️
        self.navigationItem.title = "Main - 네비게이션 제목"
        
        // 네비게이션 바 색상 설정
//        UINavigationBar.appearance().isTranslucent = false
//        UINavigationBar.appearance().barTintColor = .red
//        if let navigationBar = self.navigationController?.navigationBar {
//            print("왜 색깔 안바껴~~~")
//            navigationBar.barTintColor = UIColor.red // 원하는 색상으로 변경
//        }
        
//        self.navigationController?.navigationBar.scrollEdgeAppearance?.backgroundColor = .darkGray
//        self.navigationController?.navigationBar.scrollEdgeAppearance?.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        NSLayoutConstraint.activate([
            nextButton.widthAnchor.constraint(equalToConstant: 180),
            nextButton.heightAnchor.constraint(equalToConstant: 70),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func nextButtonTapped () {
        let firstViewNextPageController = FirstViewNextPageController()
        firstViewNextPageController.modalPresentationStyle = .fullScreen
        //⭐️⭐️⭐️⭐️⭐️ 네비게이션할려면 present가 아니라 Push??⭐️⭐️⭐️⭐️⭐️⭐️⭐️
//        present(firstViewNextPageController, animated: true, completion: nil)
        self.navigationController?.pushViewController(firstViewNextPageController, animated:
        true)
    }


}
