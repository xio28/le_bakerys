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
    comment = TextAreaField('Mensaje', [
                                        validators.InputRequired(message="Campo vacío."), 
                                        validators.Length(min=10, max=1000, message="La longitud debe estar entre 10 y 1000 caracteres.")
                                        ],
                                    render_kw={'class': 'g-row-5-10 g-col-1'})
    privacy_policy = BooleanField([
                                        validators.InputRequired(message="Campo vacío.")
                                    ],
                                    render_kw={'class': ''})
    save = SubmitField('Guardar', 
                                    render_kw={'class': 'g-row-13 g-col-2'})
