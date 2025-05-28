class ProfesionalVinculado {
  const property universidad
  method provincia() = [universidad.esDeProvincia()]
  method honorarios() = universidad.honorariosRec()

  method cobrar(unImporte){
    universidad.recibirDonacion(unImporte / 2)
  }
}

class ProfesionalAsociado {
 var property universidad
 method provincia() = ["Entre Rios", "Corrientes", "Santa Fe"]
 method honorarios() = 3000 

 method cobrar(unImporte){
  asociacionProfesionalesLitoral.recibirRecaudacion(unImporte)
 }

}

class ProfesionalLibre {
var property universidad
const property provincia = []
var property honorarios
var totalRecaudado = 0

method cobrar(unImporte){
  totalRecaudado + unImporte
}
method pasarDinero(unProfesional, unImporte){
  totalRecaudado - unImporte and unProfesional.cobrar(unImporte)
}
method agregarProvincia(unaProvincia) {
  provincia.add(provincia)
}
}


object asociacionProfesionalesLitoral {
   var totalRecaudado = 0

  method recibirRecaudacion(unImporte){
    totalRecaudado + unImporte
  }

}

