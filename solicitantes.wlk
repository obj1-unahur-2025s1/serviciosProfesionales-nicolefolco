class Persona {
     var property provincia

     method puedeSerAtendida(unProfesional) {
        return unProfesional.provincia().contains(provincia) 
     }

}

class Institucion {
    var property universidadesReconocidas = []
    
    method reconocerUniversidad(unaUni){
        universidadesReconocidas.add(unaUni)
    }
    method puedeSerAtendida(unProfesional){
        return universidadesReconocidas.contains(unProfesional.universidad())
    }
}

class Club {
    var property provincias = #{}

    method puedeSerAtendida(unProfesional){
        return not provincias.intersection(unProfesional.provincia().asSet()).isEmpty()
    }
}