//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김성혜 on 2023/05/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var computerChoice:Int = Int.random(in: 1...10)
//    var myChoice:Int = 1
    
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 메인레이블에 "선택하세요" 띄우기
        mainLabel.text = "선택하세요"
        // 2. 숫자 레이블은 공백 상태
        numberLabel.text = ""
        // 3. 컴퓨터가 랜덤 숫자를 선택
        print("computerChoice: \(computerChoice)")
    }
    
    

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1. 버튼의 숫자 가져오기
//        var choiceNumber:String  = ""
//        if let a = sender.currentTitle{
//            choiceNumber = a
//        }

        guard let choiceNumber = sender.currentTitle else { return }
        print("choiceNumber: \(choiceNumber)")
        
        // 2. 숫자 레이블이 숫자에 따라 변하도록
        numberLabel.text = choiceNumber
        
        // 3. 선택한 숫자를 변수에다가 저장(선택사항)
        /*
             if let a = Int(choiceNumber){
                 myChoice = a
             }
             print("myChoice: \(myChoice)")
         */
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 추가적으로 변수를 만들지 않고 바로 가져와서 사용하는 방법
        guard let choiceNumber = numberLabel.text else { return }
        guard let myChoice = Int(choiceNumber) else { return }
        
        
        // 1. 컴퓨터의 숫자와 내가 선택한 숫자를 비교하여 결과값을 레이블에 띄우기
            // 일치하다면 빙고
            // 컴퓨터의 값보다 크다면 up
            // 컴퓨터의 값보다 작다면 down
        if computerChoice > myChoice {
            mainLabel.text = "Up"
        } else if computerChoice < myChoice {
            mainLabel.text = "Down"
        }else{
            mainLabel.text = "🎉Bingo!!!🎉"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 메인레이블에 "선택하세요" 띄우기
        mainLabel.text = "선택하세요"
        // 2. 숫자 레이블은 공백 상태
        numberLabel.text = ""
        // 3. 컴퓨터가 랜덤 숫자를 선택
        computerChoice = Int.random(in: 1...10)
        print("computerChoice: \(computerChoice)")
        
    }
    


}
