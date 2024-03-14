//
//  iDineApp.swift
//  iDine
//
//  Created by Murilo Castilho on 11/12/23.
//

import SwiftUI

@main
struct iDineApp: App {
	@StateObject var order = Order()
	
    var body: some Scene {
        WindowGroup {
            MainView()
							.environmentObject(order)
        }
    }
}
