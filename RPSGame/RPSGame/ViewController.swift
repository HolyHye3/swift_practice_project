//
//  ViewController.swift
//  RPSGame
//
//  Created by 김성혜 on 2023/05/16.
//

import UIKit

class ViewController: UIViewController {
    
    // 변수, 속성
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var selectButton: UIButton!
    
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice: Rps = Rps.rock
    
    
    
    // 앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 첫번째 이미지뷰에 준비(묵) 이미지를 띄우기
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2) 첫번째/두번째 레이블에 "준비" 라고 문자열을 띄우기
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }
    
    

    // 함수, 메서드
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 가위/바위/보를 선택해서 그 정보를 저장하기
        
        /*
        guard let title = sender.titleLabel else{ // 클릭한 버튼의 타이틀. optional type
            return
        }
         */
        
        // 버튼이 있는 것이 확실하므로 강제로 언래핑 가능
        // 버튼의 문자를 가져옴
        let title = sender.currentTitle!
        print(title)
        
        switch title{
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
        
        print("myChoice: \(myChoice)")
        
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        print("comChoice: \(comChoice)")
        
        // 1) 컴퓨터가 랜덤으로 선택한 것을 이미지뷰에 표시
        // 2) 컴퓨터가 핸덤으로 선택한 것을 레이블에 표시
        switch comChoice{
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        

        
        // 3) 내가 선택한 것을 이미지뷰에 표시
        // 4) 내가 선택한 것을 레이블에 표시
        switch myChoice{
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        
        // 5) 컴퓨터가 선택한 것과 내가 선택한 것을 비교하여 결과를 판단 -> 표시
        
        if myChoice == comChoice{
            mainLabel.text = "비겼습니다."
        }else if myChoice == Rps.scissors && comChoice == Rps.paper{
            mainLabel.text = "이겼습니다."
        }else if myChoice == Rps.rock && comChoice == Rps.scissors{
            mainLabel.text = "이겼습니다."
        }else if myChoice == Rps.paper && comChoice == Rps.rock{
            mainLabel.text = "이겼습니다."
        }else{
            mainLabel.text = "졌습니다."
        }
        
        // reset버튼 활성화ㅎ
        resetButton.layer.shadowColor = #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)
        resetButton.layer.shadowOpacity = 1
        resetButton.layer.shadowRadius = 10
        selectButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터 준비 이미지를 이미지뷰에 표시
        // 2) 컴퓨터 준비 레이블을 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        
        // 3) 나의 준비이미지를 이미지뷰에 표시
        // 4) 나의 준비 레이블를 표시
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "준비"
        
        
        // 5) 메인 레이블에 "선택하세요" 표시
        mainLabel.text = "선택하세요"

        // 6) 컴퓨터가 다시 랜덤 가위/바위/보를 선택하고 저장
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
        
        resetButton.layer.shadowOpacity = 0
        selectButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
}



