

import {useEffect, useState} from 'react';

import axios from 'axios';



function App() {

  const [rooms, setRooms] = useState([]);



  useEffect(() => {

    axios

      .get(

        "https://8080-admirdemaj-gitpodworksp-u4rffxtkpd1.ws-eu47.gitpod.io/api/rest/application"

      )

      .then((res) => {

        console.log(res.data.message);

        setRooms(res.data.message);

      });

  }, []);

  return (
    <div className="App">

      <center>

      <h1>Chatroom Details</h1>

      <tbody>

        {rooms.map((room) => (
        <tr key={room.User_Id}>
              <td>User_ID: {room.User_Id}</td>

            <td>message: {room.message_text}</td> 
          </tr>

        ))}

      </tbody>

      </center>

    </div>

   

  );

}



export default App;

