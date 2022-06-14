from xml.dom import ValidationErr
from model.usuarios import *
from wtforms import Form, PasswordField, SubmitField, EmailField, validators, ValidationError


class LogInForm(Form):

    email = EmailField([
                                        validators.InputRequired(message="Campo vacío."),
                                        validators.Email(),
                                    ],
                                    render_kw={'placeholder': 'Email'})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.InputRequired(),
                                    ], 
                                        render_kw={'placeholder': 'Contraseña'})
    save = SubmitField('Log In')
