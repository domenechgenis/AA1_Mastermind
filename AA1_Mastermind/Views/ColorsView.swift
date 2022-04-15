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
    var m_width : CGFloat = 45.0;
    var m_height : CGFloat = 45.0;
    
    var body: some View
    {
        Button(" ")
        {
            viewModel.AddColor(color)
        }
        .frame(width: m_width, height: m_height, alignment: .center)
        .background(color)
        .cornerRadius(45)
    }
}

