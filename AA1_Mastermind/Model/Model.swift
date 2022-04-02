//
//  Model.swift
//  AA1_Mastermind
//
//  Created by Ferran on 2/4/22.
//

import Foundation
import SwiftUI

struct Player{
    var name : String
    var highScore : Int = 0;
    var score : Int = 0;
}

struct Combination {
    var m_position: Int
    var colors: [Color]
}
