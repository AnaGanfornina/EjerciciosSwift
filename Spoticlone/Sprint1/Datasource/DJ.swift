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
    let DJstyle: [Style]
    
    func play(playlist: [Song],_ delay: Int = 5) {
        
        guard DJplaylist == nil else {
            print("no hay playlist")
            return
        }
        
        for song in playlist {
            print(song.basicInfo.title)
            sleep(UInt32(delay))
        }
        print("Fin de la playlist")
    }
    
    mutating func addPlaylist(_ playlist: Playlist) {
        DJplaylist = playlist
    }
    /*
    mutating func createPlaylist() {
        DJplaylist = []
    }
     */
}
