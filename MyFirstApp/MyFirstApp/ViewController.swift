//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 김성혜 on 2023/05/15.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var MyButton: UIButton!
    
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        mainLable.text = "하이헬로"
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLable.text = "안녕하세요." // 변수.text
        
        MyButton.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        MyButton.setTitleColor(UIColor.gray, for: UIControl.State.normal)
        
//        mainLable.backgroundColor = UIColor.yellow
//        mainLable.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
//        mainLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    


}

