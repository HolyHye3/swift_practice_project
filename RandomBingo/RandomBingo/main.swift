//
//  main.swift
//  RandomBingo
//
//  Created by 김성혜 on 2023/05/17.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoice: Int = 0

while true{
    var userInput = readLine()

    if let input = userInput{
    //    let number = Int(input) // input이 String 일지 아닐지 확실치않으므로 변수 number가 옵셔널 값이다.
        if let number = Int(input){ // 한 번 더 if let 바인딩
            myChoice = number
        }
    }

    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice{
        print("Down")
    }else{
        print("Bingo")
        break
    }
}

