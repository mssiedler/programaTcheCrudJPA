<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Alunos</h1>
            
            <div>
                
                <form action="alunos-cadastrar-ok.jsp" method="post">
                    <label>Nome:</label><input type="text" name="txtnome" /><br />
                    <label>Matrícula</label><input type="text" 
                                                   name="txtmatricula" /><br />
                    <label>Num. Disciplinas</label><input type="text" /><br />
                    <label>Ativo</label><input type="checkbox" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
