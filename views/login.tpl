%include('header.tpl', title='Registro de usuario')
<div class="container-login">
        <div class="login-item">
            <div class="print-f">
                <h3>Identificarse</h3>
            </div>
            <form action="#">
                <div class="user">
                    {{ form.c_name }}
                    {{ form.email }}
                </div>
                <div class="buttons-item">
                    <div class="check-item">
                        <input type="checkbox" name="cookies" id="cookies"/> <span>Recuérdame</span>
                    </div>
                    {{ form.save }}
                </div>
            </form>
            <div class="check-item">
                {{ form.privacy_policy }}
                <a target="_blank" href="https://www.boe.es/buscar/doc.php?id=BOE-A-2018-16673">He leído los términos.</a>
            </div>
            <div class="register-i">
                <p>¿No tienes cuenta?</p>
                <a href="register.html">Créate una</a>
            </div>
        </div>
    </div>
%include('footer.tpl')