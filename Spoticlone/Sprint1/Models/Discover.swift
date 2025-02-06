//
//  Discover.swift
//  Sprint1
//
//  Created by Ana on 4/2/25.
//

import Foundation
struct Discover {
    
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
        // TODO: - Me gustaría que no hubiera tanto return, sino solo una salida por cada función
        let result = 0.00
        
        let genereOne = firstSong.basicInfo.genre
        let genreTwo = secondSong.basicInfo.genre
        //Si son iguales
        if genereOne == genreTwo {
            return 25.0
        }
        
        //Si están relacionados en un primer nivel
        guard let relacionPrimerNivel = genreDictionary[genereOne]else {
            return 0
        }
        
        if relacionPrimerNivel.contains(genreTwo){
            return 17.5
        }
        
        // Recorre el array correspondiente a cada uno de los géneros relacionados a generoUno
        for item in genreDictionary[genereOne] ?? [] {
            if let relacionSegundoNivel = genreDictionary[item]{
                if relacionSegundoNivel.contains(genreTwo){
                    return 10.0
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
        
        let result = abs(bpmOne - bpmTwo)
        
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
        
        let match = 0.00
        let keyOne = firstSong.technicalInfo.key
        let keyTwo = secondSong.technicalInfo.key
        
        if keyOne == keyTwo {
            return 15.00
        }
        
        if let armonickey = keyDictionary[keyOne]{
            if armonickey.contains(keyTwo){
                return 10.50
                
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
        
        if firstSong == secondSong { return 100.00 }
        
        let GenreMatch = mathcinGenre(firstSong: firstSong, secondSong: secondSong)
        let BPMMatch = matchingBpm(firstSong: firstSong, secondSong: secondSong)
        let TagsMatch = mathcingTags(firstSong: firstSong, secondSong: secondSong)
        let KeyMatch = matchingKey(firstSong: firstSong, secondSong: secondSong)
        let PopularityMatch = matchingPopularity(firstSong: firstSong, secondSong: secondSong)
        
        total = GenreMatch + BPMMatch + TagsMatch + KeyMatch + PopularityMatch
        
        return total
    }
}
