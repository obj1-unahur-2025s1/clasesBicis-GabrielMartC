import accesorios.*
class Bici{
  const rodado
  const largo
  const marca //modelamos con un string
  const accesorios = []

  method altura() = rodado * 2.5 + 15

  method velocidadCrucero() = if (largo > 120) rodado + 6 else rodado + 2

  method carga() = accesorios.sum({acc => acc.carga()})

  method peso() = rodado/2 + self.pesoAccesorios()

  method pesoAccesorios() =  accesorios.sum({acc => acc.peso()})

  method tieneLuz() = accesorios.any({acc => acc.esLuminoso()})

  method agregarAccesorio(unAccesorio){
    accesorios.add(unAccesorio)
  }

  method quitarAccesorio(unAccesorio){
    accesorios.remove(unAccesorio)
  }

  method cantidadAccesoriosLivianos() = accesorios.count({acc => acc.peso() < 1})

}


