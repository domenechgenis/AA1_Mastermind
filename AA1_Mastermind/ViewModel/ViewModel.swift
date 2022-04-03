//
//  ViewModel.swift
//  AA1_Mastermind
//
//  Created by Genis Domenech Traver on 2/4/22.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    //Game Variables
    var m_solution: Combination
    @Published var m_playerCombinations: [Combination]
    var m_CurrentTurn = 1
    var m_MaxTurns = 8
    
    init()
    {
        self.m_playerCombinations = [Combination(m_position: 1, colors: [Color.red,Color.green,Color.blue])]
        
        m_solution = Combination(m_position: 0, colors:
                                    [Color.red,Color.green,Color.blue,Color.purple])
        
        GetRandomSolution()
    }
    
    func AddColor(_ selected_color : Color)
    {
        if(m_CurrentTurn < m_MaxTurns)
        {
            print("Adding color to the game...")
            m_playerCombinations[0].colors[0] = Color.gray
        }
        
    }
    
    func GetRandomSolution()
    {
        for i in 0...3
        {
            var randomNum = 0
            randomNum = Int.random(in: 0...3)
            switch randomNum {
            case 0:
                m_solution.colors[i] = .red
                break
            case 1:
                m_solution.colors[i] = .green
                break
            case 2:
                m_solution.colors[i] = .blue
                break
            case 3:
                m_solution.colors[i] = .purple
                break
            default:
                print("Number not complemented, error")
                break
            }
        }
        print("The solution is:")
        print(m_solution.colors[0])
        print(m_solution.colors[1])
        print(m_solution.colors[2])
        print(m_solution.colors[3])
    }
    
    func TryCurrentCombination()
    {
        m_CurrentTurn = m_CurrentTurn + 1
    }
    
    func EraseCurrentCombination()
    {
        
    }
}
