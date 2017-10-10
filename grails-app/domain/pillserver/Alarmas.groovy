package pillserver

class Alarmas {
String nombre
String diaDeSemana
String hora
String minutos

    static mapping = {
        collection "Pacientes"
        database "pastillero"
    }

    static constraints = {
    }
}
