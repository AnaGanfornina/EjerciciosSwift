//
//  main.swift
//  PiedraPapelTijera
//
//  Created by Ana on 23/1/25.
//

import Foundation

// MARK: - Model

enum Move:Int{ // FIXME: Estilo Move: Int {  (espacio entre dos puntos e Int)
    case rock = 0
    case paper = 1
    case scissors = 2
    case quit = 3
}
    
// MARK: - Impresion pantalla

///Función que imprime las opciones por pantalla
func toPrint(){ // FIXME: considera usar un nombre más descriptivo como printMenuOptions(). Te dejo una opción abajo con un formato más legible y válido en Swift
    print("Select an option")
    print("0 - Rock")
    print("1 - Paper")
    print("2 - Scissors")
    print("3 - Quit")
    print("-----------")
}

func printMenuOptions() {
    print("""
    Select an option
    0 - Rock
    1 - Paper
    2 - Scissors
    3 - Quit
    -----------
    """)
}

// MARK: - Read User Choice

///Función que lee el imput del usuario y lo devuelve en forma de entero
///Además se asegura de que no se introduzcan carácteres inválidos
func readUserChoice()->Int{ // FIXME: Si usas -1 para el caso en el que haya un error, lo mejor es utilizar un opcional: func readUserChoice() -> Int? {
    toPrint()
    let userChoice = readLine()
    
    //Desempaquetamos el imput
    guard let unwrappedChoice = userChoice else{
        print("No has escrito nada")
        return -1 // FIXME: Aquí cada vez que haya un caso como este que invalide el input del usuario, deberías devolver nil
    }
    //Nos aseguramos de que sea un número
    guard let userChoiceInt = Int(unwrappedChoice) else{
        print("No has escrito un número")
        return -1
    }
    //Nos aseguramos de que sea un número del 0 al 3
    guard (0...3).contains(userChoiceInt) else{
        print("No has escrito un número válido")
        return -1
    }
    
    // FIXME: Las funciones deben hacer una sola cosa, por lo que deberías separar esto de aquí (que no tiene nada que ver con leer la elección del usuario) de la elección del usuario. Aquí deberías devolver el valor que ha introducido el usuario y dejar que la función que llama a esta se encargue de decidir si es la opción de salida o no además de imprimir el mensaje
    if userChoiceInt == 3{
        print("Gracias por jugar! Adiós")
    }else{
        print("Has elegido \(Move(rawValue: userChoiceInt)!)\n")
    }
    
    
    return userChoiceInt
}

// MARK: - IsExit

///Predicado que devuelve True en caso de que el usuario haya pulsado la opción de salida
func isExit(userChoice: Int)->Bool{ // FIXME: Estilo: deja espacios entre los tipos de retorno: func isExit(userChoice: Int) -> Bool {
    return userChoice == Move.quit.rawValue // Buen uso de rawValue
}
// MARK: - Elección de la máquina

///Función que genera un número aleatorio para así atribuirle una jugada a la máquina
///Contiene un ForceUnwrap ya que es seguro que la máquina elegira un numero del 0 al 2
func generateComputerChoice()->Int{
    let randomInt = Int.random(in:0...100)
    let computerChoice = randomInt
    // print("El ordenador ha elegido \(Move(rawValue:computerChoice)!)\n") // FIXME: La diferencia es que la de abajo con describing, si Move(rawValue: computerChoice) es nil, no la desempaqueta forzosamente. Este código puede causar un error que rompa el programa. Por lo tanto, es mejor usar la versión que pones a continuación porque si lo de arriba es nil, imprime nil.
    
    // Prueba a poner en la línea de arriba let randomInt = Int.random(in:0...100). Lo más probable es que computerChoice no sea válido y cuando se hace \(Move(rawValue:computerChoice)!) se genera el siguiente error PiedraPapelTijera/main.swift:90: Fatal error: Unexpectedly found nil while unwrapping an Optional value. Prueba con tu print y con el print de describing

    print("El ordenador ha elegido \(String(describing: Move(rawValue:computerChoice)))")  // Si Move(rawValue: computerChoice) es nil imprime esto: El ordenador ha elegido nil
    return computerChoice
    
}
// MARK: - Combate, comparativa

///Función que compara las elecciónes del jugador y del ordenador.
///Devuelve una tupla con el ganador y su movimiento o el empate y el movimiento que lo ha generado
///Contiene un foceUnWrap ya que nos hemos asegurado anteriormente de que el va a recibir un entero tanto en ReadUserChoce como en computer choice
func combat(userChoice user: Int, computerChoice computer: Int)->(String, Move){ // FIXME: nombre poco descriptivo -> vfunc determineRoundOutcome(userChoice user: Int, computerChoice computer: Int) -> (String, Move). Además, el retorno de la tupla es mejor nombrarlo: (winner: String, move: Move) igual que haces más abajo cuando declaras la variable

    var winner: (winner:String,move:Move)
    
    // FIXME: Con respecto a la duda switch vs if, queda más claro el switch. En cada uno de los casos, puedes retornar directamente la tupla:
    /*
     switch user {
     case let x where x == computer:
         return ("empate", Move(rawValue: computer)!)
     */
    
    // FIXME: El problema de este swithc es que mezclas empate que es un resultado con el ganador. Puedes decir el resultado: User gana, computer gana, empata. De esta manera tienes de retorno la tupla (combatResult :String, move: Move)
    switch user{
    case let x where x == computer:
        winner = ("empate", Move(rawValue: computer)!)
    case let x where x == Move.paper.rawValue && (computer == Move.rock.rawValue || computer != Move.scissors.rawValue):
        winner = ("user", Move.paper)
    case let x where x == Move.rock.rawValue && (computer == Move.scissors.rawValue || computer != Move.paper.rawValue):
        winner = ("user", Move.rock)
    case let x where x == Move.scissors.rawValue && (computer == Move.paper.rawValue || computer != Move.rock.rawValue):
        winner = ("user", Move.scissors)
    default:
        winner = ("computer", Move(rawValue: computer)!)
    }
    /*
     //Esta fue otra opción pero no se si es mas claro con el switch
    if user == computer {
        winner = ("empate", Move(rawValue: computer)!)
        
    }else if user == Move.paper.rawValue && (computer == Move.rock.rawValue || computer != Move.scissors.rawValue) {
        winner = ("user", Move.paper)
        
    }else if user == Move.rock.rawValue && (computer == Move.scissors.rawValue || computer != Move.paper.rawValue){
        winner = ("user", Move.rock)
        
    }else if user == Move.scissors.rawValue && (computer == Move.paper.rawValue || computer != Move.rock.rawValue){
        winner = ("user", Move.scissors)
        
    }else{
        winner = ("computer", Move(rawValue: computer)!)
    }
     */
    return winner
}
// MARK: - Imprimir ganador

///Función que imprime el ganador por pantalla así como la jugada ganadora. En caso de empate devuelve dicha opción con la jugada de ambos participantes
/// * Parámetro: tupla con el ganador(String) y el movimiento realizado

func printWinner(winner: (String, Move)){
    if winner.0 == "user" || winner.0 == "computer"{
        print("El ganador es \(winner.0), con \(winner.1)\n")
    }else{
        print("Es un empate habeis elegido \(winner.1)")
    }
}
// MARK: - Game

///Función del flujo del juego.

func game(){
    
    var userChoice = readUserChoice()
    
    while !isExit(userChoice: userChoice){ // FIXME: Bien gestionado el bucle y buena separación de responsabilidades, aunque las opciones las imprmiría justo antes de readUserChoice y no dentro de la función. El resto muy bien
        let computerChoice =  generateComputerChoice()
        let winner = combat(userChoice: userChoice, computerChoice: computerChoice)
        printWinner(winner: winner)
        userChoice = readUserChoice()
    }
    
}

// MARK: - Ejecución del juego
func main(){
    game()
}

main()


