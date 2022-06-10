from email_validator import EmailNotValidError
from wtforms import Form, BooleanField, StringField, PasswordField, SubmitField , validators, EmailField, ValidationError

def checkUsername(form, field):
    username_query = ""

    # if field.data 

def validatePhone(form, field):
    print(type(field.data))
    # if len(field.data) == 9:
    #     pass
    # else:
    #     raise ValidationError('Field must be less than 50 characters')
class RegistrationForm(Form):
    text_class = 'input-gen'
    policy = 'check-policy'

    username = StringField([
                                        validators.Length(min=4, max=25, message="Longitud incorrecta"),
                                        validatePhone,
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf007; Usuario'})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.EqualTo('password_confirm', message='Las contraseñas no coinciden'),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf023; Contraseña'})
    password_confirm = PasswordField([
                                        validators.InputRequired()
                                    ],
                                        render_kw={'placeholder': '&#xf023; Confirmar contraseña'})
    email = EmailField([
                                        validators.InputRequired(),
                                        validators.Email()
                                    ],
                                        render_kw={'placeholder': '&#xf0e0; Correo'})
    c_name = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf044; Nombre'})
    surnames = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf044; Apellidos'})
    nid = StringField([
                                        validators.InputRequired()
                                    ],
                                        render_kw={'placeholder': '&#xf044; DNI'})
    contact = StringField([
                                        validators.Length(min=9, max=9, message="Longitud incorrecta"), 
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf095; Telefono'})
    address = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf05b; Dirección'})
    postal_code = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf041; CP'})
    city = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': '&#xf041; Localidad'})
    privacy_policy = BooleanField([
                                        validators.InputRequired()
                                    ],
                                    render_kw={'class': policy})
    save = SubmitField('Guardar')

