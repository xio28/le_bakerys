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

    username = StringField('Nombre de usuario ', [
                                        validators.Length(min=4, max=25, message="Longitud incorrecta"),
                                        validatePhone,
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    password = PasswordField('Contraseña ', [
                                        validators.Length(min=10, max=60),
                                        validators.EqualTo('password_confirm', message='Las contraseñas no coinciden'),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    password_confirm = PasswordField('Repita la contraseña ', [
                                        validators.InputRequired()
                                    ],
                                        render_kw={'class': text_class})
    c_name = StringField('Nombre ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    surname1 = StringField('Primer apellido ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    surname2 = StringField('Segundo apellido ', 
                                        render_kw={'class': text_class})
    nid = StringField('DNI ', [
                                        validators.InputRequired()
                                    ],
                                        render_kw={'class': text_class})
    contact = StringField('Número de teléfono ', [
                                        validators.Length(min=9, max=9, message="Longitud incorrecta"), 
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    email = EmailField('Email ', [
                                        validators.InputRequired(),
                                        validators.Email()
                                    ],
                                        render_kw={'class': text_class})
    street = StringField('Calle/Plaza/Avenida ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    s_num = StringField('Número ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    s_story = StringField('Piso ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    postal_code = StringField('Código postal ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    city = StringField('Localidad ', [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    privacy_policy = BooleanField('Acepto la política de privacidad.', [
                                        validators.InputRequired()
                                    ],
                                    render_kw={'class': policy})
    save = SubmitField('Guardar')

