
<%
	// verificando se tem um atributo login na sessao
	// se tiver vai continuar e mostrar o menu
	if (session.getAttribute("nome") != null) {
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Sistema de Controle de Endemias</title>
<!-- Bootstrap -->
<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap select -->
<link href="css/bootstrap-select.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="vendors/font-awesome/css/font-awesome.min.css"	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">
<!-- Footable -->	
<link href="css/footable.standalone.min.css" rel="stylesheet">
<!--
<link href="css/footable.core.css" rel="stylesheet">
<link href="css/footable.standalone.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/2.0.3/css/footable.metro.css" rel="stylesheet">
-->

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<c:import url="menu.jsp" />
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="row">
					<br />
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Denúncias <small>Endemic Sys</small>
									</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<form class="form-horizontal form-label-left"
										data-toggle="validator" method="post" action="buscadenuncia">

										<div class="form-group  col-lg-3 col-xs-12">
											<label>Denunciante </label> <input type="text"
												name="txtpesquisa1" class="form-control input-md">
										</div>
										<div class="form-group  col-lg-3 col-xs-12">
											<label>Bairro </label>  <select name="txtpesquisa2"
												title="" class="form-control input-md selectpicker"
												data-live-search="true">
												<option selected="selected"></option>
												 <c:forEach var="combobairro" items="${listabairro}">      
						      							  <option>${combobairro.bairro}</option>      
											     </c:forEach> 
											</select>
										</div>
										<div class="form-group  col-lg-3 col-xs-12">
											<label>Cidade </label> <select name="txtpesquisa3" title=""
												class="form-control input-md selectpicker"
												data-live-search="true">
												<option selected="selected"></option>
												 <c:forEach var="combocidade" items="${listacidade}">      
						      							  <option>${combocidade.cidade}</option>      
												 </c:forEach> 
											</select>
										</div>

										<div class="form-group  col-lg-3 col-xs-12">
											<label>Tipo de Imovel </label> <select name="txtpesquisa4"
												title="" class="form-control input-md selectpicker"
												data-live-search="true">
												<option selected="selected"></option>
												 <c:forEach var="combotipo" items="${listatipo}">      
						      							  <option>${combotipo.tp_imovel}</option>      
											     </c:forEach> 
											</select>
										</div>
										<div class="x_content">
											<div class="row">
												<c:if test="${not empty message}">
													<div class="col-lg-12 col-xs-12">
														<c:if test="${fn:contains(message, 'Erro')}">
															<div class="alert alert-danger fade in">
																<a href="#" class="close" data-dismiss="alert">&times;</a>
																<p>${message}</p>
															</div>
														</c:if>
														<c:if test="${fn:contains(message, 'pesquisa')}">
															<div class="alert alert-warning fade in">
																<a href="#" class="close" data-dismiss="alert">&times;</a>
																<p>${message}</p>
															</div>

														</c:if>
														<c:if test="${fn:contains(message, 'Sucesso')}">
															<div class="alert alert-info fade in">
																<a href="#" class="close" data-dismiss="alert">&times;</a>
																<p>${message}</p>
															</div>
														</c:if>
													</div>
												</c:if>
											</div>
											<p class="text-muted font-13 m-b-30">
												<a href="denuncia">
													<button type="button" class="btn btn-success"
														data-container="body" data-toggle="popover"
														data-placement="bottom" title="Incluir Nova Denúncia">
														<i class="fa fa-plus-circle"></i>
													</button>
												</a> <a href="buscadenuncia">
													<button type="button" class="btn btn-primary"
														data-container="body" data-toggle="popover"
														data-placement="bottom" title="Limpar Listagem">
														<i class="fa fa-refresh"></i>
													</button>
												</a>
												<button type="submit" class="btn btn-info"
													data-container="body" data-toggle="popover"
													data-placement="bottom" title="Buscar">
													<i class="fa fa-search"></i>
												</button>
											</p>
 										<div>
 										<div class="ln_solid"></div>                                										
											
											<table id="table" class="table footable toggle-circle-filled table-striped  table-hover" 
											data-sorting="true" data-show-toggle="true">											
												<thead>
													<tr>
														<!-- <th data-toggle="true">Denunciante</th>   -->
													    <th data-breakpoints="xs">Data da Denuncia</th>
														<th>Cidade</th>														
														<th data-breakpoints="xs">Bairro</th>
														<th data-breakpoints="all">Tipo de imovel</th>																												
														<th data-breakpoints="all">Rua</th>
														<th data-breakpoints="all">Quadra</th>
														<th data-breakpoints="all">Lote</th>
														<th data-breakpoints="all">Numero</th>
														<!-- <th data-breakpoints="all">Cep</th>   -->
														<th data-breakpoints="all">Descrição da Denuncia</th>
														<th>Ações</th>														
													</tr>
												</thead>
												<tbody>
													<c:forEach var="denuncia" items="${listadenuncia}">
														<tr>															
														<!-- 	<td>${denuncia.denunciante}</td>   -->
															<td><fmt:formatDate
																value="${denuncia.data_denuncia}" type="both"
																pattern="dd/MM/yyyy HH:mm" dateStyle="full" /></td>
															<td>${denuncia.cidade}</td>
															<td>${denuncia.bairro}</td>
															<td>${denuncia.tp_imovel}</td>
															<td>${denuncia.rua}</td>
															<td>${denuncia.quadra}</td>
															<td>${denuncia.lote	}</td>
															<td>${denuncia.numero}</td>
															<!--<td>${denuncia.cep}</td>   -->
															<td>${denuncia.desc_den}</td>															
															<td><div class="btn-group">
																	<button type="button"
																		class="btn dropdown-toggle btn btn-info btn-sm"
																		data-toggle="dropdown">
																		Opções <span class="caret"></span>
																	</button>
																	<ul class="dropdown-menu">
																		<li><a
																			href="buscadenuncia?acao=Consultar&iddenuncia=${denuncia.iddenuncia}"><span
																				class="glyphicon glyphicon-edit"></span> Editar</a></li>
																		<li><a
																			onclick="confirmaexclusao(${denuncia.iddenuncia})"><span
																				class="glyphicon glyphicon-remove-sign"></span> Excluir</a></li>
																	</ul>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>												
											</table>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>  
		<!-- jQuery -->
		<script src="vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- Bootstrap select -->
		<script src="js/bootstrap-select.min.js"></script>				
		<!-- Custom Theme Scripts -->
		<script src="build/js/custom.min.js"></script>
		<!-- Footable-->
		<script src="vendors/moment/min/moment.min.js"></script>	
		<script src="js/footable.js"></script>
		
		<script type="text/javascript">
		// Instanciar Footable
			$(document).ready(function () {
			//$(function () {
				$('.footable').footable({			
					"paging": {
						"enabled": true,											
						"position": "right",
						"limit": 3,
						"size": 8,
						"countFormat": "Registros {PF} a {PL} de {TR} resultados"
					}
				});
			});

		// Função de Exclusão
		    function confirmaexclusao(id) {
		   	     var resposta = confirm("Deseja remover o registro?");
		   	     if (resposta == true) {
		   	          window.location.href = "buscadenuncia?acao=Excluir&iddenuncia="+id;
		   	     }
		   	}	
		</script>

		<c:import url="rodape.jsp" />
</body>
</html>
<%
	// se não existir um login na sessao, 
		// vai enviar para a página de login novamente
	} else {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>
