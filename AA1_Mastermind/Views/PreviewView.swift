//
//  PreviewView.swift
//  AA1_Mastermind
//
//  Created by Ferran on 2/4/22.
//

import Foundation
import SwiftUI

struct PreviewView: View
{
    @ObservedObject var viewModel: ViewModel
    
    private let m_width: Float = 35;
    private let m_height: Float = 35;
    
    var body: some View
    {
        HStack
        {
            Text("0")
            .font(.title)
            .foregroundColor(.gray)
            Spacer()
            Circle()
                .fill(Color.gray)
                .frame(width: m_width, height: m_height)
            Circle()
                .fill(Color.gray)
                .frame(width: m_width, height: m_height)
            Circle()
                .fill(Color.gray)
                .frame(width: m_width, height: m_height)
            Circle()
                .fill(Color.gray)
                .frame(width: m_width, height: m_height)
            Spacer()
        }
    }
}
