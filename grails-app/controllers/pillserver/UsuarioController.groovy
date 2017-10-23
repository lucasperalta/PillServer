package pillserver



class UsuarioController {


    def  usuarioService
    def index() { }


    def login(){
        System.out.println(params.username)
            System.out.println(params.password)

        def usuario= session.getAttribute("user")
        if(usuario==null){
            usuario = Usuarios.findByUsuarioAndPassword(params.username,params.password)

        }
        if (usuario!=null){
            session.setAttribute("user",usuario)
           def pacientes= Pacientes.findAllByMedico(usuario.getUsuario())
            render (view:'principal.gsp', model: [pacientes: pacientes])


        }else{
            render (view:'index.gsp')
        }


    }

    //para el json de android
    def user(){
        System.out.println(params.id)

        def paciente = Pacientes.findByPaciente(params.id)
         respond paciente, formats: [ 'json']


    }

    def alta(){
        System.out.println(params.paciente)
        Usuarios user =session.getAttribute("user")
        Alarmas alarma = new Alarmas()
        alarma.setNombre(params.pastilla)
        alarma.setHora(params.hora)
        alarma.setMinutos(params.minutos)
        alarma.setDiaDeSemana(params.dias)
        usuarioService.alta(user,alarma,params.paciente)
        forward action:'login'
      //  redirect(action: "login",  params: [username: user.getUsuario(),password:user.getPassword()])




    }

}

