package pillserver

class Pacientes {\
    String id
    String paciente
    String medico
    List alarmas



    static mapping = {
        collection "Pacientes"
        database "pastillero"
    }

    static constraints = {
    }
}
