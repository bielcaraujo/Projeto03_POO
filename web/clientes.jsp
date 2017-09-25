<%@page import="usuario.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <h1>Cadastro de clientes</h1>
        <% 
            try{
            if(request.getParameter("remove")!=null){
                int i=Integer.parseInt(request.getParameter("index"));
                Cliente.getList().remove(i);}
            else if((request.getParameter("add")!=null)){
                String nome= request.getParameter("nome");
                String cpf =request.getParameter("cpf");
                String rg =request.getParameter("rg");
                String email =request.getParameter("email");
                String tel =request.getParameter("tel");
                String ender =request.getParameter("ender");
                Cliente c=new Cliente();
                c.setNome(nome);
                c.setCpf(cpf); 
                c.setRg(rg); 
                c.setEmail(email); 
                c.setTel(tel); 
                c.setEnder(ender);
                Cliente.getList().add(c);
                response.sendRedirect(request.getRequestURI());
            }
            
            }catch(Exception ex){%>
        <%}%>
        <h2>Novo contato</h2>
        <form>
            Nome:<br/>
            <input type="text" name="nome"/></br>
            Cpf:<br/>
            <input type="text" name="cpf"/><br>
            Rg:<br/>
            <input type="text" name="rg"/></br>
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
                <th>Cpf</th>
                <th>Rg</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Exclusão</th>
                <th>Alterar</th>
            </tr>
        <h2>lista</h2>
        <%try{%>
        <%int i=0;%>
        <%for(Cliente c: Cliente.getList()){%>
        <tr>
            <td><%=i%></td>
            <td><%=c.getNome()%></td>
            <td><%=c.getCpf()%></td>
            <td><%=c.getRg()%></td>
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
