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
                    PreviewView(viewModel: viewModel, m_try: "9 - ")
                    PreviewView(viewModel: viewModel, m_try: "8 - ")
                    PreviewView(viewModel: viewModel, m_try: "7 - ")
                    PreviewView(viewModel: viewModel, m_try: "6 - ")
                    PreviewView(viewModel: viewModel, m_try: "5 - ")
                    PreviewView(viewModel: viewModel, m_try: "4 - ")
                    PreviewView(viewModel: viewModel, m_try: "3 - ")
                    PreviewView(viewModel: viewModel, m_try: "2 - ")
                    PreviewView(viewModel: viewModel, m_try: "1 - ")
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
