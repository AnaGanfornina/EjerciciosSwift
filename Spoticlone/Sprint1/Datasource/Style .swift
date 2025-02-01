//
//  Style .swift
//  Sprint1
//
//  Created by Ana on 31/1/25.
//

import Foundation

enum StyleError: Error {
    case notDescription
    case notTags
    
}

struct Style {
    var name:StyleList
    var description: String?
    var tags: [String]?
    
    
    init(name: String, description: String? = nil, tags: [String]? = [])  {

        self.name = StyleList(name: name)
        
        ToFill(name: self.name)
        
    }
    
    
    enum StyleList {
        
        case chillVibes
        case partyStarter
        case rockAnthems
        case emotionalTrip
        case energyBoost
        case eightySLovers
        case empty
        
        init(name: String) {
            switch name {
            case "Chill Vibes":
                self = .chillVibes
            case "Party Starter":
                self = .partyStarter
            case "Rock Anthems":
                self = .rockAnthems
            case "Emotional Trip":
                self = .emotionalTrip
            case "Energy Boost":
                self = .energyBoost
            case "80's Lovers":
                self = .eightySLovers
                
            default:
                self = .empty
            }
        }
         
    }
    
    mutating func ToFill(name: StyleList)  {

        switch name {
        case .chillVibes:
            description = "canciones relajantes y suaves para crear un ambiente tranquilo"
            tags = ["chill", "soulful", "acoustic" ,"memories", "soft rock", "nostalgic", "peace"]
        case .partyStarter:
            description = "centrado en levantar el ánimo y sacar a la gente a bailar"
            tags = ["party", "dance", "energetic", "disco", "summer", "fun", "uplifting", "catchy"]
        case .rockAnthems:
            description = "ideal para apasionados del rock y el heavy, tanto clásico como moderno"
            tags = ["rock", "hard rock", "power ballad", "anthem", "epic", "alternative", "angry"]
        case .emotionalTrip:
            description = "diseñado para conectar emocionalmente con la audiencia. Canciones con mensajes profundos y melancólicos"
            tags = ["emotional", "heartbreak", "melancholic", "regret", "nostalgia", "reflective", "romantic"]
        case .energyBoost:
            description = " perfecto para motivar y energizar a una multitud sin importar la hora del día"
            tags = ["motivational", "inspiration", "freedom", "empowerment", "upbeat", "heroic", "power"]
        case .eightySLovers:
            description = "para aquellos amantes del synth, el pop retro y la nostalgia de los años 80"
            tags = ["80s", "synthwave", "pop", "iconic", "retro"]
            
        default:
            //Aquí lanzara un error mas adelante
            description = "Ha ido por default"
            tags = []
        }
        
    }
        
    }

//styleList(name: "ChillVibes")

    

