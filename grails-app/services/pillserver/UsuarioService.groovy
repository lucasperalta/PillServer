package pillserver

import grails.gorm.transactions.Transactional

@Transactional
class UsuarioService {

    def alta(Usuarios user,Alarmas alarma,String pacienteNombre) {
        def paciente = Pacientes.findByPaciente(pacienteNombre)

        if(paciente) {

            paciente.getAlarmas().add(alarma)

            paciente.save(failOnError: true)
        }else{
            paciente =new Pacientes()
            paciente.setMedico(user.getUsuario())
            paciente.setPaciente(pacienteNombre)
            List<Alarmas> alarmas = new ArrayList<Alarmas>()
            alarmas.add(alarma)
            paciente.setAlarmas(alarmas)
            paciente.save(failOnError: true)

        }
        return paciente
    }
}
