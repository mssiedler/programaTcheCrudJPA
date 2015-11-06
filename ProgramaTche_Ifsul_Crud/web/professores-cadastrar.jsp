<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Professores</h1>
            
            <div>
                
                <form action="professores-cadastrar-ok.jsp">
                    <label>Nome:</label><input type="text" /><br />
                    <label>Matrícula</label><input type="text" /><br />
                    <label>Num. Disciplinas</label><input type="text" /><br />
                    <label>Ativo</label><input type="checkbox" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
