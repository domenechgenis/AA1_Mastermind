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
                    
                }
                HStack
                {
                    ColorsView(viewModel: viewModel, color: .red)
                    Spacer()
                    ColorsView(viewModel: viewModel, color: .green)
                    Spacer()
                    ColorsView(viewModel: viewModel, color: .blue)
                    Spacer()
                    ColorsView(viewModel: viewModel, color: .purple)
                }
                
                .padding()
                
                HStack
                {
                    Spacer()
                    Button("Start Game")
                    {
                        viewModel.StartGamePressed()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    Spacer()
                    
                    Spacer()
                    Button("Start Game")
                    {
                        viewModel.StartGamePressed()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    Spacer()
                    
                    Spacer()
                    Button("Start Game")
                    {
                        viewModel.StartGamePressed()
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
