<%-- 
    Document   : inserirAssociado
    Created on : 29 de mar. de 2023, 14:24:56
    Author     : andre_s_lima
--%>

<%@page import="DAO.CadastraDAO"%>
<%@page import="DTO.CadastraDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir Associado</title>
    </head>
    <body>

        <%
            try {
            CadastraDTO objcadastraDTO = new CadastraDTO();
            
            objcadastraDTO.setCpf(request.getParameter("cpf"));
            objcadastraDTO.setNome_completo(request.getParameter("nome_completo"));
            objcadastraDTO.setTelefone(request.getParameter("telefone"));
            objcadastraDTO.setEmail(request.getParameter("email"));
          
            CadastraDAO objcadastraDAO = new CadastraDAO();
            objcadastraDAO.cadastra(objcadastraDTO);
                } catch (Exception e) {
                }
        %>
    
    </body>
</html>
