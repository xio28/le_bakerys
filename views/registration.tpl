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
                            {{ form.username.label }}
                            {{ form.username }}
                            {{ form.password.label }}
                            {{ form.password }}
                            {{ form.password_confirm.label }}
                            {{ form.password_confirm }}
                            {{ form.email.label }}
                            {{ form.email }}
                            {{ form.c_name.label }}
                            {{ form.c_name }}
                            {{ form.surname1.label }}
                            {{ form.surname1 }}
                            {{ form.surname2.label }}
                            {{ form.surname2 }}
                            {{ form.nid.label }}
                            {{ form.nid }}
                            {{ form.contact.label }}
                            {{ form.contact }}
                            {{ form.street.label }}
                            {{ form.street }}
                            {{ form.s_num.label }}
                            {{ form.s_num }}
                            {{ form.s_story.label }}
                            {{ form.s_story }}
                            {{ form.postal_code.label }}
                            {{ form.postal_code }}
                            {{ form.city.label }}
                            {{ form.city }}
                            <div class="priv">
                                {{ form.privacy_policy }}
                                {{ form.privacy_policy.label }}
                            </div>
                        </div>
                    </div>
                    <div class="submit-button">
                        {{ form.save }}
                    </div>
                </form>
            </div>
        </div>
    </div>
%include('footer.tpl')
