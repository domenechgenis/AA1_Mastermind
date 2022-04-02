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
        VStack{
            //Tittle
            Text(viewModel.m_tittleText)
                .font(.title)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        HStack{
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
