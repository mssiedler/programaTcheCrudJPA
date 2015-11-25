<%@page import="java.util.List"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>

<%@include file="cabecalho.jsp"%>
<%
  DisciplinaDAO dao = new DisciplinaDAO();
  List<Disciplina> lista = dao.listar();
  
%>


<div>
            <h1 class="centro">Disciplinas</h1>
           
            <div>
                +<a href="disciplinas-cadastrar.jsp">Nova Disciplina</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>codigo</th>
                            <th>Nome</th>
                            <th>Curso</th>
                            <th>Semestre</th>
                            <th>Professor</th>
                            <th>Ações</th>
                        </tr>
                        <%
                        for(Disciplina obj: lista)
                        {
                        %>
                        <tr>
                            <td><%=obj.getCodigo()%></td>
                            <td><%=obj.getNome()%></td>
                            <td><%=obj.getCurso()%></td>
                            <td><%=obj.getSemestre()%></td>
                            <td><%=obj.getProfessor()%></td>
                            
                            <td><a href="disciplinas-atualizar.jsp?codigo=<%=obj.getCodigo()%>">Editar</a>
                                <a href="disciplinas-excluir-ok.jsp?codigo=<%=obj.getCodigo()%>">Excluir</a>
                            </td>
                            
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>
