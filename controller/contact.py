from email_validator import EmailNotValidError
from wtforms import Form, BooleanField, StringField, SubmitField, TextAreaField, EmailField, validators

class ContactForm(Form):

    c_name = StringField('Nombre', [
                                        validators.InputRequired(message="Campo vacío.")
                                    ])
    email = EmailField('Email', [
                                        validators.InputRequired(message="Campo vacío."),
                                        validators.Email(message="Email incorrecto.")
                                    ])
    comment = TextAreaField('Mensaje', [
                                        validators.InputRequired(message="Campo vacío."), 
                                        validators.Length(min=10, max=1000, message="La longitud debe estar entre 10 y 1000 caracteres.")
                                        ])
    privacy_policy = BooleanField([
                                        validators.InputRequired(message="Campo vacío.")
                                    ])
    save = SubmitField('Guardar')
