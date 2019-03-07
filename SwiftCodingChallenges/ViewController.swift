//
//  ViewController.swift
//  SwiftCodingChallenges
//
//  Created by MAC on 7.03.2019.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(challenge1a(input: "challenge1a"))
        print(challenge1a(input: "abcdefghijklmnopqrstuvwxyz"))
        print(challenge1a(input: "AaBbCc"))
        print(challenge1a(input: "Hello word"))
        
        print(challenge1b(input: "challenge1a"))
        print(challenge1b(input: "abcdefghijklmnopqrstuvwxyz"))
        print(challenge1b(input: "AaBbCc"))
        print(challenge1b(input: "Hello word"))
    }

    func challenge1a(input: String) -> Bool {
        var usedLetters = [Character]()
        for letter in input {
            if usedLetters.contains(letter) {
                return false
            }
            usedLetters.append(letter)
        }
        return true
    }
    
    func challenge1b(input: String) -> Bool {
        return Set(input).count == input.count
    }

}

