//
//  Sprint1Testing.swift
//  Sprint1Testing
//
//  Created by Ismael Sabri Pérez on 20/1/25.
//

import Testing

class Sprint1Testing {
    @Test func getSongsFromArtist() async throws {
        let testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
        let songs = SongsLoader(fromData: testData).songs
        #expect(Main().getSongsFromArtist("The Weeknd", inSongs: songs).count == 1, "Se espera que al menos haya una canción de The Weeknd")
    }
    
    @Test func getSongsFromArtistWithEmptySong() async throws {
        #expect(Main().getSongsFromArtist("The Weeknd", inSongs: []).count == 0, "Se espera un array de canciones vacías para The Weeknd porque no hemos pasado ninguna canción en la función")
    }
    @Test func getSongLongerThan() async throws {
        let testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!   //Esto no se muuy bien qué es
        let songs = SongsLoader(fromData: testData).songs
        
        #expect(Main().getSongLongerThan(minutes: 203000, inSongs: songs).count == 2,"Se espera que al menos haya una canción")
    }
    
    
    @Test func getSongLongerThanWithEmptySong() async throws {
        #expect(Main().getSongLongerThan(minutes: 203000, inSongs: []).count == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
    }
    
    @Test func getSongWhith() async throws {
        let testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
        
        let songs = SongsLoader(fromData: testData).songs
        
        #expect(Main().getSongWhith(tag: "pride", inSongs: songs).count == 1,"Se espera que al menos haya una canción con la etiqueta pride")
    }
    
    @Test func getSongWhithTagEmptySong() async throws {
        #expect(Main().getSongWhith(tag: "pride", inSongs: []).count == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
    }
    
    @Test func getSongFor() async throws {
        let testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
        
        let songs = SongsLoader(fromData: testData).songs
        
        #expect(Main().getSongFor(BPM: (90, 100), inSong: songs).count == 2, "Se espera que haya 3 canciones")
    }
    
    @Test func getSongForEmptySong() async throws {
        #expect(Main().getSongFor(BPM: (90, 100), inSong: []).count == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
    }
    
    @Test func countSongsForGenere() async throws {
        let testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
        
        let songs = SongsLoader(fromData: testData).songs
        
        #expect(Main().countSongsForGenere(genre: "Pop", inSong: songs) == 2,"Se espera que haya 2 canciones de pop")
    }
    @Test func countSongsForGenereEmptySong() async throws {
        #expect(Main().countSongsForGenere(genre: "Pop", inSong: []) == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
    }
    @Test func countAverageOfPopularity() async throws{
        let testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
        
        let songs = SongsLoader(fromData: testData).songs
        #expect(Main().countAverageOfPopularity(inSongs: songs) == 91,"Se espera que la popularidad promedio sea de 91")
    }
    @Test func countAverageOfPopularityEmptySong() async throws {
        #expect(Main().countAverageOfPopularity(inSongs: []) == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
    }
}
