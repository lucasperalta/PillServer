package pillserver

import com.mongodb.client.MongoCollection
import grails.converters.JSON
import org.bson.Document
import org.springframework.boot.json.GsonJsonParser


class UsuarioController {



    def index() { }


    def login(){
            System.out.println(params.username)
            System.out.println(params.password)


        def usuario = Usuarios.findByUsuarioAndPassword(params.username,params.password)
        if (usuario!=null){
            render "Nos logueamos bien..hay que poner la pagina que sigue aca"

        }else{
            render (view:'index.gsp')
        }

    }

    def user(){
        System.out.println(params.username)

        def paciente = Pacientes.findByPaciente("Juan")


                respond paciente, formats: [ 'json']



    }

}

