//
//  DJ.swift
//  Sprint1
//
//  Created by Ana on 31/1/25.
//

import Foundation

struct DJ{
    let name: String
    var DJplaylist: Playlist
    
    func play(playlist: [Song],_ delay: Int = 5) {
        for song in playlist {
            print(song.basicInfo.title)
            sleep(UInt32(delay))
        }
        print("Fin de la playlist")
    }
}
