//
//  ContentView.swift
//  AA1_Mastermind
//
//  Created by Genis Domenech Traver 
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel : ViewModel
    var body: some View {
        VStack
        {
            //Padding on top
            Spacer()
            Spacer()
            
            //Tittle??
            VStack
            {
                List
                {
                    ForEach(viewModel.m_playerCombinations)
                    { item in
                        //TODO -> Change 0 to Index
                        PreviewView(combination: item,current_index: "0 -")
                    }
                }
            
                HStack
                {
                    ColorsView(viewModel: viewModel, color: .red)
                    ColorsView(viewModel: viewModel, color: .green)
                    ColorsView(viewModel: viewModel, color: .blue)
                    ColorsView(viewModel: viewModel, color: .purple)
                }
                .padding()
                HStack
                {
                    Spacer()
                    Button("Try Combination")
                    {
                        viewModel.TryCurrentCombination()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    Spacer()
                    
                    Spacer()
                    Button("Erase Combination")
                    {
                        viewModel.EraseCurrentCombination()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    Spacer()
                }
            }
        }
        //Padding on bottom
        Spacer()
        Spacer()
    }
}
