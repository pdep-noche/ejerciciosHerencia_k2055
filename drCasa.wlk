class Persona {
    var property temperatura
    var property cantCelulas

    const property enfermedades = []

    method modificarTemp(cantidad) {
        temperatura = 45.min(cantidad + temperatura) 
    }

    method modificarCantCelulas(cantidad)  {
        cantCelulas = 0.max(cantCelulas  + cantidad)}
    
    method contraer(enfermedad) {
        enfermedades.add(enfermedad)    
     }

    
}

class Enfermedad {
    var property cantCelulasQueAmenaza

    method afectarA(persona)

    method esAgresiva(persona) 
}


class Autoinmune  inherits Enfermedad{

    var property  cantDias = 0
  
    override method esAgresiva(persona) = cantDias > 30

    override method afectarA(persona) {
        persona.modificarCantCelulas(-cantCelulasQueAmenaza)
        cantDias += 1
    }
}


class Infecciosa inherits Enfermedad {

    method reproducirte()  {
       cantCelulasQueAmenaza *= 2 
    }

    override method esAgresiva(persona) = cantCelulasQueAmenaza > persona.cantCelulas() *0.0001

    override method afectarA(persona) {
        persona.modificarTemp( cantCelulasQueAmenaza * 0.0001)   
      
    }
    
    }


