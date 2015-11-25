<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="dao.CursoDAO"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="java.util.List"%>
<%@include file="cabecalho.jsp"%>

<%
  if(request.getParameter("codigo") == null)
    {
        response.sendRedirect("disciplinas.jsp");
        return;
    }
  
    Integer codigo = Integer.parseInt(request.getParameter("codigo"));
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(codigo);
    //Achou a disciplina? se não achou volta pra lista
    if(obj==null)
    {
        response.sendRedirect("disciplinas.jsp");
        return;
    }
    
    
    
//Listagem de cursos
    CursoDAO cDAO = new CursoDAO();
    List<Curso> cLista = cDAO.listar();
//listagem de professores
    ProfessorDAO pDAO = new ProfessorDAO();
    List<Professor> pLista = pDAO.listar();


%>
<div>
    <h1 class="centro">Atualização de Disciplinas</h1>

    <div>

        <form action="disciplinas-atualizar-ok.jsp" method="post">
            <label>Código:</label><input type="text" name="txtcodigo" value="<%=obj.getCodigo()%>" readonly/><br />

            <label>Nome:</label><input type="text" name="txtnome" value="<%=obj.getNome()%>"/><br />
            <label>Semestre:</label><input type="text" 
                                           name="txtsemestre" value="<%=obj.getSemestre()%>"/><br />
            <label>Curso</label>
            <select name="selcurso">
                <option value="">Selecione</option>
                <%                            //percorrer minha lista de cursos
                String selected = "";    
                for (Curso c : cLista) {
                     if(c.getCodigo() == obj.getCurso().getCodigo())
                     {
                         selected = "selected";
                     }
                %>
                <option value="<%=c.getCodigo()%>" <%=selected%>><%=c%></option>
                <%
                    selected = "";
                    }
                %>
            </select><br />
            <label>Professor</label>
            <select name="selprofessor">
                <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                selected = "";
                for (Professor p : pLista) {
                    if(p.getSiape()== obj.getProfessor().getSiape())
                     {
                         selected = "selected";
                     }
                %>
                    <option value="<%=p.getSiape()%>" <%=selected%>><%=p%></option>
                <%
                selected = "";
                }
                %>
            </select>
            <br />
            
            <input type="submit" value="Atualizar" />
        </form>
    </div>
</div>



</body>
</html>
