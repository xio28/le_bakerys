from cProfile import label
from bottle_utils.html import link_other
from email_validator import EmailNotValidError
from wtforms import Form, BooleanField, StringField, IntegerField, PasswordField, SubmitField , validators, ValidationError


def validatePhone(form, field):
    print(type(field.data))
    # if len(field.data) == 9:
    #     pass
    # else:
    #     raise ValidationError('Field must be less than 50 characters')
class RegistrationForm(Form):
    text_class = 'input-text'
    radio_class = 'input-radio'

    username = StringField('Nombre de usuario ', [
                                        validators.Length(min=4, max=25, message="Longitud incorrecta"),
                                        validatePhone
                                    ], 
                                        default='Nombre de usuario...', 
                                        render_kw={'class': text_class})
    password = PasswordField('Contraseña ', [
                                        validators.Length(min=10, max=60),
                                        validators.EqualTo('password_confirm', message='Las contraseñas no coinciden')
                                    ])
    password_confirm = PasswordField('Repita la contraseña ')
    c_name = StringField('Nombre ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba su nombre...', 
                                        render_kw={'class': text_class})
    surname1 = StringField('Primer apellido ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba su primer apellido...', 
                                        render_kw={'class': text_class})
    surname2 = StringField('Segundo apellido ', 
                                        default='Escriba su segundo apellido...', 
                                        render_kw={'class': text_class})
    nid = StringField('DNI ', 
                                        default='Escriba su DNI...', 
                                        render_kw={'class': text_class})
    contact = StringField('Número de teléfono ', [
                                        validators.Length(min=9, max=9, message="Longitud incorrecta"), 
                                        validators.InputRequired()
                                    ])
    email = StringField('Segundo apellido ', 
                                        default='Escriba su segundo apellido...', 
                                        render_kw={'class': text_class})
    street = StringField('Calle/Plaza/Avenida ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba su calle/plaza/avenida...', 
                                        render_kw={'class': text_class})
    s_num = IntegerField('Número ', [
                                        validators.InputRequired(f"Campo {label} vacío.")
                                    ], 
                                        default='Escriba el número de su calle/plaza/avenida...', 
                                        render_kw={'class': text_class})
    s_story = IntegerField('Piso ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba el número de su piso', 
                                        render_kw={'class': text_class})
    postal_code = IntegerField('Código postal ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba su código postal', 
                                        render_kw={'class': text_class})
    city = StringField('Localidad ', [
                                        validators.InputRequired()
                                    ], 
                                        default='Escriba su localidad', 
                                        render_kw={'class': text_class})
    privacy_policy = BooleanField('<a target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">Acepto la política de privacidad.</a>', [
                                        validators.InputRequired()
                                    ])
    save = SubmitField('Guardar')
    cancel = SubmitField('Cancelar')

