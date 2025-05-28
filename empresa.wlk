class Empresa {
    const property empleados = []
    var property honorarioRef
    var clientes = []

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
        return empleados.any({e => unSolicitante.puedeSerAtendida(e)})
     }

    method darServicio(unSolicitante){
        if(self.puedeSatisfacer(unSolicitante)){
            self.error("no puede ser atendido")
            const profesionalQueAtiende = empleados.filter({p => unSolicitante.puedeSerAtendida(p)}).anyOne()
            profesionalQueAtiende.cobrar(profesionalQueAtiende.honorariosPorHora())
            clientes.add(unSolicitante)
        } 
    }
}

