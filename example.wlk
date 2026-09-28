class Carrera {
 const property materias   = #{}
 const property inscriptos = #{}
}

class Materia {
  const property carrera
  const property estudiantesInscriptos = #{}
  const property listaEspera           = #{}
  const property cupo 
  const property requisitos

  method incribir(estudiante) {
    estudiante.validarPuedeInscribirse(self)
    self.validarCupo(estudiante)
  }

  method validarCupo(estudiante) {
    if (not hayCupo()) {
      listaEspera.add(estudiante)
    }
    else {
      estudiantesInscriptos.add(estudiante)
    }
  }

  method hayCupo() {
    return estudiantesInscriptos < cupo
  }
}

class Estudiante {
  const property aprobadas = #{}

  method validarPuedeInscribirse(estudiante) {
    self.validarCarrera()
    self.validarAprobada()
    self.validarInscripto()
    self.validarCorrelativas()
  }

  method validarCarrera() {
  
  }

  method validarAprobada() {
    
  }

  method validarInscripto() {
    
  }

  method validarCorrelativas() {
    
  }

  method registrarAprobacion(materia, nota) {
    
  }
}

class Aprobacion {
  const property materia
  const property nota 
}