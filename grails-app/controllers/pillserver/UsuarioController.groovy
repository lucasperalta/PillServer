package pillserver



class UsuarioController {


    def  usuarioService
    def index() { }


    def login(){
        System.out.println(params.username)
            System.out.println(params.password)


        def usuario = Usuarios.findByUsuarioAndPassword(params.username,params.password)
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
        System.out.println(params.username)

        def paciente = Pacientes.findByPaciente(params.paciente)
         respond paciente, formats: [ 'json']


    }

    def alta(){
        System.out.println(params.paciente)
        Usuarios user =session.getAttribute("user")
        Alarmas alarma = new Alarmas()
        alarma.setNombre("mejoralin")
        alarma.setHora("24")
        alarma.setMinutos("30")
        alarma.setDiaDeSemana("1,2,6")
        usuarioService.alta(user,alarma,"Romeo")

        redirect(action: "login",  params: [username: user.getUsuario(),password:user.getPassword()])




    }

}

