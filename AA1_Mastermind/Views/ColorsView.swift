//
//  ColorsView.swift
//  AA1_Mastermind
//
//  Created by Genis Domenech Traver on 2/4/22.
//

import Foundation
import SwiftUI

struct ColorsView: View
{
    @ObservedObject var viewModel: ViewModel
    
    var color: Color
    var m_width : Float = 45.0;
    var m_height : Float = 45.0;
    
    var body: some View
    {
        Button(action: {
            viewModel.AddColor(color)
        }, label: {
            Text("")
                .frame(width: 45, height: 45, alignment: .center)
                .foregroundColor(color)
                .background(color)
                .cornerRadius(45)
        })
    }
}

