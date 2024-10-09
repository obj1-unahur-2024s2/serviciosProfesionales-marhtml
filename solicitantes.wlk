import example.*

class SolicitantePersona {
    var property provincia
    method puedeSerAtendidoPor(unProf) {
        return unProf.puedeTrabajar().contains(provincia)
    }
}

class SolicitanteInstitucion {
    var property universidades
    method puedeSerAtendidoPor(unProf) {
        return universidades.contains(unProf.universidad())
    }
}

class SolicitanteClub {
    var property provincias 
    method puedeSerAtendidoPor(unProf) {
        return provincias.asSet().intersection(unProf.puedeTrabajar().asSet()) != 0
// club.any({c => unProf.provincia().contains(c)})
    } 

}

