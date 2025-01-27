//
//  Partida.swift
//  PiedraPapelTijera
//
//  Created by Ana on 27/1/25.
//

import Foundation

struct Partida{
    let jugador1: Jugador
    let jugador2: Jugador
    
    var winner: Jugador = Jugador(tipo: TipoJugador.person)//es un de tipo person con jugada inválida
    var isDraw: Bool = false
    
    mutating func fight(){
        winner = combat(userChoice: jugador1, computerChoice: jugador2)
    }
}
