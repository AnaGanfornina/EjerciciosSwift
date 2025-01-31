//
//  Sprint1Testing.swift
//  Sprint1Testing
//
//  Created by Ismael Sabri Pérez on 20/1/25.
//

import Testing
import Foundation

class Sprint1Testing {
    @Suite("getSongsFromArtist")
    class GetSongsFromArtistTest{
        var testData: Data?
        var songs: [Song]
        var mainInstance: Main
        
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            songs = SongsLoader(fromData: testData).songs
            mainInstance = Main()
        }
        deinit {
            testData = nil
            songs = []
        }
        
        //Para cuando la lista tiene una canción de theWeekend
        @Test func whenSongsContainOnTheWeekndSong_thenReturn1Song() async throws {
            #expect(mainInstance.getSongsFromArtist("The Weeknd", inSongs: songs).count == 1, "Se espera que al menos haya una canción de The Weeknd")
        }
        //Para cuando la lista está vacía
        @Test func whenSongsEmpty() async throws {
            #expect(mainInstance.getSongsFromArtist("The Weeknd", inSongs: []).count == 0, "Se espera un array de canciones vacías para The Weeknd porque no hemos pasado ninguna canción en la función")
        }
        
        @Test func whenSongsDoNotContainArcticMonkeysButIsNotEmpty_thenReturnEmpty() async throws {
            try #require(songs.count > 0, "El array de canciones no puede estar vacío")
            #expect(Main().getSongsFromArtist("Arctic Monkeys", inSongs: songs).count == 0, "Se espera que no haya ninguna canción de ArcticMonkeys ya que el array de canciones pasado no contiene ninguna canción de ArcticMonkeys")
        }
    }
    @Suite("getSongLongerThan")
    class GetSongLongerThanTest{
        var testData: Data?
        var songs: [Song]
        var mainInstance: Main
        
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            songs = SongsLoader(fromData: testData).songs
            mainInstance = Main()
        }
        deinit {
            testData = nil
            songs = []
        }
        
        
        @Test func whenSongsIsLongerThan203000_thenReturn2Song() async throws {
            
            #expect(mainInstance.getSongLongerThan(minutes: 203000, inSongs: songs).count == 2,"Se espera que al menos haya una canción")
        }
        
        
        @Test func whenSongEmpty_thenReturnEmpty() async throws {
            #expect(mainInstance.getSongLongerThan(minutes: 203000, inSongs: []).count == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
        }
    }
    @Suite("getSongWhith")
    class GetSongWhithTest{
        var testData: Data?
        var songs: [Song]
        var mainInstance: Main
        
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            songs = SongsLoader(fromData: testData).songs
            mainInstance = Main()
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenSongContainTagPride_thenReturn1() async throws {
            
            #expect(mainInstance.getSongWhith(tag: "pride", inSongs: songs).count == 1,"Se espera que al menos haya una canción con la etiqueta pride")
        }
        
        @Test func whenEmptySong_ReturnEmpty() async throws {
            #expect(mainInstance.getSongWhith(tag: "pride", inSongs: []).count == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
        }

    }
    
    @Suite("getSongFor")
    class GetSongForTest {
        var testData: Data?
        var songs: [Song]
        var mainInstance: Main
        
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            songs = SongsLoader(fromData: testData).songs
            mainInstance = Main()
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenBPMIs90_100_thenReturn2Songs () async throws {
            #expect(mainInstance.getSongFor(BPM: (90, 100), inSong: songs).count == 2, "Se espera que haya 3 canciones")
        }
        
        @Test func whenEmptySong_ReturnEmpty() async throws {
            #expect(mainInstance.getSongFor(BPM: (90, 100), inSong: []).count == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
        }
    }
    
    @Suite("countSongsForGenere")
    class CountSongsForGenereTest {
        var testData: Data?
        var songs: [Song]
        var mainInstance: Main
        
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            songs = SongsLoader(fromData: testData).songs
            mainInstance = Main()
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenSongsContainGenerePop_thenReturn2() async throws {
            #expect(mainInstance.countSongsForGenere(genre: "Pop", inSong: songs) == 2,"Se espera que haya 2 canciones de pop")
        }
        @Test func whenSongEmpty_thenReturnEmpty() async throws {
            #expect(mainInstance.countSongsForGenere(genre: "Pop", inSong: []) == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
        }
        
    }
    
    @Suite("countAverageOfPopularity")
    class CountAverageOfPopularityTest {
        var testData: Data?
        var songs: [Song]
        var mainInstance: Main
        
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            songs = SongsLoader(fromData: testData).songs
            mainInstance = Main()
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenAverageIs91() async throws{
            #expect(mainInstance.countAverageOfPopularity(inSongs: songs) == 91,"Se espera que la popularidad promedio sea de 91")
        }
        @Test func whenSongEmpty_thenReturnEmpty() async throws {
            #expect(mainInstance.countAverageOfPopularity(inSongs: []) == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
        }
    }
    
}
