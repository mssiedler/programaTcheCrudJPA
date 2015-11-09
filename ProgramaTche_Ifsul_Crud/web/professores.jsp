<%@page import="modelo.Professor"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
ProfessorDAO dao = new ProfessorDAO();

List<Professor> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contrário eu trago todos os professores
if(request.getParameter("txtFiltro")!=null && request.getParameter("txtFiltro")!="")
{
    String txtFiltro = request.getParameter("txtFiltro");
    lista = dao.listar(txtFiltro);
}
else
{
    lista = dao.listar();
}

%>
        <div>
            <h1 class="centro">Professores</h1>
            
            <div>
                +<a href="professores-cadastrar.jsp">Novo Professor</a><br />
                
                 
                <form action="professores.jsp" method="post">
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
               
                 
                
                
                    <table>
                        <tr>
                            <th>Siape</th>
                            <th>Nome</th>
                            
                            <th>Ações</th>
                        </tr>
                        <%
                        for(Professor item:lista)
                        {
                        %>
                        <tr>
                            <td><%=item.getSiape()%></td>
                            <td><%=item.getNome()%></td>
                            <td><a href="professores-atualizar.jsp?siape=<%=item.getSiape()%>">Editar</a>
                                <a href="professores-excluir-ok.jsp?siape=<%=item.getSiape()%>">Excluir</a>
                            </td>
                            
                        </tr>
                       <%
                        }
                       %>
                    </table>
                    
                
            </div>
        </div>
    </body>
</html>
