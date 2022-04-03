//
//  AA1_MastermindApp.swift
//  AA1_Mastermind
//
//  Created by Genis Domenech Traver on 2/4/22.
//

import SwiftUI

@main
struct AA1_MastermindApp: App
{
    var body: some Scene
    {
        WindowGroup
        {
            ContentView(viewModel: ViewModel())
        }
    }
}
