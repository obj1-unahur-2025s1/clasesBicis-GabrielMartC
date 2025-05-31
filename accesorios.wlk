class Farolito{
  method peso() = 0.5

  method carga() = 0
  
  method esLuminoso() = true
}

class Canasto{
  const volumen

  method peso() = volumen / 10

  method carga() = volumen * 2
  
  method esLuminoso() = false

  /*validador no pedido en el enunciado, 
    VALIDACION a la hora de instanciar un nuevo objeto*/
  method initialize(){ 
    if (!volumen.between(1, 20)){
        self.error(volumen.toString() + " no es un valor entre 1 y 20")
    }
  }
}

class Morral{
  const largo 
  var property tieneOjoGato

  method peso() = 1.2

  method carga() = largo / 3
  
  method esLuminoso() = tieneOjoGato
}