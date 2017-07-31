
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
<link href="vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap select -->
<link href="css/bootstrap-select.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- Footable -->	
<link	href="css/footable.bootstrap.min.css" rel="stylesheet">
<!-- Custom Theme Style -->
<link href="build/css/custom.min.css" rel="stylesheet">
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
 										<div class="table-responsive">
											<table class="table table-striped jambo_table breakpoint-table" data-page-size="8" data-filter=#filter>
												<thead>
													<tr>
														<th>Denunciante</th>
														<th>Data da Denuncia</th>
														<th>Cidade</th>														
														<th>Tp_imovel</th>														
														<th data-hide="all">Bairro</th>
														<th data-hide="all">Rua</th>
														<th data-hide="all">Quadra</th>
														<th data-hide="all">Lote</th>
														<th data-hide="all">Numero</th>
														<th data-hide="all">Cep</th>
														<th data-hide="all">Descrição da Denuncia</th>
														<th>Ações</th>
														
													</tr>
												</thead>
												<tbody>
													<c:forEach var="denuncia" items="${listadenuncia}">
														<tr>
															<td>${denuncia.denunciante}</td>
															<td><fmt:formatDate
																value="${denuncia.data_denuncia}" type="both"
																pattern="dd/MM/yyyy hh:mm" dateStyle="full" /></td>
															<td>${denuncia.cidade}</td>
															<td>${denuncia.tp_imovel}</td>
															<td>${denuncia.bairro}</td>
															<td>${denuncia.rua}</td>
															<td>${denuncia.quadra}</td>
															<td>${denuncia.lote}</td>
															<td>${denuncia.numero}</td>
															<td>${denuncia.cep}</td>
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
				<c:import url="rodape.jsp" />
		</div>
		<script>
		    function confirmaexclusao(id) {
		   	     var resposta = confirm("Deseja remover o registro?");
		   	 
		   	     if (resposta == true) {
		   	          window.location.href = "buscadenuncia?acao=Excluir&iddenuncia="+id;
		   	     }
		   	}
    </script>
		<!-- jQuery -->
		<script src="vendors/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap -->
		<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- Bootstrap select -->
		<script src="js/bootstrap-select.min.js"></script>
		<!-- Footable-->
		 <script src="vendors/moment/min/moment.min.js"></script>
		<script src="js/footable.js"></script>

		<!-- Custom Theme Scripts -->
		<script src="build/js/custom.min.js"></script>
		
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
