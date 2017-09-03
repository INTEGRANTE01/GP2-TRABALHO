<%
	// verificando se tem um atributo login na sessao
	// se tiver vai continuar e mostrar o menu
	if(session.getAttribute("nome") != null) {
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

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
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">    
    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
    <!-- Footable -->
	<link href="css/footable.standalone.min.css" rel="stylesheet">	
    
  </head>
  <body class="nav-md">
  <div class="container body">
      <div class="main_container">
  		<c:import url="menu.jsp"/>  
  	<!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
          </div>
          <!-- /top tiles -->
  		<div class="row">             
          <br />		    
              <div class="row">			  
                <!-- Start to do list -->
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Cidade</h2>
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                    <div class="x_content">					
                <form class="form-horizontal form-label-left" data-toggle="validator" method="post" action="cidade">				 
                            <p>Atenção aos campos requeridos<code>*</code></p>
                            <!-- <span class="section">Dados do Agente</span>-->
                  
                  <!--IDbanco Input-->
                  <div class="form-group">
                             <div class="col-md-2 col-xs-12">
                                <input  type="hidden" readonly="readonly" type="text" id="idcidade" name="idcidade" value="${cidade.idcidade}" class="form-control input-md">
                            </div>
                  </div>                			  					  
                  <!--Cidade Input-->
                            <div class="form-group">
                              <label class="control-label col-md-3" for="nome">Nome <span class="required">*</span></label>
                              <div class="col-lg-6 col-xs-12">
                                <input type="text" id="cidade" name="cidade" value="${cidade.nome_cidade}"  placeholder="ex: Trindade" required="required" class="form-control input-md">
                                <div class="help-block with-errors"></div>
                              </div>
                            </div>			
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
									<div class="alert alert-info fade in">
										<a href="#" class="close" data-dismiss="alert">&times;</a>
										<p>${message}</p>
									</div>
								</div>			
					   </c:if>
               </form>
            </div>
          </div>
        </div>
        
        <!-- Busca Cidade -->
         <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2> Buscar Cidades <small>Cidades Cadastradas</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>			                      
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                	 <div class="x_content">
						 <form class="form-horizontal form-label-left" data-toggle="validator" method="get" action="cidade">						  						  
						 <div class="form-group">
                          <label class="control-label col-md-3" for="nome"></label>
							<div class="input-group col-lg-6 col-xs-12">							
								<input type="text" name="txtpesquisa1" class="form-control input-md" placeholder="Buscar Cidade">
								<div class="input-group-btn">
								   <a href="buscafuncionario">									
									<button type="submit" class="btn btn-primary"
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
									<c:if test="${not empty listacidade}">									
									<thead>
										<tr>											
											<th>Cidade</th>											
											<th>Ações</th>
										</tr>
									</thead>
									</c:if>
									<tbody>
										<c:forEach var="cidade" items="${listacidade}">
											<tr>												
												<td>${cidade.nome_cidade}</td>
												<td>
													<div class="btn-group">
														<button type="button"
															class="btn dropdown-toggle btn btn-info btn-sm"
															data-toggle="dropdown">
															Opções <span class="caret"></span>
														</button>
														<ul class="dropdown-menu">
															<li><a
																href="cidade?acao=Consultar&idcidade=${cidade.idcidade}"><span
																	class="glyphicon glyphicon-edit"></span> Editar</a></li>
															<li><a
																onclick="confirmaexclusao(${cidade.idcidade})"><span
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
					"position": "right",
					"limit": 3,
					"size": 8,
					"countFormat": "Registros {PF} a {PL} de {TR} resultados"
				}
			});
		});
		
	    function confirmaexclusao(id) {
	   	     var resposta = confirm("Deseja remover o registro?");
	   	 
	   	     if (resposta == true) {
	   	          window.location.href = "cidade?acao=Excluir&idcidade="+id;
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
