//
//  ViewModel.swift
//  AA1_Mastermind
//
//  Created by Genis Domenech Traver on 2/4/22.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject
{
    //Mutable Variables
    @Published var m_playerCombinations: [Combination] = []
    @Published var m_playerTries: [Combination] = []
    
    //Game variables
    var m_solution: Combination
    var m_CurrentIndexColor : Int = 0
    var m_CurrentLine : Int = 0
    var m_MaxTurns : Int = 12
    var m_Index : Int = 0
    
    init()
    {
        m_solution = Combination(colors: [Color.gray,Color.gray,Color.gray,Color.gray])
        
        for _ in 0...m_MaxTurns
        {
            m_playerCombinations.append(Combination(colors: [.gray,.gray,.gray,.gray]))
            
            m_playerTries.append(Combination(colors: [.gray,.gray,.gray,.gray]))
        }
        
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
        if(m_CurrentIndexColor >= 4)
        {
            //Set answers with player colors
            for i in 0...3
            {
                self.m_playerTries[m_CurrentLine].colors[i] = Color.red
            }

            m_CurrentLine = m_CurrentLine + 1
            m_CurrentIndexColor = 0
        }
    }
    
    func EraseCurrentCombination()
    {
        for i in 0...3
        {
            self.m_playerCombinations[m_CurrentLine].colors[i] = Color.gray
        }
        m_CurrentIndexColor = 0
    }
    
    func AddColor(_ color : Color)
    {
        if(m_CurrentIndexColor < 4)
        {
            print("Color added succefully!")
            self.m_playerCombinations[m_CurrentLine].colors[m_CurrentIndexColor] = color
            
            m_CurrentIndexColor = m_CurrentIndexColor + 1
        }
        else
        {
            print("No more spots available!")
        }
    }
}
