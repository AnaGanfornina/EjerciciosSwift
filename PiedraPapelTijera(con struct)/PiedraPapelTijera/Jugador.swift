//
//  Jugador.swift
//  PiedraPapelTijera
//
//  Created by Ana on 27/1/25.
//

import Foundation

struct Jugador{
    let tipo:TipoJugador
    var jugadaActual:Jugada = Jugada(tipo: .invalid)
    
    mutating func generateMove(){
        if tipo == .person{
            jugadaActual = Jugada(tipo: readUserChoice())
        }else{
            jugadaActual = Jugada(tipo: generateComputerChoice())
        }
    }
}
