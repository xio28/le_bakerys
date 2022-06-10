from email_validator import EmailNotValidError
from wtforms import Form, BooleanField, StringField, SubmitField, TextAreaField , validators

class RegistrationForm(Form):
    text_class = 'input-text'
    radio_class = 'input-radio'
    textarea_class = 'input-radio'

    c_name = StringField('Nombre ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba su nombre...', 
                                        render_kw={'class': text_class})
    email = StringField('Segundo apellido ', 
                                        default='Escriba su segundo apellido...', 
                                        render_kw={'class': text_class})
    comment = TextAreaField('Mensaje ', [
                                        validators.InputRequired(), 
                                        validators.Length(min=10, max=1000)
                                        ], 
                                        default='Cuéntenos su problema...', 
                                        render_kw={'class': textarea_class})
    privacy_policy = BooleanField('Acepto la política de privacidad.', [
                                        validators.InputRequired()
                                    ],
                                    render_kw={'class': policy})
    save = SubmitField('Guardar')
    cancel = SubmitField('Cancelar')
