//
//  ContentView.swift
//  iDine
//
//  Created by Murilo Castilho on 11/12/23.
//

import SwiftUI

struct ContentView: View {
	let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
	
    var body: some View {
			NavigationStack {
				List {
					ForEach(menu) { section in
						Section(section.name) {
							ForEach(section.items) { item in
								NavigationLink(value: item) {
									ItemRow(item: item)
								}
							}
						}
					}
				}
				.navigationDestination(for: MenuItem.self, destination: { item in ItemDetail(item: item)
					
				})
				.navigationTitle("Menu")
				.listStyle(.grouped)
			}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
