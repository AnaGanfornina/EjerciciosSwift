//
//  Sprint1Testing.swift
//  Sprint1Testing
//
//  Created by Ismael Sabri Pérez on 20/1/25.
//

//MARK: - NO he sabido dividirlos en varios archivos, que plantilla hay que generar para crear nuevos archivos de test?

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
            #expect(mainInstance.getSongsFromArtist("Arctic Monkeys", inSongs: songs).count == 0, "Se espera que no haya ninguna canción de ArcticMonkeys ya que el array de canciones pasado no contiene ninguna canción de ArcticMonkeys")
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
            #expect(mainInstance.countAverageOfPopularity(inSongs: songs) == 93,"Se espera que la popularidad promedio sea de 93")
        }
        @Test func whenSongEmpty_thenReturnEmpty() async throws {
            #expect(mainInstance.countAverageOfPopularity(inSongs: []) == 0,"Se espera un array de canciones vacío al no haberle pasado ninguna canción")
        }
    }
    @Suite("matchingGenre")
    class MatchingGenreTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        @Test func whenFirstAndSecondSongsHaveTheSameGenre_Return25(){
            #expect(discoverInstance.mathcinGenre(firstSong: songs[0], secondSong: songs[1]) == 25.0, "Se espera que el matching sea de 25")
        }
        
        @Test func whenFirstGenreAndSecondGenreHaveARelationOfFirstLevel_Return17point5(){
            #expect(discoverInstance.mathcinGenre(firstSong: songs[0], secondSong: songs[5]) == 17.5, "Se espera que el matching sea de 17.5")
        }
        
        @Test func whenFirstGenreAndSecondGenreHaveARelationOfSecondLevel_Return10(){
            #expect(discoverInstance.mathcinGenre(firstSong: songs[0], secondSong: songs[6]) == 10, "Se espera que el matching sea de 10")
        }
        
        @Test func whenFirstGenreAndSecondGenreHaveNoRelation_Return0(){
            
            #expect(discoverInstance.mathcinGenre(firstSong: songs[0], secondSong: songs[2]) == 0.00, "Se espera que el matching sea de 0")
        }
    }
    
    @Suite("matchingBPM")
    class MatchingBPMTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        @Test func whenFirstBpmAndSecondBpmHaveADiferenceLessThan10_Return20(){
            
            #expect(discoverInstance.matchingBpm(firstSong: songs[3], secondSong: songs[1]) == 20,"Se espera que el matching sea de 20")
        }
        
        @Test func whenFirstBpmAndSecondBpmHaveADiferenceBetween10and19_Return15(){
            
            #expect(discoverInstance.matchingBpm(firstSong: songs[5], secondSong: songs[6]) == 15,"Se espera que el matching sea de 15")
        }
        @Test func whenFirstBpmAndSecondBpmHaveADiferenceBetween20and29_Return10(){
            
            #expect(discoverInstance.matchingBpm(firstSong: songs[3], secondSong: songs[2]) == 10,"Se espera que el matching sea de 10")
        }
        @Test func whenFirstBpmAndSecondBpmHaveADiferenceBetween30and39_Return5(){
            
            #expect(discoverInstance.matchingBpm(firstSong: songs[1], secondSong: songs[5]) == 5,"Se espera que el matching sea de 5")
        }
        @Test func whenFirstBpmAndSecondBpmHaveADiferenceMoreOf40_Return0(){
            
            #expect(discoverInstance.matchingBpm(firstSong: songs[2], secondSong: songs[0]) == 0,"Se espera que el matching sea de 0")
        }
    }
    @Suite("matchingTags")
    class MatchingTagsTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        @Test func whenFirstTagsAndSecondTagsHaveTotalCoincidence_Return30(){
            
            #expect(discoverInstance.mathcingTags(firstSong: songs[2], secondSong: songs[1]) == 30,"Se espera que el matching sea de 30")
        }
        @Test func whenFirstTagsAndSecondTagsHaveHightCoincidence_Return20(){
            
            #expect(discoverInstance.mathcingTags(firstSong: songs[4], secondSong: songs[6]) == 20,"Se espera que el matching sea de 20")
        }
        @Test func whenFirstTagsAndSecondTagsHaveMediumCoincidence_Return15(){
            
            #expect(discoverInstance.mathcingTags(firstSong: songs[6], secondSong: songs[5]) == 15,"Se espera que el matching sea de 15")
        }
        @Test func whenFirstTagsAndSecondTagsHaveLowCoincidence_Return10(){
            
            #expect(discoverInstance.mathcingTags(firstSong: songs[1], secondSong: songs[0]) == 10,"Se espera que el matching sea de 10")
        }
        @Test func whenFirstTagsAndSecondTagsWhithoutCoincidence_Return0(){
            
            #expect(discoverInstance.mathcingTags(firstSong: songs[6], secondSong: songs[0]) == 0,"Se espera que el matching sea de 0")
        }
    }
    @Suite("matchingKey")
    class MatchingKeyTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenFirstKeyAndSecondKeysAreTheSame_Return15(){
            
            #expect(discoverInstance.matchingKey(firstSong: songs[1], secondSong: songs[2]) == 15,"Se espera que el matching sea de 15")
        }
        @Test func whenFirstKeyAndSecondKeysHaveArmonicCoincidence_Return10point5(){
            
            #expect(discoverInstance.matchingKey(firstSong: songs[3], secondSong: songs[2]) == 10.5,"Se espera que el matching sea de 10.5")
        }
        
        @Test func whenFirstKeyAndSecondKeysWhithoutCoincidence_Return0(){
            
            #expect(discoverInstance.matchingKey(firstSong: songs[5], secondSong: songs[4]) == 0,"Se espera que el matching sea de 0")
        }
        
    }
    @Suite("matchingPopularity")
    class MatchingPopularityTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenTheDiferenceIsMinimum_Return10(){
            
            #expect(discoverInstance.matchingPopularity(firstSong: songs[2], secondSong: songs[3]) == 10,"Se espera que el matching sea de 10")
        }
        @Test func whenTheDiferenceIsSmall_Return9point5(){
            
            #expect(discoverInstance.matchingPopularity(firstSong: songs[0], secondSong: songs[1]) == 9.5,"Se espera que el matching sea de 9.5")
        }
        @Test func whenTheDiferenceIsModerate_Return4point8(){
            
            #expect(discoverInstance.matchingPopularity(firstSong: songs[2], secondSong: songs[4]) == 4.8,"Se espera que el matching sea de 4.8")
        }
        @Test func whenTheDiferenceIsBig_Return2point5(){
            
            #expect(discoverInstance.matchingPopularity(firstSong: songs[0], secondSong: songs[5]) == 2.5,"Se espera que el matching sea de 2.5")
        }
        @Test func whenIsTheMaximumDiference_Return0(){
            
            #expect(discoverInstance.matchingPopularity(firstSong: songs[7], secondSong: songs[6]) == 0,"Se espera que el matching sea de 0")
        }
    }
    @Suite("matching")
    class MatchingTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenIsATotalMatch_Return100(){
            
            #expect(discoverInstance.matching(between: songs[0], and: songs[0]) == 100.0,"Se espera que el matching sea de 100")
        }
        @Test func whenIsMediumMatch_Return55(){
            
            #expect(discoverInstance.matching(between: songs[0], and: songs[1]) == 55,"Se espera que el matching sea de 55")
        }
        @Test func whenIsLowMatch_Return3point5(){
            
            #expect(discoverInstance.matching(between: songs[5], and: songs[1]) == 3.5,"Se espera que el matching sea de 55.5")
        }

    }
    // MARK: Aqui ya empecé a liarme con qué debería devolver cada uno de los except, los cuales seguramente deberían estar en Suites separadas
    @Suite("DJ")
    class DJTest {
        var testData: Data?
        var discoverInstance: Discover
        var songs: [Song]
        
        init() {
            testData = TestData.getFiveSongs() ?? "".data(using: .utf8)!
            discoverInstance = Discover()
            songs = SongsLoader(fromData: testData).songs
        }
        deinit {
            testData = nil
            songs = []
        }
        
        @Test func whenCreateADJ_ReturnStr(){
            var estilo = Style(name: "Party Starter")
            
            guard let unwrapedDescription = estilo.description else {
            print(StyleError.notDescription)
            return
            }
     
            #expect(estilo.name == "partyStarter","Se espera que el estilo sea partyStarter")
            #expect(unwrapedDescription == "centrado en levantar el ánimo y sacar a la gente a bailar","Se espera que el escriba: centrado en levantar el ánimo y sacar a la gente a bailar")
            
            guard let unwrapedTags = estilo.tags else {
            print(StyleError.notTags)
            return
                
            }
            #expect(unwrapedTags == "["party", "dance", "energetic", "disco", "summer", "fun", "uplifting", "catchy"]","Se espera que el estilo sea partyStarter")
            
        }
            
           
            
            
        }
    }
    
    
    

    
    // MARK: Prueba para testear Style
    /*
     var estilo = Style(name: "Party Starter")
     
     guard let unwrapedDescription = estilo.description else {
     print(StyleError.notDescription)
     return
     }
     print(estilo.name)
     print(unwrapedDescription)
     
     guard let unwrapedTags = estilo.tags else {
     print(StyleError.notTags)
     return
     }
     print(unwrapedTags)
     */
    
    // MARK: Prueba para testear Dj
    
    /*
     let nuevoDJ = DJ(name: "Isma", DJstyle: [estilo])
     print(nuevoDJ.name)
     print(nuevoDJ.DJstyle[0].name)
     */
    
   
