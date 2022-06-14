from sre_parse import CATEGORIES
from wtforms import Form, StringField, IntegerField, SubmitField, validators, FileField, DecimalField, SelectField

CATEGORIES = [('', 'Seleccionar categoría'), ('Tartas', 'Tartas'), ('Dulces', 'Dulces'), ('Salados', 'Salados'), ('Helados', 'Helados'), ('Cremosos', 'Cremosos')]
class AddProdForm(Form):

    pro_name = StringField([
                                        validators.InputRequired()
                                    ])
    price = DecimalField([
                                        validators.InputRequired()
                                    ])
    category = SelectField(label="Categoría", choices=CATEGORIES, validators=[
                                        validators.InputRequired()
                                    ])
    stock = IntegerField([
                                        validators.InputRequired()
                                    ])
    user_image = FileField([            
                                        validators.InputRequired()
                                    ],
                                        render_kw={'id': 'file-reg', 'data-multiple-caption': '{count} files selected'})
    save_pro = SubmitField('Añadir producto')
