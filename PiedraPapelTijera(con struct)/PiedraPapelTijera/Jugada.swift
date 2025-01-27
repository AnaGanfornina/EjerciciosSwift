//
//  Jugada.swift
//  PiedraPapelTijera
//
//  Created by Ana on 26/1/25.
//

struct Jugada{
    let tipo: Move
    var isDraw = false // FIXME: aquí estás mezclando el resultado de la jugada con la jugada en sí. Si inicializas esto así, el tipo debería ser, como mínimo, una tupla de dos Moves, el del jugador y el del ordenador
}
