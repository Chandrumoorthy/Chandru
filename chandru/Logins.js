// import React, { useEffect, useState } from 'react';
// import PersonIcon from '@mui/icons-material/Person';
import profile from '../images/LoginProfile.png';
import { useNavigate } from 'react-router-dom'; 

import './Login.css';

// const App = () => {}
//   const navigate = useNavigate();
//   const [values, setValues] = useState({
//     email: "",
//     password: "",
//   });
  


function Logins() {
    const navigate = useNavigate();
    
return (
    
  <form action=" ">
    <div className='image'>
  <img src={profile} alt="profile" className="profile"/>
  </div>
    <h1>LOGIN</h1>
      <div class="container">


        <div class="name  ">
        <label><b>USERNAME</b></label><br></br>
        <input type="text" placeholder="Enter Username" name="uname" ></input><br></br><br></br>
        </div>

        
        <div class="name">
        <label><b>PASSWORD</b></label><br></br>
        <input type="password" placeholder="Enter Password" name="uname" ></input><br></br><br></br>
        </div>

        
        <div class="name">
        <label><b>ROLE</b> </label><br></br>
        <select  id="Roles">
          <option>Select Your Role </option>
            <option value="1">Admin</option>
            <option value="2">NGO</option>
            <option value="3">USER</option>
          </select>
        </div><br></br>

        
        <div  class="acc"> 
         <p>Don't have account?<a>signup</a></p><br></br>

    <div class="Forgot"><button>Forgot Password</button></div><br></br>
         
      
         </div>
  

        <div class="btn btn-success">
         <button  class="btn" onClick={()=>{navigate('/Ngo')}} >Register</button>
         </div> 

      </div>
  </form>
  );
};
export default Logins;