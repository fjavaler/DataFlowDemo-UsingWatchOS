//
//  ContentView.swift
//  DataFlowDemoUsingWatchOS WatchKit Extension
//
//  Created by Frederick Javalera on 3/24/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - VARIABLES
    let episode: Episode
    @State private var isPlaying: Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Text(episode.title)
            Text(episode.showTitle).font(.caption).foregroundColor(.gray)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let episode = Episode(title: "Amatriciana", showTitle: "Caffé Macs Radio")
        ContentView(episode: episode)
    }
}
