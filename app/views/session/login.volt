{{ content() }}

<div align="center" class="well">

                        {% set messages = flashS.getMessages() %}
                        {% if(messages)  %}
                            {% for type, value in messages %}
                                <div class="alert alert-{{type}}">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <strong>Ups! Da ist ein Fehler aufgetreten.</strong><br>
                                    {{ dump(messages) }}
                                    {{value[0]}}

                                </div>
                            {%endfor%}

                        {% endif %}


	{{ form('class': 'form-search') }}

	<div align="left">
		<h2>Log In</h2>
	</div>

		{{ form.render('email') }}
		{{ form.render('password') }}
		{{ form.render('go') }}

		<div align="center" class="remember">
			{{ form.render('remember') }}
			{{ form.label('remember') }}
		</div>

		{{ form.render('csrf', ['value': security.getToken()]) }}

		<hr>

		<div class="forgot">
			{{ link_to("session/forgotPassword", "Forgot my password") }}
		</div>

	</form>

</div>