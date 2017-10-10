package pillserver
import org.bson.types.ObjectId

class Usuarios {

    String id
     String usuario
     String email
     String nombre
     String password


    static mapping = {
        collection "Usuarios"
        database "pastillero"
    }

    @Override
    public String toString() {
        return "Usuarios{" +
                "usuario:'" + usuario + '\'' +
                ", email:'" + email + '\'' +
                ", nombre:'" + nombre + '\'' +
                ", password:'" + password + '\'' +
                '}';
    }
}
