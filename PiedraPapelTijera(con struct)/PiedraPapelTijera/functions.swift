//
//  functions.swift
//  PiedraPapelTijera
//
//  Created by Ana on 27/1/25.
//

import Foundation

// MARK: - Model

enum Move:Int{
    case rock = 0
    case paper = 1
    case scissors = 2
    case quit = 3
    case invalid = -1
}

enum TipoJugador{
    case person
    case computer
}
    
// MARK: - Impresion pantalla

///Función que imprime las opciones por pantalla
func toPrint(){
    print("Select an option")
    print("0 - Rock")
    print("1 - Paper")
    print("2 - Scissors")
    print("3 - Quit")
    print("-----------")
}
// MARK: - Read User Choice

///Función que lee el imput del usuario y lo devuelve en forma de entero
///Además se asegura de que no se introduzcan carácteres inválidos
func readUserChoice()->Move{
    toPrint()
    let userChoice:Move
    let userChoiceRead = readLine()
    
    //Desempaquetamos el imput
    guard let unwrappedChoice = userChoiceRead else{
        print("No has escrito nada")
        return .invalid
    }
    //Nos aseguramos de que sea un número
    guard let userChoiceInt = Int(unwrappedChoice) else{
        print("No has escrito un número")
        return .invalid
    }
    //Nos aseguramos de que sea un número del 0 al 3
    guard (0...3).contains(userChoiceInt) else{
        print("No has escrito un número válido")
        return .invalid
    }
    //Pasar el número entero a un tipo Move
    userChoice = Move(rawValue: userChoiceInt)!
    
    if userChoice == .quit{
        print("Gracias por jugar! Adiós")
    }else{
        print("Has elegido \(Move(rawValue: userChoiceInt)!)\n")
    }
    
    
    return userChoice
}

// MARK: - IsExit

///Predicado que devuelve True en caso de que el usuario haya pulsado la opción de salida
func isExit(userChoice: Jugada)->Bool{
    return userChoice.tipo == Move.quit
}
// MARK: - Elección de la máquina

///Función que genera un número aleatorio para así atribuirle una jugada a la máquina

func generateComputerChoice()->Move{
    let randomInt = Int.random(in:0...2)
    let computerChoice = Move(rawValue: randomInt) ?? Move.invalid
    print("El ordenador ha elegido \( computerChoice)\n")
    return computerChoice
    
}
// MARK: - Combate, comparativa

///Función que compara las elecciónes del jugador y del ordenador.
///Devuelve una tupla con el ganador y su movimiento o el empate y el movimiento que lo ha generado
///Contiene un foceUnWrap ya que nos hemos asegurado anteriormente de que el va a recibir un entero tanto en ReadUserChoce como en computer choice
func combat(userChoice user: Jugador, computerChoice computer: Jugador)->Jugador{
    var winner: Jugador
    
  
    switch user{
    case let x where x.jugadaActual.tipo ==
        //Realmente aquí es donde me quede bloqueada y no sabía muy bien qué hacer
        computer.jugadaActual.tipo:
        winner = x
        winner.jugadaActual.isDraw = true
    case let x where x.jugadaActual.tipo == Move.paper && (computer.jugadaActual.tipo == Move.rock || computer.jugadaActual.tipo != Move.scissors):
        winner = user
        winner.jugadaActual.isDraw = false
    case let x where x.jugadaActual.tipo  == Move.rock && (computer.jugadaActual.tipo  == Move.scissors || computer.jugadaActual.tipo != Move.paper):
        winner = user
        winner.jugadaActual.isDraw = false
    case let x where x.jugadaActual.tipo  == Move.scissors && (computer.jugadaActual.tipo  == Move.paper || computer.jugadaActual.tipo != Move.rock):
        winner = user
        winner.jugadaActual.isDraw = false
    default:
        winner = computer
        winner.jugadaActual.isDraw = false
    }
    return winner
}
// MARK: - Imprimir ganador

///Función que imprime el ganador por pantalla así como la jugada ganadora. En caso de empate devuelve dicha opción con la jugada de ambos participantes
/// * Parámetro: tupla con el ganador(String) y el movimiento realizado

func printWinner(winner: Jugador){
    let winnerStr = winner.tipo
    let jugada = (String(describing: winner.jugadaActual.tipo))
    if winner.jugadaActual.isDraw{
        print("Es empate con \(jugada)\n")
    }else{
        print("El ganador es \(winnerStr), con \(jugada)\n")
    }
    
    
}
// MARK: - Game

///Función del flujo del juego.

func game(){
    
    
    var userChoice: Jugador = Jugador(tipo: .person)
    userChoice.generateMove()
    
    while !isExit(userChoice: userChoice.jugadaActual){
        var computerChoice = Jugador(tipo: .computer)
        computerChoice.generateMove()
        var partida = Partida(jugador1: userChoice, jugador2: computerChoice)
        partida.fight()
        printWinner(winner: partida.winner)
        userChoice.generateMove()
        
    }
    
}
