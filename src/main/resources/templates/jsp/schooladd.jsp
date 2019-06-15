
<html>
    <head>
          <title>School</title>
        
         <meta charset="utf-8">
  
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
   <style>
    .table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
        border-top: 0 !important;  
   }
    th {
    text-align: right !important;

}
</style> 
 </head>
    <body>
 <c:include file="school_menu.jsp"/>

  <div id="page-wrapper" >
        <ul class="breadcrumb">
               <li><a href="#"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li><a href="#">School</a></li>

            <li class="active">School_form</li>
             <li><a href="#"><span class="glyphicon glyphicon-home"></span>Home</a></li>
            <li><a href="#">School</a></li>

            <li class="active">School_form</li>
        </ul>
        
           </div>
          <br>
          
         <div class="container-fluid" >
                  <div style="margin-top:30px">
                <h3 style="margin-bottom:-17px;">School form</h3><hr style="border:1px solid skyblue;">
            </div>
           
            <div class="panel-body">
                <div class="row">
        <form action="AddSchool" method="post" id="regForm" enctype="multipart/form-data">
            <td><input type="text" name="sch_id" value="" hidden="true"></td>
                     
             <table class="table table-user-information" style="margin-left:-60px;" >
            
            <tr>
                          <th> School Name :</th>
                          <td><input type="text" placeholder="School Name" id="schname"  name="sch_name" required="true" class="form-control col-sm-4"></td>
                           <th>School ID :</th>
                           <td><input type="text" placeholder="School ID" id="password" name="sch_id" value="" required="true"  class="form-control col-sm-4" disabled="true"></td>
                      </tr>
            
            <tr>
                          <th> Registration Number :</th>
                          <td><input type="number" placeholder="Registration Number" id="reg"  name="sch_reg_no" required="true" class="form-control col-sm-4"></td>
                           </tr>
            
            <tr>
                 <th> Email  :  </th>
                           <td>  <input type="email" placeholder="Email" name="sch_email" required="true" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}"  class="form-control col-sm-4"></td>
                     
                          <th>  Total Buses  :</th>
                          <td><input type="number" placeholder="Bus Capacity" id="total_bus"  name="sch_total_bus" required="true" class="form-control col-sm-4"></td>
                           </tr>
            <tr>
                
                <th> Contact number  : </th>
                           <td>  <input type="number" placeholder="Contact number" id="contact"  name="sch_contact" required="true" pattern="^\d{10}$" class="form-control col-sm-4"></td>
                      
                          <th> Telephone number  :</th>
                          <td><input type="number" placeholder="Telephone number" id="contact"  name="sch_telephone" required="true" pattern="^\d{10}$" class="form-control col-sm-4"></td>
                        
                          
                      </tr>
            <tr>
                
                 <th>  Area  :</th>
                          <td><input type="text" placeholder="Area" id="total_bus"  name="sch_area" required="true" class="form-control col-sm-4"></td>
                          
                           <th> City  : </th>
                           <td>  <select name="sch_city" required="true" class="form-control col-sm-4">
                                                         <option value="pune">Pune</option>
                               </select> </td>
                               
                           
                      </tr>
            
                <tr>
                         
                          
                           <th> State  : </th>
                           <td> <select name="sch_state" class="form-control col-sm-4">
                                    <option value="Maharashtra">Maharashtra</option>
                                    </select> </td>
                          <th>Pincode  : </th>
                           <td>  <input type="number" placeholder="Pincode number" id="contact"  name="sch_pin" required="true" class="form-control col-sm-4"></td>
                      </tr>
                <tr>
                          <th> Principal Name  :</th>
                          <td><input type="text" placeholder="Principal Name" id="pname" name="sch_principal_name" required="true" class="form-control col-sm-4"></td>
                           <th> School Website  : </th>
                           <td>  <input type="text" placeholder="School Website" id="pname" name="sch_website" required="true" class="form-control col-sm-4"></td>
                      </tr>
                <tr>
                          <th> School Certificate  :</th>
                          <td><input type="file" id="certi" name="sch_cert"  accept="application/pdf" class="form-control col-sm-4"></td>
                           <th> School logo  : </th>
                           <td>  <input type="file" id="certi" name="sch_logo"  accept="image/*" class="form-control col-sm-4"></td>
                      </tr>
                  
                <tr>
                          <th> Username</th>
                          <td><input type="text" placeholder="User Name" id="username" name="sch_username" required="true" class="form-control col-sm-4"></td>
                           <th> Password  : </th>
                           <td>  <input type="password" placeholder="Password" id="password" name="sch_password" required="true" class="form-control col-sm-4"></td>
                      </tr>
             </table>
             <button type="submit" value="submit" class="btn btn-primary" style="width:20%; font-family: times new roman;font-size: 14px;align:center;">Add School</button>  
           
          
     </form>
               
</div> 
</div> 
</div> 
   </body>
</html>
