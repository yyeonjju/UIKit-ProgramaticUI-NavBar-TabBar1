//
//  LoginViewController.swift
//  NavBar&TabBarCode
//
//  Created by 하연주 on 2023/10/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    //로그인 버튼
    private lazy var nextButton : UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .brown
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    // UI설정하는 코드, 버튼의 오토레이아웃
    func makeUI() {
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.widthAnchor.constraint(equalToConstant: 120),
            nextButton.heightAnchor.constraint(equalToConstant: 45),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    // 버튼 누르면 동작하는 코드 ===> 코드로 탭바 + 네비게이션바 설정
    @objc func nextButtonTapped() {
        //🍑 탭바 컨트롤러
        let tabBarVC = UITabBarController()
        
        //🍑 탭바로 인해 넘어가는 화면들 설정
        //🌸 첫번째탭 두번째탭의 화면은 네비게이션 컨트롤러로 만들기 => UINavigationController 해주지 않으면 네비게이션 동작하지 않는다
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController: SecondViewController())
//        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        let vc4 = FourthViewController()
//        let vc5 = FifthViewController()
        
        //🍑 탭바 이름들 설정
        vc1.title = "Main"
        vc2.title = "Search"
        vc3.title = "Post"
        vc4.title = "Likes"
//        vc5.title = "Me"
        

        
        //🍑 탭바로 사용하기 위한 뷰 컨트롤러들 설정
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.tabBar.backgroundColor = .white
        
        //🍑 탭바 이미지 설정 (이미지는 애플이 제공하는 것으로 사용)
        guard let items = tabBarVC.tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "square.and.arrow.up")
        items[1].image = UIImage(systemName: "folder")
        items[2].image = UIImage(systemName: "paperplane")
        items[3].image = UIImage(systemName: "doc")
//        items[4].image = UIImage(systemName: "note")
        
        
        //⭐️⭐️⭐️⭐️ 로그인 버튼을 누르고 나서 위에 화면들을 설정하고 화면을 띄우는 것이므로
        //⭐️⭐️⭐️⭐️ 프리젠트present로 탭바를 띄우기
        present(tabBarVC, animated: true, completion: nil)
    }

}
