<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
if(request.getParameter("txtNome") == null || request.getParameter("txtSiape")==null)
{
    response.sendRedirect("professores.jsp");
    return;
}

String txtSiape = request.getParameter("txtSiape");
String txtNome = request.getParameter("txtNome");
//Buscar o registro pela chave primária
//Alterar os demais valores (nesse caso apenas Nome)
//mandar alterar
ProfessorDAO dao = new ProfessorDAO();
//busquei o professor pelo siape (registro pela C.Primária)
Professor obj = dao.buscarPorChavePrimaria(txtSiape);
//Se não encontrou o registro volta pra lista
if(obj == null)
{
    response.sendRedirect("professores.jsp");
    return;
}
//Atualizar as demais informações enviadas
obj.setNome(txtNome);

dao.alterar(obj);



%>

         <h1 class="centro">Atualização de Professores</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
