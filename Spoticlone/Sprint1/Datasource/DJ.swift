//
//  DJ.swift
//  Sprint1
//
//  Created by Ana on 31/1/25.
//

import Foundation

struct DJ {
    let name: String
    var DJplaylist: Playlist?
    var DJstyle: [Style]
    
    func play(playlist: Playlist,_ delay: Int = 5) {
        
        
        
        for song in playlist.songs {
            print(song.basicInfo.title)
            sleep(UInt32(delay))
        }
        print("Fin de la playlist")
    }
    
    mutating func createPlaylist(_ name: String, songs: [Song]) {
        
        let newPlaylist = Playlist(name: "Playlist1")
        
        DJplaylist = newPlaylist
            
        
        
    
    }
    mutating func addPlaylist(_ playlist: Playlist) {
        DJplaylist = playlist
    }
    
    mutating func changeStyle(newStyle: String) {
        self.DJstyle = [Style(name: newStyle)]
    }
    
}
