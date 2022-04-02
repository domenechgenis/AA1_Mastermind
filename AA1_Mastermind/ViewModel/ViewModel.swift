//
//  ViewModel.swift
//  AA1_Mastermind
//
//  Created by Ferran on 2/4/22.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    //Game Variables
    var m_solution: Combination
    @Published var m_playerCombinations: [Combination]
    
    
    init() {
        self.m_playerCombinations = [Combination(m_position: 1, colors: [Color.red,Color.green,Color.blue])]
        
        m_solution = Combination(m_position: 0, colors: [Color.red,Color.green,Color.blue])
    }
    
    func StartGamePressed()
    {
    }
    
    func AddColor(_ color : Color)
    {
    }
}
