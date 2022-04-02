//
//  GameView.swift
//  AA1_Mastermind
//
//  Created by Ferran on 2/4/22.
//

import Foundation
import SwiftUI

struct GameView: View {
    @ObservedObject var viewModel : ViewModel
    var body: some View {
        VStack{
            //Tittle
            Text(viewModel.m_tittleText)
                .font(.title)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}
