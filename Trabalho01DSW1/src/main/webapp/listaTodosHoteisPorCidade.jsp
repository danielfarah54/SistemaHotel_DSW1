<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script>
            $(function () {
                $("#listaHoteisPorCidade").autocomplete({
                    select: function (event, ui) {
                        alert("Selecionado: " + ui.item.value);
                    },
                    source: "HotelPorCidadeController", // HotelPorCidadeController � um controller da classe HotelPorCidadeController  
                    minLength: 2
                });
            });
	</script>
    
	<title>Lista de hot�is do banco de dados Hot�is de acordo com a cidade</title>
</head>
<body>
		
	<div align="center">
		<h1>Sistema para cria��o de promo��es de quarto de hotel em sites de reservas</h1>
		<h2>
			<a href="login_administrador.jsp">�rea para login de administrador</a>
			<a href="login_hoteis_reservas.jsp" title="�rea de acesso ao sistema de hot�is e sistema de reservas">�rea para login de hot�is e sistema de reservas</a><br/>
		</h2>
	</div>
	
	<div class="ui-widget">
		<label for="listaHoteisPorCidade">Nome</label>
		<input id="listaHoteisPorCidade" name="listaHoteisPorCidade" placeholder="Pelo menos 2 caracteres" />
	</div>
	<br/>
	
	<div align="center">
		<table border="1">
			<caption>Lista de Hot�is</caption>
			<tr>
				<th>e-mail</th>
				<th>Senha</th>
				<th>CNPJ</th>
				<th>Nome do hotel</th>
				<th>Cidade</th>
			</tr>
			<c:forEach var="hotel" items="${requestScope.listaHoteis}">
				<tr>
					<td>${hotel.e_mail}</td>
					<td>${hotel.senha}</td>
					<td>${hotel.CNPJ}</td>
					<td>${hotel.nomeHotel}</td>
					<td>${hotel.cidade}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>