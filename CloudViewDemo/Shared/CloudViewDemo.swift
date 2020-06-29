//
//  CloudViewDemo.swift
//  Shared
//
//  Created by Carlos Alcala on 6/24/20.
//

import SwiftUI
import CloudView

@main
struct CloudViewDemo: App {
    var body: some Scene {
        WindowGroup {
            CloudView()
        }
    }
}

struct CloudViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        CloudView()
    }
}
