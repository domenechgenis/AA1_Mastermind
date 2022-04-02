//
//  ColorsView.swift
//  AA1_Mastermind
//
//  Created by Ferran on 2/4/22.
//

import Foundation
import SwiftUI

struct ColorsView: View {
    @ObservedObject var viewModel: ViewModel
    var color: Color
    var body: some View{
        Button("X")
        {
            viewModel.AddColor(color)
        }
        .frame(width: 45, height: 45, alignment: .center)
        .foregroundColor(color)
        .background(color)
    }
}


