// import { Link } from 'react-router-dom';
import React from 'react'
import './Ngo.css';
// import profile from '../images/Ngo profile pic.png';
import { useNavigate } from 'react-router-dom';
import axios from "axios";
import { useState } from 'react';

/*
        "ngo_id": "NGO005",
        "ngo_name": "Sevalaya",
        "ngo_phone_number": 9444333529,
        "ngo_mail_id": "'sevalayasv@gmail.com",
        "ngo_focus_area": "Social",
        "ngo_website": "https://sevalaya.org/",
        "ngo_address": "12, F-2, First Floor, Pushkarani Apartments, Ananda Rd, Alwarpet, Chennai, Tamil Nadu 600018",
        "ngo_legal_status": "Active",
        "ngo_founded_year": 2004,
        "ngo_subscription": "Subscribed",
        "ngo_password": "sevalaya@123"
*/


const Ngo = () => {
  const [ngo_name, setNgo_name] = useState('')
  const [ngo_phone_number, setNgo_phone_number] = useState('')
  const [ngo_mail_id, setNgo_mail_id] = useState('')
  const [ngo_focus_area, setNgo_focus_area] = useState('')
  const [ngo_website, setNgo_website] = useState('')
  const [ngo_address, setNgo_address] = useState('')
  const [ngo_legal_status, setNgo_legal_status] = useState('')
  const [ngo_founded_year, setNgo_founded_year] = useState('')
  const [ngo_subscription, setNgo_subscription] = useState('')
  const [ngo_password, setNgo_password] = useState('')

  // const handleSubmit = (e) => {
  //   e.preventDefault();
  //   console.log({
  //     ngo_name: ngo_name,
  //     ngo_phone_number: ngo_phone_number,
  //     ngo_mail_id: ngo_mail_id,
  //     ngo_focus_area: ngo_focus_area,
  //     ngo_website: ngo_website,
  //     ngo_address: ngo_address,
  //     ngo_legal_status: ngo_legal_status,
  //     ngo_founded_year: ngo_founded_year,
  //     ngo_subscription: ngo_subscription,
  //     ngo_password: ngo_password
  //   })
const handleSubmit = () => {
  axios.post("http://localhost:8080/addNgoModel", JSON.stringify({
    ngo_name: ngo_name,
    ngo_phone_number: ngo_phone_number,
    ngo_mail_id: ngo_mail_id,
    ngo_focus_area: ngo_focus_area,
    ngo_website: ngo_website,
    ngo_address: ngo_address,
    ngo_legal_status: ngo_legal_status,
    ngo_founded_year: ngo_founded_year,
    ngo_subscription: ngo_subscription,
    ngo_password: ngo_password
  }), { headers: { "Content-Type": "application/json" } })
    .then((Response) => {
      console.log(Response.data)
      alert('Successfully Register NGO')
    })
    .catch((err) => {
      console.log(err)
      console.log(err.Response)
    })
  }

  //   const headers = {
  //     method: "POST",
  //     body: JSON.stringify({
  //       ngo_name: ngo_name,
  //       ngo_phone_number: ngo_phone_number,
  //       ngo_mail_id: ngo_mail_id,
  //       ngo_focus_area:ngo_focus_area,
  //       ngo_website:ngo_website,
  //       ngo_address: ngo_address,
  //       ngo_legal_status: ngo_legal_status,
  //       ngo_founded_year: ngo_founded_year,
  //       ngo_subscription: ngo_subscription,
  //       ngo_password: ngo_password
  //     }),
  //     headers: {
  //       'Content-Type': 'application/json'
  //     }
  // };

  // fetch("http://localhost:8080/addNgoModel", headers)
  // .then(e => {e.json();console.log(e)})
  // .catch((err) => {
  //       console.log(err)
  //       console.log(err.Response)
  //   })




return (
  <div>
    <h1>NGO FORM</h1>
    <form>
      {/* <div className='image'>
  <img src={profile} alt="profile" className="profile"/>
  </div> */}

      {/* <div class="name  ">
        <label><b>NGO_id</b></label><br></br>
        <input type="text" placeholder="Enter NGO_id" name="uname" onChange={(e)=>setNgo_id} required></input><br></br><br></br>
        </div> */}


      <div class="name  ">
        <label><b>NGO_name</b></label><br />
        <input type="text" placeholder="Enter NGO_name" name="uname" onChange={(e) => setNgo_name(e.target.value)} required /><br /><br />
      </div>

      <div class="name  ">
        <label><b>NGO_phoneNumber</b></label><br />
        <input type="tel" placeholder="Enter NGO_phoneNumber" name="uname" onChange={(e) => setNgo_phone_number(e.target.value)} required /><br /><br />
      </div>

      <div class="name  ">
        <label><b>NGO_mailid</b></label><br />
        <input type="email" placeholder="Enter mailid" name="uname" onChange={(e) => setNgo_mail_id(e.target.value)} required /><br /><br />
      </div>


      <div class="name ">
        <label><b>NGO_Focusarea</b></label><br />
        <input type="text" placeholder="Enter Focusarea" name="uname" onChange={(e) => setNgo_focus_area(e.target.value)} required /><br /><br />
      </div>


      <div class="name  ">
        <label><b>NGO_website</b></label><br />
        <input type="url" placeholder="Enter NGO_website" name="uname" onChange={(e) => setNgo_website(e.target.value)} required /><br /><br />
      </div>


      <div class="name1  ">
        <label><b>NGO_address</b></label><br />
        <input type="text" placeholder="Enter NGO_address" name="uname" onChange={(e) => setNgo_address(e.target.value)} required /><br /><br />
      </div>

      <div class="name1  ">
        <label><b>NGO_subscription</b></label><br />
        <input type="text" placeholder="Enter NGO_subscription" name="uname" onChange={(e) => setNgo_subscription(e.target.value)} required /><br /><br />
      </div>


      <div class="name1  ">
        <label><b>NGO_password</b></label><br />
        <input type="password" placeholder="Enter NGO_password" name="uname" onChange={(e) => setNgo_password(e.target.value)} required /><br /><br />
      </div>


      <div class="name1  ">
        <label><b>NGO_legal_status</b></label><br />
        <select placeholder='Select Your Status' onChange={(e) => setNgo_legal_status(e.target.value)} id="Roles" required>

          <option value="" disabled selected hidden>Select </option>
          <option value1="1">Active</option>
          <option value1="1">Inactive</option>
        </select>
      </div>


      <div class="name">
        <label><b>Ngo_founded_year </b></label><br />
        <input type="number" placeholder="Enter NGO_foundedYear " name="uname" onChange={(e) => setNgo_founded_year(e.target.value)} required /><br /><br />
      </div>




      <div class="btn btn-primary">
        <button onClick={handleSubmit} className="btn" type="submit">
          Register</button>
      </div>

    </form>
  </div>
);
};

export default Ngo;