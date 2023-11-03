import React from 'react';
import './Ngos.css';
import {Link,Outlet} from 'react-router-dom';

export default function Ngobar() {
    return (
        <div>
            <div>
       

<div className='header'>  
   <nav className="navbar">
   <Link to="/event" >events</Link>
   <Link to="/donation">Donation</Link>
   <Link to="/event">Event</Link>
   <Link to="/">Ngo</Link>
   <Link to="/about us">About us</Link>

   <Outlet/>

</nav>

</div>
</div>
            <aside>
                <p> NGO </p>
                <a href="/MAATRAMFOUNDATION" className='myorder'> MAATRAM FOUNDATION</a>
                <a href="/THAGAMFOUNDATION" className='myorder'> THAGAM FOUNDATION</a>
                <a href="/URAVUGALFOUNDATION" className='myorder'> URAVUGAL FOUNDATION</a>
                <a href="/AGARAMFOUNDATION" className='myorder'> AGARAM FOUNDATION</a>
                <a href="/SEVALAYAFOUNDATION" className='myorder'> SEVALAYA FOUNDATION</a>
          </aside>
         
        </div> 
        

    );
};

