from wtforms import Form, StringField, IntegerField, SubmitField, validators, FileField, DecimalField

class AddProdForm(Form):

    pro_name = StringField([
                                        validators.InputRequired()
                                    ])
    price = DecimalField([
                                        validators.InputRequired()
                                    ])
    category = StringField([
                                        validators.InputRequired()
                                    ])
    stock = IntegerField([
                                        validators.InputRequired()
                                    ])
    user_image = FileField([            
                                        validators.InputRequired()
                                    ],
                                        render_kw={'id': 'file-reg', 'data-multiple-caption': '{count} files selected'})
    save = SubmitField('Añadir producto')
