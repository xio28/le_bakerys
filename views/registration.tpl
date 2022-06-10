%include('header.tpl', title='Registro de usuario')
    <div class="item-background"></div>
    <div class="container-register">
        <div class="form-item">
            <div class="left-content"></div>
            <div class="right-content">
                <div class="header-reg-content">
                    <div class="form-title">Crear cuenta nueva</div>
                    <div class="pagination">
                        <img id="prev" class="btn" src="/static/resources/img/left-arrow.svg" alt="flecha izquierda">
                        <img id="next" class="btn" src="/static/resources/img/right-arrow.svg" alt="flecha derechapointer-events">
                    </div>
                </div>
                <form action="/registration" method="POST">
                    <!-- <div class="list-tabs">
                        <div class="progress-bar-container">
                            <div class="bubble bubble-val"></div>
                            <div id="progress" class="progress-value percentage"></div>
                        </div>
                    </div> -->
                    <div class="content-container">
                        <div id="tab-1" class="form-content">
                            {{ form.username }}
                            {{ form.password }}
                            {{ form.password_confirm }}
                            {{ form.email }}
                            {{ form.c_name }}
                            {{ form.surname }}
                            {{ form.nid }}
                            {{ form.contact }}
                            {{ form.address }}
                            {{ form.postal_code }}
                            {{ form.city }}
                            <div class="priv">
                                {{ form.privacy_policy }}
                                <a target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">Acepto la política de privacidad.</a>
                            </div>
                        </div>
                    </div>
                    <div class="submit-button">
                        <a href="/" class="btn-cancel">Cancelar</a>
                        {{ form.save }}
                    </div>
                </form>
            </div>
        </div>
    </div>
%include('footer.tpl')
