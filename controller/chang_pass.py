from wtforms import Form, BooleanField, StringField, PasswordField, SubmitField , validators, EmailField, FileField, ValidationError

class ChangePassForm(Form):

    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.EqualTo('password_confirm', message='Las contraseñas no coinciden'),
                                        validators.InputRequired()
                                    ])
    password_confirm = PasswordField([
                                        validators.InputRequired()
                                    ])
    save = SubmitField('Cambiar')
