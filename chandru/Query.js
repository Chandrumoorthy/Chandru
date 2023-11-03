import React from 'react';
import './Query.css';

function Query() {
 
  return (
    <form>
    <h1>QUERY FORM</h1>
      <div class="container">

        <div class="id">
        <label ><b> QUERYID</b></label><br></br>
        <input type="text" placeholder="Enter QueryID" name="QueryID " required></input><br></br><br></br>
        </div>

        <div class="Desc  ">
        <label><b>USER_ID</b></label><br></br>
        <input type="text" placeholder="Enter Your UserID" name="uname" required></input><br></br><br></br>
        </div>

        <div class="Desc">
        <label><b>QUERY_DESCRIPTION</b></label><br></br>
        <input type="text" placeholder="Enter QueryDescription" name="QueryDesc" required></input><br></br><br></br>
        </div>

        
      
        <div class="btn btn-success">
         <button  class="btn">submit</button>
         </div> 
            
        

   

      </div>
  </form>
  )
}

export default Query
