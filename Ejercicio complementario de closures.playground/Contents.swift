import Cocoa
import Foundation

/*
Ejercicio: Simulación de Proceso de Entrega de Ordenes

Objetivo:
Implementar un sistema que simula el flujo de trabajo de un restaurante para procesar y entregar órdenes utilizando Structs y Closures. Varias entidades (Camarero, Cocinero y Repartidor) interactúan en este sistema y transicionan entre diferentes etapas (preparación y entrega) usando retardos para simular el tiempo requerido para cada operación.

Requisitos:
1. Crear una estructura `Orden` que represente un pedido con propiedades para un identificador único y una descripción de la orden.
2. Implementar un `Camarero`que tiene que hacer el pedido. Se supone que es inmediato
2. Implementar un `Cocinero` que tiene la responsabilidad de preparar pedidos. Cada pedido tarda 5 segundos en completarse
3. Implementar un `Repartidor` que maneja la entrega de pedidos. El repartidor tarda 3 segundos en llevar el pedido
4. Probar el flujo completo con al menos una orden, asegurando que las operaciones de preparación y entrega se ejecutan coherentemente.
5. Cada vez que uno de los trabajadores, sea camarero, cocinero o repartidor, ejecuta su acción, debe imprimirse un mensaje por pantalla. Por ejemplo:

 El camarero hace el pedido Pizza Margherita.
 Cocinero está preparando el pedido Pizza Margherita.
 El pedido Pizza Margherita está listo.
 Repartidor ha recogido el pedido Pizza Margherita.
 El pedido Pizza Margherita ha sido entregado.
 Proceso completado para el pedido: Pizza Margherita
 
Instrucciones:
1. Usa los structs `Orden`, `Camarero`, `Cocinero` y `Repartidor` para modelar el sistema.
*/


struct Orden {
    let id: Int
    let description: String
}


struct Camarero {
    
    
    func pedirOrden(pedido:Orden,completado: (Orden) -> Void){
        print("El camarero hace el pedido \(pedido.description)")
        completado(pedido)
    }
}

struct Cocinero {
    
    
    func prepararOrden(pedido:Orden,completado: (Orden) -> Void){
        print("Cocinero está preparando el pedido \(pedido.description).")
        sleep(UInt32(5))
        print("El pedido \(pedido.description) está listo")
        completado(pedido)
    }
}

struct Repartidor {
    
    
    func repartirPedido(pedido:Orden,completado: (Orden) -> Void){
        print("Repartidor ha recogido el pedido \(pedido.description) ")
        sleep(UInt32(3))
        print("El pedido \(pedido.description) ha sido entregado.")
        completado(pedido)
    }
    
}

let pedido = Orden(id: 1, description: "pizza")

let camarero = Camarero()
let cocinero = Cocinero()
let repartidor = Repartidor()

camarero.pedirOrden(pedido: pedido) { pedidodecamarero in
    cocinero.prepararOrden(pedido: pedidodecamarero) { peidoDeCocinero in
        repartidor.repartirPedido(pedido: peidoDeCocinero) { pedido in
            print("se ha finalizado el \(pedido.description) ")
        }
    }
}

//DispatchQueue.global().asyncAfter(deadline: .now() + 5.0){
//    
//}
    




