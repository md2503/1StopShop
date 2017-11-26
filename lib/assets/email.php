<?php

  $to = "noorelsakka65@gmail.com";
  $subject = "Div";
  $message = $_POST["data"];
  $headers = "From: The Server <server@doe.com>" . "\r\n" .
             "Content-type: text/html" . "\r\n";

  mail($to, $subject, $message, $headers);

?>