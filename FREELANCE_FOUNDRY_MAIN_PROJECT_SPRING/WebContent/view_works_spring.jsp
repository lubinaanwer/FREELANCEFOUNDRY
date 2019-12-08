<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Workers List</h1>  
<table border="2" width="70%" cellpadding="2">  
								<tr>
								<th>ID</th>
								 <th>NAME</th>
								<th>ADDRESS</th>
								<th>GENDER</th>
								<th>AGE</th>
								<th>CATEGORY</th>
								<th>EXPERIENCE</th>
								<th>PHONE NUMBER</th>
								<th>WAGES(per hr)</th>
								<th>STATUS</th>
								</tr>  
    <c:forEach var="worker" items="${list}">   
   <tr>  
   <td>${worker.workerId}</td>
   <td>${worker.workerName}</td>
   <td>${worker.workerAddress}</td>  
   <td>${worker.gender}</td> 
   <td>${worker.age}</td>   
   <td>${worker.workCategory}</td> 
   <td>${worker.experience}</td>  
   <td>${worker.workerPhone}</td>  
   <td>${worker.wages}</td>  
   <td>${worker.status}</td>
  
   
    
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
     