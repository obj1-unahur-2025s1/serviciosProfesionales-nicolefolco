class ProfesionalUniversitario {
  const property universidad
  method provincia() = [universidad.esDeProvincia()]
  method honorarios() = universidad.honorariosRec()
}

class ProfesionalLitoral {
 var property universidad
 method provincia() = ["Entre Rios", "Corrientes", "Santa Fe"]
 method honorarios() = 3000 
}

class ProfesionalLibre {
var property universidad
const property provincia = []
var property honorarios
method agregarProvincia(unaProvincia) {
  provincia.add(provincia)
}
}

