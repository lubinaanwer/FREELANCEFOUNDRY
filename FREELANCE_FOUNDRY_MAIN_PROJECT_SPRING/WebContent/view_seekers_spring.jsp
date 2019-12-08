<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Seekers List</h1>  
<table border="2" width="70%" cellpadding="2">  
								<tr>
								
								<th>ID</th>
								<th>NAME</th>
								<th>ADDRESS</th>
								<th>PHONE</th>
								<th>ACTION</th>
								</tr>  
    <c:forEach var="seeker" items="${list}">   
   <tr>  
  
   <td>${seeker.seekerId}</td>  
   <td>${seeker.seekerName}</td>  
   <td>${seeker.seekerAddress}</td> 
   <td>${seeker.seekerPhone}</td>   
   <td><a href="editSeeker/${seeker.seekerId}">Edit</a></td>  
   <td><a href="deleteSeeker/${seeker.seekerId}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
     