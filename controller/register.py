from wtforms import Form, BooleanField, StringField, PasswordField, SubmitField , validators, EmailField, ValidationError

def checkUsername(form, field):
    username_query = ""

    # if field.data

class RegistrationForm(Form):
    text_class = 'input-gen'
    policy = 'check-policy'

    username = StringField([
                                        validators.Length(min=4, max=25, message="Longitud incorrecta"),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': 'fa i-user', 'placeholder': 'Usuario'})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.EqualTo('password_confirm', message='Las contraseñas no coinciden'),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Contraseña'})
    password_confirm = PasswordField([
                                        validators.InputRequired()
                                    ],
                                        render_kw={'placeholder': 'Confirmar contraseña'})
    email = EmailField([
                                        validators.InputRequired(),
                                        validators.Email()
                                    ],
                                        render_kw={'placeholder': 'Correo'})
    c_name = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Nombre'})
    surname1 = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Primer apellido'})
    surname2 = StringField(             render_kw={'placeholder': 'Segundo apellido'})
    nid = StringField([
                                        validators.InputRequired()
                                    ],
                                        render_kw={'placeholder': 'DNI'})
    contact = StringField([
                                        validators.Length(min=9, max=9, message="Longitud incorrecta"), 
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Telefono'})
    address = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Dirección'})
    postal_code = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'CP'})
    city = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Localidad'})
    privacy_policy = BooleanField([
                                        validators.InputRequired()
                                    ])
    save = SubmitField('Guardar')

