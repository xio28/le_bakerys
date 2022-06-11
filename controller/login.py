from wtforms import Form, BooleanField, StringField, SubmitField, TextAreaField, EmailField, validators

class ContactForm(Form):

    c_name = StringField('Nombre', [
                                        validators.InputRequired(message="Campo vacío.")
                                    ],
                                    render_kw={'class': 'g-row-2 g-col-2'})
    email = EmailField('Email', [
                                        validators.InputRequired(message="Campo vacío."),
                                        validators.Email(message="Email incorrecto.")
                                    ],
                                    render_kw={'class': 'g-row-2 g-col-3'})
    privacy_policy = BooleanField([
                                        validators.InputRequired(message="Campo vacío.")
                                    ],
                                    render_kw={'class': ''})
    save = SubmitField('Guardar', 
                                    render_kw={'class': 'g-row-13 g-col-2'})
