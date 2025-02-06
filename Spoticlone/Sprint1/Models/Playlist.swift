//
//  Playlist.swift
//  Sprint1
//
//  Created by Ana on 31/1/25.
//

import Foundation
struct Playlist {
    let name: String
    var songs: [Song] = []
    
    
    mutating func addSong (_ song: Song){
        songs.append(song)
    }
    mutating func addSongs(_ song: [Song]) {
        for item in song {
            addSong(item)
        }
    }
    mutating func removeSong(_ song:[Song]) {
        for item in song {
            songs.removeAll(where: {$0 == item})
        }
    }
    func countSongs() -> Int {
        return songs.count
    }
    mutating func removeAll() {
        songs.removeAll()
    }
    mutating func reversePlaylist(_ playlist: [Song]) {
        songs.reverse()
    }
    mutating func shufflePlaylist() {
        songs.shuffle()
    }
    
    
    mutating func orderPlaylistByDate() {
        var dateString:String
        let formatter = DateFormatter()
        for song in songs {
            dateString = song.basicInfo.releaseDate // Convertimos a formato fecha el string de releaseDate
            formatter.dateFormat = "yyyy-MM-dd"
            if let date = formatter.date(from: dateString){  //Ordenamos por fecha
                songs.sort {$0.basicInfo.releaseDate > $1.basicInfo.releaseDate}
            }
        }
    }
    mutating func orderByAscendingPopularity() {
        songs.sort {$0.metadata.popularity > $1.metadata.popularity}
    }
    mutating func orderByDescendingPopularity() {
        songs.sort {$0.metadata.popularity < $1.metadata.popularity}
    }
    
    mutating func orderByBPM() {
        songs.sort {$0.technicalInfo.bpm < $1.technicalInfo.bpm}
    }
   
    // MARK: -Esta se me queda atascada
    /*
    mutating func orderByKey() {
        let keys = ["Cb","C","C#","Db","D","D#",
                    "Eb","E","E#","Fb","F","F#",
                    "Gb","G","G#","Ab","A","A#",
                    "Bb","B","B#"]
        
        songs.sort { keys.firstIndex(where: $0.technicalInfo.key) > keys.firstIndex(where: $1.technicalInfo.key) ? $0 : $1
        }
    }
     
     */
     
}
