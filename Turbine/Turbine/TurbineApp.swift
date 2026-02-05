//
//  TurbineApp.swift
//  Turbine
//
//  Created by Malik on 1/31/26.
//  Last_Updated_By: GPT 5.2 Medium Reasoning - Windsurf IDE
//

import SwiftUI

@main
struct TurbineApp: App {
    var body: some Scene {
        WindowGroup {
            RootContainer()
                .environment(\.appEnvironment, AppEnvironment.current())
        }
    }
}
