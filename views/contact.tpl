%include('header.tpl', title='Contacto')
    <div class="form-container">
        <div class="top-panel">
            <div class="top-panel-bg"></div>
            <div class="top-panel-content">
                <h2>Contáctanos</h2>
                <p>Si tienes alguna duda sobre tu pedido o problemas con la web, no dudes en contactarnos.</p>
            </div>
        </div>
        <div class="bottom-panel">
            <form action="/contact" method="POST">
                <fieldset>
                    {{ form.c_name.label }}
                    {{ form.c_name }}
                    {{ form.email.label }}
                    {{ form.email }}
                    {{ form.comment.label }}
                    {{ form.comment }}
                    <div class="g-row-11 g-col-1">
                        {{ form.privacy_policy }}
                        <a class="privacy" target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">Acepto la política de privacidad.</a>
                    </div>
                    {{ form.save }}
                </fieldset>
            </form>
        </div>
    </div>
%include('footer.tpl')
