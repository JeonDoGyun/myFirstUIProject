//
//  ViewController.swift
//  MyFirstProject
//
//  Created by 전도균 on 2022/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(type: .system) // 버튼 눌렀을 떄 색깔 바뀌는건 .system 때문

    override func viewDidLoad() { // view가 load될 때 자동적으로 호출됨.
        super.viewDidLoad()
        view.addSubview(button) // Subview를 추가하겠다는 의미
        button.setTitle("버튼", for: .normal) // label의 text / button의 text
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        // selector : objc로 전달해야돼서(@objc 필요)/touchUpInside : Tap 하는거
//        button.setTitleColor(.red, for: .normal)
        
//        let width: CGFloat = 200
//        let height: CGFloat = 100
//        button.frame = CGRect(x: view.frame.midX - width/2, // label의 좌표
//                            y: view.frame.midY - height/2,
//                            width: width,
//                            height: height)
        button.frame.size = CGSize(width: 100, height: 100)
        button.frame.origin = CGPoint(x: view.frame.midX,
                                      y: view.frame.midY)
    }
    
    @objc
    func didTapButton(_ sender: UIButton){ // sender : 버튼 여러개 일 때 구분하기 위해서
//        sender.setTitleColor(.red, for: .normal)
        print("Button Tapped")
    }


}

// VC 적을 때 규칙
// 변수는 viewDidLoad() 위에
// 함수는 viewDidLoad() 아래에
// autolayout....

// command r : 프로그램 실행
// command shift y : 출력창 띄우기
// command shift l : object 고르는 창 띄우기
