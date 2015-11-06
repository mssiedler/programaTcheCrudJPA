<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Alunos</h1>
            
            <div>
                +<a href="alunos-cadastrar.jsp">Novo Aluno</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Matrícula</th>
                            <th>Nome</th>
                            <th>Disciplinas</th>
                            <th>Matriculado</th>
                            <th>Ações</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>xxxxxx</td>
                            <td>99</td>
                            <td>SIM</td>
                            <td><a href="alunos-atualizar.jsp">Editar</a>
                                <a href="alunos-excluir-ok.jsp?matricula=1">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>xxxxxx</td>
                            <td>99</td>
                            <td>SIM</td>
                            <td><a href="alunos-atualizar.jsp">Editar</a>
                                <a href="alunos-excluir-ok.jsp?matricula=2">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>xxxxxx</td>
                            <td>99</td>
                            <td>SIM</td>
                            <td><a href="alunos-editar.jsp">Editar</a>
                                <a href="alunos-excluir.jsp">Excluir</a>
                            </td>
                            
                        </tr>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>
