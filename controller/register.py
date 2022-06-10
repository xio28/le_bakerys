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
                                        render_kw={'class': text_class})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.EqualTo('password_confirm', message='Las contraseñas no coinciden'),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    password_confirm = PasswordField([
                                        validators.InputRequired()
                                    ],
                                        render_kw={'class': text_class})
    c_name = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    surnames = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    nid = StringField([
                                        validators.InputRequired()
                                    ],
                                        render_kw={'class': text_class})
    contact = StringField([
                                        validators.Length(min=9, max=9, message="Longitud incorrecta"), 
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    email = EmailField([
                                        validators.InputRequired(),
                                        validators.Email()
                                    ],
                                        render_kw={'class': text_class})
    address = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    postal_code = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    city = StringField([
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': text_class})
    privacy_policy = BooleanField([
                                        validators.InputRequired()
                                    ],
                                    render_kw={'class': policy})
    save = SubmitField('Guardar')

