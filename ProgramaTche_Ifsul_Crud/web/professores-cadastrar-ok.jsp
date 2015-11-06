
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    String msg="";
    
    if(request.getParameter("txtSiape") == null || request.getParameter("txtNome")== null)
    {
        response.sendRedirect("professores.jsp");
    }
    else
    {
    
        String siape = request.getParameter("txtSiape");
        String nome = request.getParameter("txtNome");
        //Chamar a inclusão da DAO
        ProfessorDAO dao = new ProfessorDAO();

        Professor obj = new Professor();
        obj.setNome(nome);
        obj.setSiape(siape);
        
        try
        {
            dao.incluir(obj);
            msg = "Registro cadastrado com sucesso";
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar registro";
        }
        
    }
    
    
    
    
%>

         <h1 class="centro">Cadastro de Professores</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="professores.jsp">Voltar para Listagem</a>
             
         </div>
    </body>
</html>
