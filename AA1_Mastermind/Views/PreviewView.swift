//
//  PreviewView.swift
//  AA1_Mastermind
//
//  Created by Genis Domenech Traver on 2/4/22.
//

import Foundation
import SwiftUI

struct PreviewView: View
{
    var combination : Combination
    var current_index : String
    
    private let m_width: CGFloat = 35.0;
    private let m_height: CGFloat = 35.0;
    
    var body: some View
    {
        HStack
        {
            Spacer()
            Text("0 - ")
            .font(.title)
            .foregroundColor(.gray)
            Spacer()
            ForEach(combination.colors,id: \.self){ color in
                Circle()
                    .fill(color)
                    .frame(width: m_width, height: m_height)
            }
            Spacer()
            VStack
            {
                Circle()
                    .fill(Color.gray)
                    .frame(width: m_width / 3, height: m_height / 3)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Circle()
                    .fill(Color.gray)
                    .frame(width: m_width / 3, height: m_height / 3)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Spacer()
            }
            VStack
            {
                Circle()
                    .fill(Color.gray)
                    .frame(width: m_width / 3, height: m_height / 3)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Circle()
                    .fill(Color.gray)
                    .frame(width: m_width / 3, height: m_height / 3)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1)
                    )
                Spacer()
            }
        }
    }
}
