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
            % if form.errors:
                <div>
                    <p>Hay errores en el formulario:</p>
                    <ul>
                    % for field, errors in form.errors.items():
                        % for error in errors:
                        <li>{{field}}: {{error}}</li>
                        % end
                    % end
                    </ul>
                </div>
            % end
            <form action="/contact" method="POST">
                <fieldset>
                    {{ form.c_name.label }}
                    {{ form.c_name }}
                    {{ form.email.label }}
                    {{ form.email }}
                    {{ form.comment.label }}
                    {{ form.comment }}
                    {{ form.privacy_policy.label }}
                    {{ form.privacy_policy }}
                    {{ form.privacy_policy.label }}
                    {{ form.save }}
                </fieldset>
            </form>
        </div>
    </div>
%include('footer.tpl')
