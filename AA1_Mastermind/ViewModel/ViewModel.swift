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
    @Published var m_playerCombinations: Combination
    
    
    @Published var m_CurrentColor : Int
    
    
    @Published var m_CurrentTurn : Int
    @Published var m_MaxTurns : Int
    
    init()
    {
        self.m_playerCombinations = Combination(m_position: 1, colors:
                                                [Color.red,Color.green,Color.blue,Color.purple])
        
        m_solution = Combination(m_position: 0, colors:
                                    [Color.red,Color.green,Color.blue,Color.purple])
        m_CurrentTurn = 1
        m_MaxTurns = 8
        m_CurrentColor = 0;
        
        GetRandomSolution()
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
    }
    
    func TryCurrentCombination()
    {
        print("User want to try the following combination...")
        m_CurrentTurn = m_CurrentTurn + 1
        print(self.m_playerCombinations.colors[0])
        print(self.m_playerCombinations.colors[1])
        print(self.m_playerCombinations.colors[2])
        print(self.m_playerCombinations.colors[3])
        
        CheckCombination()
    }
    
    func EraseCurrentCombination()
    {
        print("User want to erase the following combination...")
    }
    
    func AddColor(_ color : Color)
    {
        print("User want to add the following color...")
        self.m_playerCombinations.colors[m_CurrentColor] = color
        m_CurrentColor = m_CurrentColor + 1
        
    }
    
    func CheckCombination()
    {
    }
}
