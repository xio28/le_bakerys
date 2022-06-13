from xml.dom import ValidationErr
from model.usuarios import *
from wtforms import Form, PasswordField, SubmitField, EmailField, validators, ValidationError


def validate_email(form, field):
    if field.data != Clientes.check_credentials(field.data):
        raise ValidationError('El email no está registrado. Debe registrarse.')

def validate_pass(form, field):
    if field.data != Clientes.get_password(field.data):
        raise ValidationError('La contraseña es incorrecta.')
class LogInForm(Form):

    email = EmailField([
                                        validators.InputRequired(message="Campo vacío."),
                                        validators.Email()
                                    ],
                                    render_kw={'class': '', 'placeholder': 'Email'})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': '', 'placeholder': 'Contraseña'})
    save = SubmitField('Log In')
