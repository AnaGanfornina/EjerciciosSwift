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
        /*
         let songs = SongsLoader().songs
         
         let estiloprueba = Style(name: "DJ Chill Vibes",description: "canciones relajantes y suaves para crear un ambiente tranquilo",tags: ["chill", "soulful", "acoustic" ,"memories", "soft rock", "nostalgic", "peace"])
         
         
         */
        
      // MARK: Prueba para testear Style
        
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
        
        // MARK: Prueba para testear Dj
        
        
        let nuevoDJ = DJ(name: "Isma", DJstyle: [estilo])
        print(nuevoDJ.name)
        print(nuevoDJ.DJstyle[0].name)
 
        
            
            
        
        
        
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
    }
}



