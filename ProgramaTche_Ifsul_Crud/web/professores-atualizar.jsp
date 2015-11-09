<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    if(request.getParameter("siape") == null)
    {
      response.sendRedirect("professores.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(professor) a partir da sua
        //chave primária, nesse caso o SIAPE
        String siape = request.getParameter("siape");
        ProfessorDAO dao = new ProfessorDAO();
        Professor obj = dao.buscarPorChavePrimaria(siape);
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("professores.jsp");
            return;
            
        }
        
    

    

%>
        <div>
            <h1 class="centro">Atualização de Professores</h1>
            
            <div>
                
                <form action="professores-atualizar-ok.jsp" method="post">
                    <label>Siape:</label><input type="text" name="txtSiape" value="<%=obj.getSiape()%>" readonly="readonly"/><br />
                    <label>Nome:</label><input type="text" name="txtNome" value="<%=obj.getNome()%>" /><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>


        
    </body>
</html>
