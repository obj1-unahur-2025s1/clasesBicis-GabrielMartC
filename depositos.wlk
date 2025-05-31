import bicicletas.*

class Deposito{
    const bicis = []

    method agregarBicis(listaDeBicis){
        if(listaDeBicis.any({b => bicis.contains(b)})){
            throw new Exception(message = "No se puede agregar dos veces una bici al deposito")
        } 

        /*validador no pedido en el enunciado, 
        verifica si por parametro no llegan bicis repetidas*/
        if(listaDeBicis.any({bici => bicis.occurrencesOf(bici) > 1})){ 
            self.error("Hay bicis duplicadas dentro de las nuevas bicis")
        }

        bicis.addAll(listaDeBicis)
    
    }

    method bicisRapidas() = bicis.filter({bici => bici.velocidadCrucero() > 25})

    
}