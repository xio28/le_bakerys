from wtforms import Form, PasswordField, SubmitField, EmailField, validators

class ContactForm(Form):

    email = EmailField([
                                        validators.InputRequired(message="Campo vacío."),
                                        validators.Email(message="Email incorrecto.")
                                    ],
                                    render_kw={'class': '', 'placeholder': 'Email'})
    password = PasswordField([
                                        validators.Length(min=10, max=60),
                                        validators.InputRequired()
                                    ], 
                                        render_kw={'class': '', 'placeholder': 'Contraseña'})
    save = SubmitField('Log In')
