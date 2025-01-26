import Cocoa

//Paso 1

let nameSuper = "Super Awesome Market"
let adress = "Calle Ficticia, 123"
let yearsOfExistence = 10
let averageSatisfaction:Float  = 4.5
var isOpen:Bool = true

//Paso 2

var products = ["manzanas","plátanos","leche","huevos","pan"]
products.append("caramelos")

//Paso 3

var frequentClients = Set(["alice","bob","charlie"])
frequentClients.insert("diana")
frequentClients.remove("charlie")

var isFrequent:Bool = true

for client in frequentClients{
    if client == "Alice"{
        isFrequent = true
    }else{
        isFrequent = false
    }
}

/*
 //También lo hice como una funcion pero me daba un error que no comprendía
 
func isFrequent(name:String)->Bool{
    var result = false
    for client in frequentClients{
        if client == name{
            result =  true
        }
    }
    return result
}
//Se arregla metiendo el diccionario por parámetro
*/

// Paso 4

let weeklyOffer: (nameProduct:String,originalPrice:Float,discount:Int) = ("manzanas",2.99,20)

let discountCalculated = weeklyOffer.originalPrice * Float(weeklyOffer.discount) / 100

print(weeklyOffer.originalPrice - discountCalculated)

// Paso 5

var salesRecord:[String:Int] = ["manzanas":50,"platanos":30,"leche":20,"huevos":10]
salesRecord["manzanas"] = 55
salesRecord["huevos"] = 0

for product in salesRecord{
    print("\(product.0) = \(product.1)")
}
            
