from wtforms import Form, PasswordField, SubmitField, EmailField, validators

class ContactForm(Form):

    email = EmailField('Email', [
                                        validators.InputRequired(message="Campo vacío."),
                                        validators.Email(message="Email incorrecto.")
                                    ],
                                    render_kw={'class': 'g-row-2 g-col-3'})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'placeholder': 'Contraseña'})
    save = SubmitField('Log In')
