package pillserver

import org.bson.types.ObjectId

class Pacientes {
    ObjectId id
    String paciente
    String medico

    List<Alarmas> alarmas
    static embedded = ['alarmas']


    static mapping = {
        collection "Pacientes"
        database "pastillero"

    }

    static constraints = {
    }
}
