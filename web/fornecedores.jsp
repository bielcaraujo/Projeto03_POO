<%@page import="usuario.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
     <div class="content-wrapper">
         <center><h1>Cadastro de Fornecedores</h1>
        <% 
            try{
                
            if((request.getParameter("add")!=null)){
                String nome= request.getParameter("nome");
                String razao =request.getParameter("razao");
                String cnpj =request.getParameter("cnpj");
                String email =request.getParameter("email");
                String tel =request.getParameter("tel");
                String ender =request.getParameter("ender");
                Fornecedor c=new Fornecedor();
                c.setNome(nome);
                c.setRazao(razao); 
                c.setCnpj(cnpj); 
                c.setEmail(email); 
                c.setTel(tel); 
                c.setEnder(ender);
                Fornecedor.getList().add(c);
                response.sendRedirect(request.getRequestURI());
            }
            else if(request.getParameter("remove")!=null){
                int i=Integer.parseInt(request.getParameter("index"));
                Fornecedor.getList().remove(i);}
            
             else if (request.getParameter("salvar") != null) { 
             int index = Integer.parseInt(request.getParameter("index"));
             String nome= request.getParameter("nome");
                String razao =request.getParameter("razao");
                String cnpj =request.getParameter("cnpj");
                String email =request.getParameter("email");
                String tel =request.getParameter("tel");
                String ender =request.getParameter("ender");
                Fornecedor c=new Fornecedor();
                c.setNome(nome);
                c.setRazao(razao); 
                c.setCnpj(cnpj); 
                c.setEmail(email); 
                c.setTel(tel); 
                c.setEnder(ender);
                Fornecedor.getList().set(index,c);
               
         }
            
            }catch(Exception ex){%>
        <%}%>
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Registrar Fornecedor</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">Nome</label>
            <input class="form-control" type="text" name="nome"/>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">Razão Social</label>
                <input class="form-control" type="text" name="razao"/>
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">CNPJ</label>
                <input class="form-control" type="text" name="cnpj"/>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">E-mail</label>
            <input class="form-control" type="text" name="email"/>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Telefone</label>
                <input class="form-control" type="text" name="tel"/>
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Endereço</label>
                <input class="form-control" type="text" name="ender"/>
              </div>
            </div>
          </div>
          <input type="submit" class="btn btn-primary btn-block" name="add" value="Registrar"/>
        </form>
      </div>
    </div>
  </div>
        
        <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>Lista de Cliente</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
 		<tr>
                  <th>Índice</th>
                  <th>Nome</th>
                  <th>Razão Social</th>
                  <th>CNPJ</th>
                  <th>E-mail</th>
                  <th>Telefone</th>
                  <th>Endereço</th>
                  <th>Exclusão</th>
                  <th>Alteração</th>
       </tr>
              </thead>
              <tbody>
                  
        <%if(request.getParameter("alterar") == null) {
        for (int i=0; i<Fornecedor.getList().size(); i++){%>
        <%Fornecedor c= Fornecedor.getList().get(i);
        %>
        <tr>
            <td><%=i%></td>
            <td><%=c.getNome()%></td>
            <td><%=c.getRazao()%></td>
            <td><%=c.getCnpj()%></td>
            <td><%=c.getEmail()%></td>
            <td><%=c.getTel()%></td>
            <td><%=c.getEnder()%></td>
        <td>
        <form>
            <input type="hidden" name="index" value="<%=i%>"/>
            <input type="submit" name="remove" value="Excluir"/>
        </form>
        </td>
        <td>
            <form>
                <input type="hidden" name="index" value="<%=i%>"/>
                <input type="submit" name="alterar" value="Alterar"/>
            </form> 
        </td>
        </tr>
         <%}}
        else {
            for (int i=0; i<Fornecedor.getList().size(); i++){
              Fornecedor c = Fornecedor.getList().get(i);
                if(i != Integer.parseInt(request.getParameter("index"))){%>
                    <tr>
                        <td><%=i%></td>
                        <td><%=c.getNome()%></td>
                        <td><%=c.getCnpj()%></td>
                        <td><%=c.getRazao()%></td>
                        <td><%=c.getEmail()%></td>
                        <td><%=c.getTel()%></td>
                        <td><%=c.getEnder()%></td>             
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input type="submit" name="remover" value="Excluir"/>
                        </form>
                    </td>
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input type="submit" name="alterar" value="Alterar"/>
                        </form>
                    </td>
                    </tr>
                    <%}else {%>
                    <tr>
                        <form>
                        <td><%=i%></td>
                        <td><input type="text" name="nome" size="5" value="<%=c.getNome()%>"></cd>
                        <td><input type="text" name="cpf" size="6" value="<%=c.getCnpj()%>"></td>
                        <td><input type="text" name="rg" size="6" value="<%=c.getRazao()%>"></td>
                        <td><input type="text" name="email" size="6" value="<%=c.getEmail()%>"></td>
                        <td><input type="number" name="tel" value="<%=c.getTel()%>"></td>
                        <td><input type="text" name="ender" size="6" value="<%=c.getEnder()%>"/></td>
                        <input type="hidden" name="index" value="<%=i%>"/>
                        <td><input type="submit" value="Salvar" name="salvar"</td>
                        </form>
                    </tr>
                            
        <%}}}%>
              </tbody>
              <tfoot>
                <tr>
                  <th>Índice</th>
                  <th>Nome</th>
                  <th>Razão Social</th>
                  <th>CNPJ</th>
                  <th>E-mail</th>
                  <th>Telefone</th>
                  <th>Endereço</th>
                  <th>Exclusão</th>
                  <th>Alteração</th>
                </tr>
              </tfoot>
            </table>
          </div>
        </div>
    </div>

        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
