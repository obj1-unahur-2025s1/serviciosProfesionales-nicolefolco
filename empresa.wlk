class empresa {
    const property empleados = []
    var property honorarioRef

    method contratar(unProfesional) {
      empleados.add(unProfesional)
    }

    method empleadosDeUni(unaUniversidad){
        return (empleados.count({e => e.universidad() == unaUniversidad}))
    }
 
    method profesionalesCaros(){
        empleados.filter({e => e.honorarios() > honorarioRef}).asSet()
    }

    method universidadesFormadoras(){
      return  (empleados.map({ e => e.universidad()}).asSet())
    }
    
    method profesionalBarato(){
        return (empleados.min({e => e.honorarios()}))
    }
    
    method esDeGenteAcotada(){
        return (empleados.all({e => e.provincia().size() <= 3}))
    }

    method puedeSatisfacer(unSolicitante){
      empleados.any({e => unSolicitante.puedeSerAtendida(e)})
     }
}

