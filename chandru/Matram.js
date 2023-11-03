import React from 'react';
import matProPic from '../images/matProPic.png';
import './Matram.css';
function Matram() {
  return (
    <div>
    <div>
      
                <p> NGO </p>
                <a href="/MAATRAMFOUNDATION" className='myorder'> MAATRAM FOUNDATION</a>
                <a href="/THAGAMFOUNDATION" className='myorder'> THAGAM FOUNDATION</a>
                <a href="/URAVUGALFOUNDATION" className='myorder'> URAVUGAL FOUNDATION</a>
                <a href="/AGARAMFOUNDATION" className='myorder'> AGARAM FOUNDATION</a>
                <a href="/SEVALAYAFOUNDATION" className='myorder'> SEVALAYA FOUNDATION</a>

       </div>
    

      <div>
      <h1>MAATRAM FOUNDATION</h1>
      <img class="matpro" src={matProPic} alt="Matram" className="Matram"/>
      <p></p>
      
    </div>
    </div>
  );
};

export default Matram;