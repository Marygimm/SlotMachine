//
//  SlotMachineApp.swift
//  SlotMachine
//
//  Created by Mary Moreira on 26/10/2022.
//

import SwiftUI
import UIKit

@main
struct SlotMachineApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onReceive(
                    NotificationCenter.default.publisher(for: UIScene.willConnectNotification)
                ) { _ in
                    #if targetEnvironment(macCatalyst)
                    UIApplication.shared.connectedScenes
                        .compactMap { $0 as? UIWindowScene }
                        .forEach { windowScene in
                            windowScene.sizeRestrictions?.minimumSize = CGSize(width: 600, height: 800)
                            windowScene.sizeRestrictions?.maximumSize = CGSize(width: 600, height: 800)
                        }
                    #endif
                }
        }
    }
}
