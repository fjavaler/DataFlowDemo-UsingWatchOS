//
//  PlayButton.swift
//  DataFlowDemoUsingWatchOS WatchKit Extension
//
//  Created by Frederick Javalera on 3/24/21.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }, label: {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
        })
    }
}

struct PlayButton_Previews: PreviewProvider {
    // Remember to mark @State vars in preview as static or will fail building.
    @State private static var isPlaying = false
    static var previews: some View {
        PlayButton(isPlaying: $isPlaying)
    }
}
