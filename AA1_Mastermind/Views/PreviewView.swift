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
    var m_try: String
    
    private let m_width: CGFloat = 35.0;
    private let m_height: CGFloat = 35.0;
    
    var body: some View
    {
        HStack
        {
            Text(m_try)
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
