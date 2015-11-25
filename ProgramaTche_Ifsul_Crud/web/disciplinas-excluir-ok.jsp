<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    //receber a chave primária
    //buscar o registro correspondente a C.P.
    //excluir o registro
    if(request.getParameter("codigo") == null)
    {
        response.sendRedirect("disciplinas.jsp");
        return;
    }
    
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(codigo);
    String msg = "";
    if(obj!=null)
    {
        dao.excluir(obj);
        msg = "Registro excluído com sucesso";
    }
    else
    {
       msg = "Erro ao excluir o registro"; 
    }
    
    
%>
         <h1 class="centro">Exclusão de Disciplina</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="disciplinas.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
