<%@page import="usuario.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
    </head>
    <body>
        <h1>Cadastro de fornecedores</h1>
        <% 
            try{
            if(request.getParameter("remove")!=null){
                int i=Integer.parseInt(request.getParameter("index"));
                Fornecedor.getList().remove(i);}
            else if((request.getParameter("add")!=null)){
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
            
            }catch(Exception ex){%>
        <%}%>
        <h2>Novo contato</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nome"/></br>
            Razao:<br/>
            <input type="text" name="razao"/><br>
            Cnpj:<br/>
            <input type="text" name="cnpj"/></br>
            Email:<br/>
            <input type="text" name="email"/></br>
            Telefone:<br/>
            <input type="text" name="tel"/><br/>
            Endereço:<br/>
            <input type="text" name="ender"/><br/>
            <input type="submit" name="add" value="adcionar"/>
        </form>
        
        <table border ="1">
            <tr>
                <th>índice</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Exclusão</th>
                <th>Alterar</th>
            </tr>
        <h2>lista</h2>
        <%try{%>
        <%int i=0;%>
        <%for(Fornecedor c: Fornecedor.getList()){%>
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
            <input type="hidden" name="index" value="<%=(i++)%>"/>
            <input type="submit" name="remove" value="Excluir"/>
        </form>
        </td>
        </tr>
        <%}%>
        <%}catch(Exception ex){%>
        <tr>
            <td colspan="5">
                Erro ao carregar a lista<%=ex.getMessage()%>
            </td>
            <%}%>
        </table>
        </table>
    </body>
</html>
