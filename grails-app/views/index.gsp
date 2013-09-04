<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>KwiK</title>
</head>
<body>
	<div class="hero-unit">
		<h1>Welcome to KwiK</h1>
		<p>We are more reliable than Amazon. Cheaper than Deal Extreme. More popular than eBay. The second best e-commerce site in the world (loosing only to WalMart.com)</p>
		<p>
			<sec:ifNotLoggedIn>
				<a href="<g:createLink controller="user" action="create" />" class="btn btn-primary btn-large">Sign up</a>
				<a href="<g:createLink controller="login" action="auth" />" class="btn btn-primary btn-large">Log in</a>
			</sec:ifNotLoggedIn>
			<sec:ifLoggedIn>
				<a href="<g:createLink controller="logout" />" class="btn btn-primary btn-large">Log out</a>
			</sec:ifLoggedIn>
		</p>
	</div>
	<div class='alert alert-warn'>Essa aplicação está executando em uma instância sob demanda da Amazon e será desligada no dia 7 de Setembro. Caso precise de mais tempo para analisá-la, por favor me avise.</div>
	<div>
		<h1>Perguntas e Respostas</h1>
		
		<h3>Como entro em contato caso tenha alguma dúvida sobre seu teste?</h3>
		<p>Me mande um e-mail(<a mailto="carlosgsouza@gmail.com">carlosgsouza@gmail.com</a>)</p>
		
		<h3>Onde está o código fonte?</h3>
		<p>Em minha <a href="https://github.com/carlosgsouza/kwik">conta no GitHub</a>. Por favor, me envie sua conta para que eu possa te dar permissão de acesso.</p>

		<h3>Onde seu teste está hospedado?</h3>
		<p>Em uma pequena instância EC2 na Amazon Web Services</p>

		<h3>Como executo sua aplicação?</h3>
		<p>Com o grails 2.1.3 instalado em sua máquina, vá para a pasta do projeto e execute <i>grails run-app</i></p>

		<h3>Qual é a arquitetura em alto nível da sua aplicação?</h3>
		<p>
			<ul>
				<li>Grails no backend com banco H2 em memória e Spring Security </li>
			 	<li>Angular.js no frontend com Twitter Bootstrap para formatação</li>
			 </ul>
		</p>
	
		<h3>Porquê você usou Grails?</h3>
		<p>Grails simplifica as tarefas mais burocráticas e impõe boas práticas de programação.</p>
		
		<h3>Porquê você usou Angular?</h3>
		<p>Angular impõe boas práticas de programação, como separação de lógica e dados. Ele possui two way data binding e é fácil de testar.</p>
	
		<h3>Como você tratou a questão de mobilidade?</h3>
		<p>Escolhi a abordagem mais simples, implementei design responsivo na minha aplicação. Para uma abordagem mais sofisticada, eu usaria a mesma arquitetura orientada a serviços que uso nas aplicações que eu projetei até hoje. Nessa arquitetura, cliente e servidor se comunicam através de uma interface REST e trocam dados em formato JSON, o que leva a baixíssimo acoplamento entre as partes, alem de facilitar a divisão do trabalho dentro do time.</p>
	
		<h3>Como você tratou a questão do cache?</h3>
		<p>Não havia nenhuma questão relevante a ser tratada.</p>
	
		<h3>Como você implementou autenticação?</h3>
		<p>Estou usando o plugin do Spring Security. Esse plugin gera algumas telas de gerenciamento de usuários e roles. Descartei as telas, mas reusei parte do código burocrático dos controllers.</p>
	
		<h3>Como você implementou o preenchimento automático dos campos do endereço?</h3>
		<p>Estou usando um webservice que achei no Google. Ao receber o cep, a página faz uma requisição ao backend do Kwik, que então faz uma chamada a esse webservice, eleminando assim problemas de cross domain.</p>
	
		<h3>Como você valida os formulários</h3>
		<p>Uso Angular no frontend e <a href="http://grails.org/doc/latest/ref/Domain%20Classes/constraints.html">constraints</a> no backend.</p>
	
		<h3>Como você organizou seu processo de desenvolvimento?</h3>
		<p>Para cada História de Usuário, criei uma lista de critérios de aceitação, que depois usei para testar minha aplicação</p>
	
		<h3>Como você testou sua aplicação?</h3>
		<p>Infelizmente, por falta de tempo, só testei manualmente.</p> 
	
		<h3>Porque tem tanta coisa em inglês?</h3>
		<p>Estou mais acostumado.</p>
	
		<h3>Porquê você não implementou a última História de Usuário?</h3>
		<p>Falta de tempo. O requisito até que não era difícil, dava pra ter usado a integração do Facebook do Spring Socia ( http://grails.org/plugin/spring-social-facebook)l</p> 
	
		<h3>O que você faria se tivesse mais tempo para deixar essa aplicação mais legal?</h3>
		<p>
			<ul>
				<li>Configuraria um job em um servidor de build
				<li>Implementaria testes unitário/integração utilizando o Spock
				<li>Implementaria testes unitários no frontend utilizando jasmine + grails-karma 
				<li>Implementaria testes funcionais usando jasmine + grails-karma + angular
			</ul>
		</p>
	</div>
</body>
</html>