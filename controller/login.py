from xml.dom import ValidationErr
from model.usuarios import *
from wtforms import Form, PasswordField, SubmitField, EmailField, validators


class LogInForm(Form):

    email = EmailField("", [
                                        validators.InputRequired(),
                                        validators.Email(),
                                    ],
                                    render_kw={'placeholder': 'Email'})
    password = PasswordField("", [
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Contraseña'})
    save = SubmitField('Log In')
