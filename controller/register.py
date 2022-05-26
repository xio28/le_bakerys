from email_validator import EmailNotValidError
from wtforms import Form, BooleanField, StringField, IntegerField, PasswordField, SubmitField , validators

class RegistrationForm(Form):
    text_class = 'input-text'
    radio_class = 'input-radio'

    username = StringField('Nombre de usuario ', [validators.Length(min=4, max=25)], default='Nombre de usuario...', render_kw={'class': text_class})
    c_name = StringField('Nombre ', [validators.InputRequired()], default='Escriba su nombre...', render_kw={'class': text_class})
    surname1 = StringField('Primer apellido ', [validators.InputRequired()], default='Escriba su primer apellido...', render_kw={'class': text_class})
    surname2 = StringField('Segundo apellido ', default='Escriba su segundo apellido...', render_kw={'class': text_class})
    email = StringField('Segundo apellido ', default='Escriba su segundo apellido...', render_kw={'class': text_class})
    street = StringField('Calle/Plaza/Avenida ', [validators.InputRequired()], default='Escriba su calle/plaza/avenida...', render_kw={'class': text_class})
    s_num = IntegerField('Número ', [validators.InputRequired()], default='Escriba el número de su calle/plaza/avenida...', render_kw={'class': text_class})
    s_floor = IntegerField('Piso ', [validators.InputRequired()], default='Escriba el número de su piso', render_kw={'class': text_class})
    postal_code = IntegerField('Código postal ', [validators.InputRequired()], default='Escriba su código postal', render_kw={'class': text_class})
    city = StringField('Localidad ', [validators.InputRequired()], default='Escriba su localidad', render_kw={'class': text_class})
