<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Professores</h1>
            
            <div>
                +<a href="professores-cadastrar.jsp">Novo Professor</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Siape</th>
                            <th>Nome</th>
                            
                            <th>Ações</th>
                        </tr>
                        <tr>
                            <td>123</td>
                            <td>Alex</td>
                            <td><a href="professores-editar.jsp?siape=123">Editar</a>
                                <a href="professores-excluir-ok.jsp?siape=123">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>999</td>
                            <td>Marcelo</td>
                            <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir-ok.jsp?siape=999">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>xxxxxx</td>
                            <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir.jsp">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>xxxxxx</td>
                            <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir.jsp">Excluir</a>
                            </td>
                            
                        </tr>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>
