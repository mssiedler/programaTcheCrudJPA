<%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="dao.CursoDAO"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="java.util.List"%>
<%@include file="cabecalho.jsp"%>

<%
//Listagem de cursos
    CursoDAO cDAO = new CursoDAO();
    List<Curso> cLista = cDAO.listar();
//listagem de professores
    ProfessorDAO pDAO = new ProfessorDAO();
    List<Professor> pLista = pDAO.listar();


%>
<div>
    <h1 class="centro">Cadastro de Disciplinas</h1>

    <div>

        <form action="disciplinas-cadastrar-ok.jsp" method="post">
            <label>Código:</label><input type="text" name="txtcodigo" /><br />

            <label>Nome:</label><input type="text" name="txtnome" /><br />
            <label>Semestre:</label><input type="text" 
                                           name="txtsemestre" /><br />
            <label>Curso</label>
            <select name="selcurso">
                <option value="">Selecione</option>
                <%                            //percorrer minha lista de cursos
                    for (Curso c : cLista) {
                %>
                <option value="<%=c.getCodigo()%>"><%=c%></option>
                <%
                    }
                %>
            </select><br />
            <label>Professor</label>
            <select name="selprofessor">
                <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                for (Professor p : pLista) {
                %>
                    <option value="<%=p.getSiape()%>"><%=p%></option>
                <%
                }
                %>
            </select>
            <br />
            <input type="reset" value="Limpar" />
            <input type="submit" value="Cadastrar" />
        </form>
    </div>
</div>



</body>
</html>
