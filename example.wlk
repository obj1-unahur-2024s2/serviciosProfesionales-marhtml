class Universidad {
  const property provincia
  var property honorarios  
}

class AsocAUni {
  const property universidad
  method honorarios() {
    return universidad.honorarios()
  }
  method puedeTrabajar() {
    return [universidad.provincia()]
  }
}

class AsocALitoral {
  const property universidad  
  method honorarios() = 3000
  method puedeTrabajar() = ["Entre Rios","Santa Fe","Corrientes"] 
}

class Libres {
  const property universidad
  var property puedeTrabajar 
  var property honorarios 

}

class Empresa {
  const property profesionales = []
  var property honorariosRef
  method agregarProf(unProf) {
    profesionales.add(unProf)
  }
  method cuantos(unaUni) {
    return profesionales.count({p => p.universidad() == unaUni})
  }
  method profCaros() {
    return profesionales.filter({p => p.honorarios() > honorariosRef})
  }
  method unisFormadoras() {
    return profesionales.map({p => p.universidad()}).asSet() // convierte lista en conjunto, no hay elem repetidos
  }
  method masBarato() {
    return profesionales.min({p => p.honorarios()})
  }
  method esAcotada() {
    return not profesionales.any({p => p.puedeTrabajar().size() > 3})
  }
  method puedeSatisfacer(unSolicitante) {
    return profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})
  }
}