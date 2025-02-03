//
//  main.swift
//  Sprint1
//
//  Created by Ismael Sabri Pérez on 16/1/25.
//

import Foundation
import OSLog

Main().main() // Ejecutamos el programa

class Main {
    
    let logger = Logger(subsystem: "Sprint1", category: "main")
    
    // MARK: - Main
    func main() {
        
        let songs = SongsLoader().songs
        
        var nuevoDJ = DJ(name: "Isma", DJstyle: []) //Creamos un DJ
        nuevoDJ.changeStyle(newStyle: "Party Starter") //Le añadimos un estilo
        
        
        //cramos playlist
        
        nuevoDJ.createPlaylist("newPlaylist", songs: [])
        
        
        //Añadimos dos canciones a la playlist
        
        nuevoDJ.DJplaylist?.addSongs(getSongsFromArtist("Oasis", inSongs: songs))
        
        nuevoDJ.DJplaylist?.addSongs(getSongsFromArtist("Radiohead", inSongs: songs))
        
        //Reproducimos playlist
        
        guard let unwrapedPlaylist = nuevoDJ.DJplaylist else {
            print("No se ha podido reproducir la playlist")
            return
        }
        nuevoDJ.play(playlist: unwrapedPlaylist)
        
        
        
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
        
        // MARK: Prueba para comprobar matchingGenre
        /*
         let songs = SongsLoader().songs
         let cancion1 = songs[0]
         let cancion2 = songs[91]
         mathcinGenre(firstSong: cancion1, secondSong: cancion2)
         */
        
        // MARK: Prueba para comprobar matchingBpm
        
        /*
         let cancion1 = songs[95]
         let cancion2 = songs[88]
         print(matchingBpm(firstSong: cancion1, secondSong: cancion2))
         
         */
        // MARK: Prueba para comprobar matchingBpm
        /*
         let cancion1 = songs[93]
         let cancion2 = songs[93]
         
         print(mathcingTags(firstSong: cancion1, secondSong: cancion2))
         */
        
        // MARK: Prueba para comprobar matchingPopularity
        /*
         let cancion1 = songs[18]
         let cancion2 = songs[48]
         
         print(matchingPopularity(firstSong: cancion1, secondSong: cancion2))
         */
        
        // MARK: Prueba para comprobar matchingKey
        
        let cancion1 = songs[4]
        let cancion2 = songs[51]
        
        print(matchingKey(firstSong: cancion1, secondSong: cancion2))
        
        
    }
        
        // MARK: - Búsquedas y filtrados básicos
        func getSongsFromArtist(_ artist: String, inSongs songs: [Song]) -> [Song] {
            // Registramos el inicio de la operación
            logger.info("Iniciando búsqueda de canciones del artista: \(artist)")
            
            guard !songs.isEmpty else {
                logger.warning("La lista de canciones está vacía")
                return []
            }
            
            // Convertimos el artista a minúsculas para hacer la búsqueda insensible a mayúsculas
            let normalizedArtist = artist.lowercased()
            
            // Filtramos las canciones por artista
            let matchingSongs = songs.filter { $0.basicInfo.artist.lowercased() == normalizedArtist }
            
            logger.debug("Proceso de filtrado completado. Canciones encontradas: \(matchingSongs.count)")
            
            // Comprobamos si se han encontrado canciones, si no, lo indicamos
            guard !matchingSongs.isEmpty else {
                logger.warning("No se han encontrado canciones de \(artist) en la función \(#function)")
                return []
            }
            
            // Devolvemos el array de canciones
            return matchingSongs
        }
        
        func getSongLongerThan(minutes: Int, inSongs songs: [Song]) -> [Song] {
            let filtred = songs.filter { song in
                song.basicInfo.durationMs >= minutes
            }
            return filtred
        }
        
        func getSongWhith(tag: String, inSongs songs: [Song]) -> [Song] {
            
            let filtred = songs.filter { song in
                song.metadata.tags.contains(tag)
            }
            return filtred
        }
        
        func getSongFor(BPM range:(Int, Int), inSong songs: [Song]) -> [Song] {
            
            let filtred = songs.filter { song in
                song.technicalInfo.bpm >= range.0 && song.technicalInfo.bpm <= range.1
            }
            return filtred
        }
        
        func countSongsForGenere(genre: String, inSong songs: [Song]) -> Int {
            let accum = songs.filter {song in
                song.basicInfo.genre == genre
            }
            return accum.count
        }
        
        func countAverageOfPopularity(inSongs songs: [Song]) -> Int {
            
            let numberOfSongs = songs.count
            guard numberOfSongs != 0 else{
                return 0
            }
            
            let result = songs.reduce(0) {count, song in
                count + song.metadata.popularity
            }
            return result/numberOfSongs
        }
        // MARK: - Función mathcinGenre
        
        
        func mathcinGenre(firstSong:Song, secondSong: Song ) -> Double {
            
            let genreDictionary = [
                // Pop y derivados
                "Pop": ["Dance-Pop", "Pop-Rock", "Indie-Pop", "Electropop"],
                "Dance-Pop": ["Pop", "Electropop", "Disco"],
                "Pop-Rock": ["Pop", "Rock", "Indie-Pop"],
                "Electropop": ["Pop", "Dance-Pop", "Industrial Rock"],
                "Indie-Pop": ["Pop", "Pop-Rock", "Indie"],
                "Britpop": ["Pop", "Rock", "Indie"],
                
                // Rock y derivados
                "Rock": ["Pop-Rock", "Indie Rock", "Alternative Rock"],
                "Indie Rock": ["Rock", "Alternative Rock", "Indie"],
                "Alternative Rock": ["Rock", "Indie Rock", "Industrial Rock"],
                "Industrial Rock": ["Alternative Rock", "Electropop"],
                "Indie": ["Indie Rock", "Indie-Pop", "Britpop"],
                
                // R&B y géneros relacionados
                "R&B": ["Soul", "Hip-Hop"],
                "Soul": ["R&B", "Disco"],
                "Hip-Hop": ["R&B", "Dance-Pop"],
                "Disco": ["Dance-Pop", "Soul"],
                
                // Otros
                "Soundtrack": ["Orchestral", "Pop", "Rock"] // Género versátil que puede relacionarse con varios
            ]
            var result = 0.00
            
            let genereOne = firstSong.basicInfo.genre
            let genreTwo = secondSong.basicInfo.genre
            //Si son iguales
            if genereOne == genreTwo {
                result = 25.00
            }
            
            //Si están relacionados en un primer nivel
            if let relacionPrimerNivel = genreDictionary[genereOne]{
                if relacionPrimerNivel.contains(genreTwo){
                    result = 17.5
                }
            }
            
            // Recorre el array correspondiente a cada uno de los géneros relacionados a generoUno
            for item in genreDictionary[genereOne] ?? [] {
                if let relacionSegundoNivel = genreDictionary[item]{
                    if relacionSegundoNivel.contains(genreTwo){
                        result = 10.0
                    }
                }
            }
            return result
        }
        
        // MARK: - Función matchingBPM
        
        func matchingBpm(firstSong:Song, secondSong: Song ) -> Double {
            let bpmOne = firstSong.technicalInfo.bpm
            let bpmTwo = secondSong.technicalInfo.bpm
            var value = 0.0
            
            let result = bpmOne - bpmTwo
            
            switch result{
            case let x where x < 10:
                value = 20.0
            case 10...19:
                value = 15.0
            case 20...29:
                value = 10.0
            case 30...39:
                value = 5.0
            default:
                value = 0.0
            }
            
            return value
        }
        
        // MARK: - Función mathcingTags
        
        func mathcingTags(firstSong:Song, secondSong: Song ) -> Double {
            let tagsOfFirst = firstSong.metadata.tags
            let tagsOfSecond = secondSong.metadata.tags
            
            let maximumTags = Double([tagsOfFirst.count,tagsOfSecond.count].reduce(0, {$0 > $1 ? $0 : $1}))
            
            var comunTags = 0.0
            for item in tagsOfFirst{
                if tagsOfSecond.contains(item){
                    comunTags += 1.0
                }
            }
            
            let match = (comunTags / maximumTags) * 30
            
            return match
        }
        
        // MARK: - Función matchingKey
        
        func matchingKey(firstSong:Song, secondSong: Song ) -> Double {
            let keyDictionary = [
                "C": ["G", "F", "Am"],
                "C#": ["G#", "F#", "A#m"],
                "Db": ["Ab", "Gb", "Bbm"],
                "D": ["A", "G", "Bm"],
                "D#": ["A#", "A", "Cm"],
                "Eb": ["Bb", "Ab", "Cm"],
                "E": ["B", "A", "C#m"],
                "F": ["C", "Bb", "Dm"],
                "F#": ["C#", "B", "D#m"],
                "Gb": ["Db", "B", "Ebm"],
                "G": ["D", "C", "Em"],
                "G#": ["D#", "D", "Fm"],
                "Ab": ["Eb", "Db", "Cm"],
                "A": ["E", "D", "F#m"],
                "A#": ["F", "E", "Gm"],
                "Bb": ["F", "Eb", "Gm"],
                "B": ["F#", "E", "G#m"]
            ]
            
            var match = 0.00
            let keyOne = firstSong.technicalInfo.key
            let keyTwo = secondSong.technicalInfo.key
            
            if keyOne == keyTwo {
                match = 15.00
            }
            
            if let armonickey = keyDictionary[keyOne]{
                if armonickey.contains(keyTwo){
                    match = 10.50
                }
            }
            
            return match
        }
        
        // MARK: - Función matchingPopularity
        
        func matchingPopularity(firstSong:Song, secondSong: Song ) -> Double {
            var popularityOfFirst = firstSong.metadata.popularity
            var popularityOfSecond = secondSong.metadata.popularity
            
            //Normalizamos los valores de popularidad
            
            if popularityOfFirst > 100 {
                popularityOfFirst = 100
            }else if popularityOfFirst < 0 {
                popularityOfFirst = 0
            }
            
            if popularityOfSecond > 100 {
                popularityOfSecond = 100
            }else if popularityOfSecond < 0 {
                popularityOfSecond = 0
            }
            
            //calculamos la diferencia de popularidad
            
            var popularityDifference = Double(popularityOfFirst - popularityOfSecond)
            popularityDifference = abs(popularityDifference) //Cogemos el valor absoluto para evitar los numeros negativos
            
            
            let match = 10 * (1 - (popularityDifference / 100))
            
            return match
        }
        
        // MARK: - Función de matching
        
        func matching(between firstSong: Song, and secondSong: Song) -> Double{
            var total = 0.0
            let mathcinGenre = mathcinGenre(firstSong: firstSong, secondSong: firstSong)
            let matchingBPM = matchingBpm(firstSong: firstSong, secondSong: firstSong)
            let mathcingTags = mathcingTags(firstSong: firstSong, secondSong: firstSong)
            let matchingKey = matchingKey(firstSong: firstSong, secondSong: firstSong)
            let matchingPopularity = matchingPopularity(firstSong: firstSong, secondSong: firstSong)
            
            total = mathcinGenre + matchingBPM + mathcingTags + matchingKey + matchingPopularity
            
            return total
        }
    }




