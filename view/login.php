<!DOCTYPE html>
<html lang="en" >
<head>
    <style>
        html, body {
  border: 0;
  padding: 0;
  margin: 0;
  height: 100%;
}

body {
  background: #000;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 16px;
}

form {
  background: white;
  width: 40%;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
  font-family: lato;
  position: relative;
  color: #333;
  border-radius: 10px;
}
form header {
  background: #FF3838;
  padding: 30px 20px;
  color: white;
  font-size: 1.2em;
  font-weight: 600;
  border-radius: 10px 10px 0 0;
}
form label {
  margin-left: 20px;
  display: inline-block;
  margin-top: 30px;
  margin-bottom: 5px;
  position: relative;
}
form label span {
  color: #FF3838;
  font-size: 2em;
  position: absolute;
  left: 2.3em;
  top: -10px;
}
form input {
  display: block;
  width: 78%;
  margin-left: 20px;
  padding: 5px 20px;
  font-size: 1em;
  border-radius: 3px;
  outline: none;
  border: 1px solid #ccc;
}
form .help {
  margin-left: 20px;
  font-size: 0.8em;
  color: #777;
}
form button {
  position: relative;
  margin-top: 30px;
  margin-bottom: 30px;
  left: 50%;
  transform: translate(-50%, 0);
  font-family: inherit;
  color: white;
  background: #000;
  outline: none;
  border: none;
  padding: 5px 15px;
  font-size: 1.3em;
  font-weight: 400;
  border-radius: 3px;
  box-shadow: 0px 0px 10px rgba(51, 51, 51, 0.4);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}
form button:hover {
  background: #ff5252;
}
#centro {
position:absolute;
left:50%;
margin-left:-50px;
min-height: 40px;

}
    </style>
  <meta charset="UTF-8">
  <title>Área de LOGIN DE HOLOCRON</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  
    <form role="form" action="logando"  method="post" enctype="multipart/form-data">
  <header>Login</header>
  <label>Login <span>*</span></label>
  <input type="text" name="login">
  <label>Senha <span>*</span></label>
  <input  type="password" name="senha">
   <label>Captcha <span>*</span></label>
   <input  type="text" name="caracteres"><br>
          
  <img src="includes/captcha/gera.php" alt="Caracteres" id="centro" />

<br>
  <button type="submit">Entrar</button>
</form>
  
  
</body>
</html>
