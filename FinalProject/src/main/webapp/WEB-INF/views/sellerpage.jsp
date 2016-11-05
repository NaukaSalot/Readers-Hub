<%@page import="com.neu.readershub.DAO.CategoryDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%
//get the category list
		CategoryDAO categorydao=new CategoryDAO();
      
        java.util.List categoryList = categorydao.list();
        pageContext.setAttribute("categories", categoryList);
%>

<html>
    <head>
        <title>Add Book Form</title>
    </head>
    <body>

        <h2>Posting a New Book</h2>

        <form:form action="addbooks.htm" commandName="books" method="post" >

            <table>

                <tr> 
                    <td>Category:</td>
                    <td>
                        <form:select path="category_name">
                            <c:forEach var="categ" items="${categories}">
                                <form:option value="${categ.categoryName}"/>
                            </c:forEach>
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <td>Book Name:</td>
                    <td><form:input path="bookName" size="30" /> <font color="red"><form:errors path="bookName"/></font></td>
                </tr>

                <tr>
                    <td>Book Price:</td>
                    <td><form:input path="bookPrice" size="30" /> <font color="red"><form:errors path="bookPrice"/></font></td>
                </tr>

                <tr>
                    <td>Book Description:</td>
                    <td><form:input path="bookDesc" size="30" /> <font color="red"><form:errors path="bookDesc"/></font></td>
                </tr>
              
                
                <tr>
                    <td>Rewards:</td>
                    <td><form:input path="rewards" size="30" /> <font color="red"><form:errors path="rewards"/></font></td>
                </tr>
                
         

                <tr>
                    <td colspan="2"><input type="submit" value="Add Book" /></td>
                </tr>
            </table>

        </form:form>

    </body>
</html>