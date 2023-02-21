//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 김성혜 on 2022/11/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        mainButton.setTitle("눌러보세요", for: UIControl.State.normal)
    }
    
    
    @IBAction func buttonPressd(_ sender: UIButton) {
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        
        mainLabel.text = "안녕하세요"
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        mainButton.setTitle("😄", for: UIControl.State.normal)
        
        // mainLabel.backgroundColor = UIColor.yellow
        
//        mainLabel.textAlignment = NSTextAlignment.right
        
    }
    
}

