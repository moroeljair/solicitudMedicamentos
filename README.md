# ¿Qué problema resuelve? 
El sistema tiene una lista de medicamentos con su nombre, descripción y stock.
Existen cuatro roles: administrador, enfermero, farmacéutico y paciente.
## ¿Qué hace cada rol? 
- Administrador: Puede crear usuarios (enfermero, farmacéutico o administrador); puede gestionar a los usuarios (eliminar/editar); editar su perfil.
- Enfermero: Puede realizar un pedido al farmacéutico, ingresando el ID del paciente y la lista de medicamentos solicitados.
- Farmacéutico: El farmacéutico tiene la lista de peticiones que necesita ejecutar. Una vez que la lista esté lista, cambia de estado a 'entregar'. Una vez se entregue la petición, cambia de estado a 'entregado'.
- Paciente: Paciente: Puede ver las recetas médicas.
## Ejemplos de usuarios: 
- Administrador (correo: sebastian1@gmail.com, clave: Asdf1234)
- Enfermero (correo: ejemplo2@gmail.com, clave: Asdf1234)
- Farmacéutico (correo: enfermero@gmail.com, clave: Asdf1234)
- Paciente (correo: jaircliente@gmail.com, clave: Asdf1234)

#Tecnologías utilizadas:
- Flask
- HTML
- CSS
- Python
- JavaScript

# Librerias utilizadas: 
- Flask
- make_response
- render_template
- request
- redirect
- url_for
- flash
- session
- escape
- MySQL (desde flaskext.mysql)
- bcrypt

## Para ejecutar el programa, utiliza el siguiente comando: 
python app.py
