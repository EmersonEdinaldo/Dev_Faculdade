import React, { useState, useEffect } from 'react';
import axios from "axios";

function Design(){
    const [data, setData] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      const result = await axios(
        'http://localhost:8080/Cadastro',
      );

      setData(result.data);
    };

    fetchData();
  }, []);

  return (
    <div>      
      <ul>
        {data.map(user => (
          <li>
            <span>
                Id: {user.id}
            </span> 
            <br/>
            <span>
                Nome: {user.nome}
            </span> 
            <br/>
            <span>
                Telefone: {user.telefone}
            </span> 
            <br/>
            <span>
                Email: {user.email}
            </span>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default Design;


        