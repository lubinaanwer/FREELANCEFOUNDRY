<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Edit New Seeker</h1>  
       <form:form method="post" action="/freelance_foundry/editSave">    
        <table >    
        <tr>    
          <td>Id: </td>   
          <td><form:input path="seekerId"  /></td>  
         </tr>    
         <tr>  
         <tr>    
          <td>Name : </td>   
          <td><form:input path="seekerName"  /></td>  
         </tr>    
         <tr>    
          <td>Address :</td>    
          <td><form:input path="seekerAddress" /></td>  
         </tr>   
         <tr>    
          <td>Phone :</td>    
          <td><form:input path="seekerPhone" /></td>  
         </tr>  
         <tr>    
         	<td><form:hidden path="adminApproval" /></td>  
         </tr>  
         <tr>  
           
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    