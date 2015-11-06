<%@include file="cabecalho.jsp"%>
<%
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String nome = request.getParameter("txtnome");
String matr = request.getParameter("txtmatricula");
%>
         <h1 class="centro">Cadastro de Alunos</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             Nome:<%=nome%><br />
             Matrícula:<%=matr%><br />
             <a href="alunos.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
