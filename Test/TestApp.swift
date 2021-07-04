//
//  TestApp.swift
//  Test
//
//  Created by ifechukwu daniel; on 13/06/2021.
//

import SwiftUI

@main
struct TestApp: App {
    @StateObject private var  modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
