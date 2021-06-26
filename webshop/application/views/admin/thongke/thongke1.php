<html>
    <head>

    </head>
    <body>
    <?php 
    $total=0;
    foreach ($user as $value) { 
        if($value->status==1) { 
								
									
                                    $total+= $value->amount; 
									

   } }
   echo $total
 
?>
    </body>

</html>