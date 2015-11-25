 <%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="cabecalho.jsp"%>
<%
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String codigo = request.getParameter("txtcodigo");
String nome = request.getParameter("txtnome");
String codigocurso = request.getParameter("selcurso"); // Chave estrangeira
String semestre = request.getParameter("txtsemestre");
String siapeprofessor = request.getParameter("selprofessor"); //Chave Estrangeira

DisciplinaDAO dao = new DisciplinaDAO();
Disciplina obj = dao.buscarPorChavePrimaria(Integer.parseInt(codigo));


//Montar as FK - chave estrangeira
Professor objProf = new Professor();

objProf.setSiape(siapeprofessor);

Curso objCurso = new Curso();
objCurso.setCodigo(Integer.parseInt(codigocurso));

//populando o obj disciplina
obj.setCurso(objCurso);
obj.setNome(nome);
obj.setProfessor(objProf);
obj.setSemestre(Integer.parseInt(semestre));

dao.alterar(obj);
%>
         <h1 class="centro">Atualização de Disciplina</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="disciplinas.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
