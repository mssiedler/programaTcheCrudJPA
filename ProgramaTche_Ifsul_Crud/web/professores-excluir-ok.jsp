<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    String msg = "";
    if(request.getParameter("siape")==null)
    {
        response.sendRedirect("professores.jsp");
    }
    else
    {
        String siape = request.getParameter("siape");
        
        ProfessorDAO dao = new ProfessorDAO();
        //buscar o registro pela chave primária
        Professor obj = dao.buscarPorChavePrimaria(siape);
        if(obj!=null)
        {
            dao.excluir(obj);
            msg = "Registro excluído com sucesso";
        }
        else
        {
            msg = "Registro não encontrado. Verifique.";
        }
        
    }
%>
         <h1 class="centro">Exclusão de Professores</h1>
            
         <div>
             <%=msg%><br />
             <a href="professores.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
