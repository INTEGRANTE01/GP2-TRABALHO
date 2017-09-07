<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn"%>

<c:set var="nome" value="${sessionScope.nome}"/>
<c:choose>
<c:when test="${not empty nome}">
=======

<%
	// verificando se tem um atributo login na sessao
	// se tiver vai continuar e mostrar o menu
	if (session.getAttribute("nome") != null) {
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10

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
<link href="vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap select -->
<link href="css/bootstrap-select.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Custom Theme Style -->
<link href="css/custom.min.css" rel="stylesheet">
<!-- Footable -->
<link href="css/footable.standalone.min.css" rel="stylesheet">

</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<c:import url="menu.jsp" />
			<!-- page content -->
			<div class="right_col" role="main">
				<!-- top tiles -->
				<div class="row tile_count"></div>
				<!-- /top tiles -->
				<div class="row">
					<br />
					<div class="row">
						<!-- Start to do list -->
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Bairro</h2>
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
										data-toggle="validator" method="post" action="bairro">
										<p>
											Atenção aos campos requeridos
											<code>*</code>
										</p>
										<!-- <span class="section">Dados do Agente</span>-->

										<!--IDbanco Input-->
										<div class="form-group">
											<div class="col-md-2 col-xs-12">
<<<<<<< HEAD
												<input type = "hidden"readonly="readonly" type="text"
=======
												<input type="hidden" readonly="readonly" type="text"
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
													id="idbairro" name="idbairro" value="${bairro.idbairro}"
													class="form-control input-md">
											</div>
										</div>
<<<<<<< HEAD
										<!--Bairro Input-->															
=======
										<!--Bairro Input-->
															
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
										<div class="form-group">
											<label class="control-label col-md-3" for="nome">Nome
												<span class="required">*</span>
											</label>
											<div class="col-lg-6 col-xs-12">
												<input type="text" id="bairro" name="bairro"
													value="${bairro.nome_bairro}" placeholder="ex: Trindade"
													required="required" class="form-control input-md">
												<div class="help-block with-errors"></div>
											</div>
<<<<<<< HEAD
										</div>										
=======
										</div>
										
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
										<!-- Cidade -->										
											<div class="form-group">
												<label class="control-label col-md-3" for="bairro">Cidade
													<span class="required">*</span>
												</label>
												<div class="col-lg-3 col-xs-12">
													<select required id="cidade" name="cidade"
														title="Selecione item"
														class="form-control input-md selectpicker"
														data-live-search="true">
<<<<<<< HEAD
														 <c:if test = "${not empty bairro.nome_cidade}">											
			                              					 	<option selected="selected">${bairro.nome_cidade}</option>
=======
														 <c:if test = "${not empty cidade.nome_cidade}">											
			                              					 	<option selected="selected">${cidade.nome_cidade}</option>
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
			                            				 </c:if>										
														 <c:forEach var="combocidade" items="${listacidade}">      
							      							<option>${combocidade.nome_cidade}</option>      
														 </c:forEach> 											 
													</select>
													<div class="help-block with-errors"></div>
												</div>
<<<<<<< HEAD
											</div>										
=======
											</div>
										
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
										<!--Botões-->
										<div class="form-group">
											<div class="col-md-6 col-md-offset-3">
												<button id="send" type="submit" class="btn btn-info">Gravar</button>
												<button type="reset" class="btn btn-warning">Limpar</button>
											</div>
										</div>
										<c:if test="${not empty message}">
										<label class="control-label col-md-3"></label>
											<div class="col-lg-6 col-xs-12">
											<c:if test="${fn:containsIgnoreCase(message, 'Erro')}">
													<div class="alert alert-danger fade in">
													<a href="#" class="close" data-dismiss="alert">&times;</a>
														<p>${message}</p>
													</div>
											</c:if>
											<c:if test="${fn:containsIgnoreCase(message, 'Sucesso')}">
													<div class="alert alert-info fade in">
													<a href="#" class="close" data-dismiss="alert">&times;</a>
														<p>${message}</p>
													</div>
											</c:if>
											</div>
										</c:if>
									</form>
								</div>
							</div>
						</div>
<<<<<<< HEAD
=======

>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
						<!-- Busca Bairro -->
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Bairros Cadastrados</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
<<<<<<< HEAD
								<form class="form-horizontal form-label-left"
										data-toggle="validator" method="post" action="buscabairro">
										<div class="form-group  col-lg-3 col-xs-12">
											<label>Bairro </label> <select name="txtpesquisa1"
												title="Selecione uma opção"
												class="form-control input-md selectpicker"
												data-live-search="true">
												<c:forEach var="combobairro" items="${listabairro}">
													<option>${combobairro.nome_bairro}</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group  col-lg-3 col-xs-12">
											<label>Cidade </label> <select name="txtpesquisa2"
												title="Selecione uma opção"
												class="form-control input-md selectpicker"
												data-live-search="true">
												<c:forEach var="combocidade" items="${listacidade}">
													<option>${combocidade.nome_cidade}</option>
												</c:forEach>
											</select>
										</div>										
										
									<div class="x_content">
									<div>
									<label></label>
											<a href="bairro">
												<button type="submit" class="btn btn-primary btn-sm"
													data-container="body" data-toggle="popover"
													data-placement="bottom" title="Buscar">
													<i class="fa fa-search"></i> Buscar
												</button>
											</a>
									<div class="ln_solid"></div>								
									</div>
											<div>											
												<table id="table"
													class="table footable toggle-circle-filled table-striped  table-hover"
													data-sorting="true" data-show-toggle="true">
													<thead>
														<tr>
															<th>Bairro</th>
															<th>Cidade</th>
															<th>Ações</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="bairro" items="${listabairros}">
															<tr>
																<td>${bairro.nome_bairro}</td>
																<td>${bairro.nome_cidade}</td>
																<td>
																
																	<div class="btn-group">
																		<button type="submit"
																			class="btn dropdown-toggle btn btn-info btn-sm"
																			data-toggle="dropdown">
																			Opções <span class="caret"></span>
																		</button>
																		<ul class="dropdown-menu">
																			<li><a
																				href="buscabairro?acao=Consultar&idbairro=${bairro.idbairro}"><span
																					class="glyphicon glyphicon-edit"></span> Editar</a></li>
																			<li><a
																				onclick="confirmaexclusao(${bairro.idbairro})"><span
																					class="glyphicon glyphicon-remove-sign"></span>
																					Excluir</a></li>
																		</ul>
																	</div>
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
=======
									<form class="form-horizontal form-label-left"
										data-toggle="validator" method="get" action="bairro">
										<div class="form-group">
											<label class="control-label col-md-3" for="nome"></label>
											<div class="input-group col-lg-6 col-xs-12">
												<input type="text" name="txtpesquisa1"
													class="form-control input-md" placeholder="Buscar Bairro">
												<div class="input-group-btn">
													<a href="bairro">
														<button type="submit" class="btn btn-dark"
															data-container="body" data-toggle="popover"
															data-placement="bottom" title="Buscar">
															<i class="fa fa-search"></i>
														</button>
													</a>
												</div>
											</div>
										</div>
										<div>
											<table id="table"
												class="table footable toggle-circle-filled table-striped  table-hover"
												data-sorting="true" data-show-toggle="true">
												<thead>
													<tr>
														<th>Bairro</th>
														<th>Cidade</th>
														<th>Ações</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="bairro" items="${listabairro}">
														<tr>
															<td>${bairro.nome_bairro}</td>
															<td>${cidade.nome_cidade}</td>
															<td>
															
																<div class="btn-group">
																	<button type="submit"
																		class="btn dropdown-toggle btn btn-info btn-sm"
																		data-toggle="dropdown">
																		Opções <span class="caret"></span>
																	</button>
																	<ul class="dropdown-menu">
																		<li><a
																			href="bairro?acao=Consultar&idbairro=${bairro.idbairro}"><span
																				class="glyphicon glyphicon-edit"></span> Editar</a></li>
																		<li><a
																			onclick="confirmaexclusao(${bairro.idbairro})"><span
																				class="glyphicon glyphicon-remove-sign"></span>
																				Excluir</a></li>
																	</ul>
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
										</div>
									</form>
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
		<!-- bootstrap-VALIDATOR -->
		<script src="js/validator.min.js"></script>
		<!-- Footable-->
		<script src="vendors/moment/min/moment.min.js"></script>
		<script src="js/footable.js"></script>
		<script>
  
	//Instanciar Footable
		$(document).ready(function () {
		//$(function () {
			$('.footable').footable({			
				"paging": {
					"enabled": true,											
					"position": "left",
					"limit": 3,
					"size": 8,
					"countFormat": "Registros {PF} a {PL} de {TR} resultados"
				}
			});
		});
	    function confirmaexclusao(id) {
	   	     var resposta = confirm("Deseja remover o registro?");
	   	 
	   	     if (resposta == true) {
<<<<<<< HEAD
	   	          window.location.href = "buscabairro?acao=Excluir&idbairro="+id;
=======
	   	          window.location.href = "bairro?acao=Excluir&idbairro="+id;
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
	   	     }
	   	}
	    
    </script>
		<c:import url="rodape.jsp" />
</body>
</html>
<<<<<<< HEAD
</c:when>
<c:otherwise>
	<jsp:forward page="index.jsp"></jsp:forward>
</c:otherwise>
</c:choose>
=======
<%
	// se não existir um login na sessao, 
		// vai enviar para a página de login novamente
	} else {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>
>>>>>>> 2ebdb3b9ada6476b315da4554beee34c8c278b10
