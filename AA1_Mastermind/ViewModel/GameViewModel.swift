//
//  GameViewModel.swift
//  AA1_Mastermind
//
//  Created by Ferran on 2/4/22.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    //Variables
    @Published var m_tittleText : String
    
    init() {
        self.m_tittleText = "Welcome to Mastermind!"
    }
}
