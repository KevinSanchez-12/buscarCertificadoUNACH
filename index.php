<?php include 'database-eventos/conexion.php';?>
<!DOCTYPE html>
<html lang="es">
<?php include 'components-eventos/head.php';?>
<body>
    <section class="sub-body">
        <h1 class="title">CERTIFICADOS UNACH</h1>
        <form method="post">
            <input name="PalabraClave" id="inlineFormInput" type="text" placeholder="Ingrese el código de su certificado" required>
            <input name="buscar" type="hidden" class="form-control mb-2" id="inlineFormInput" value="v">
            <button type="submit">buscar</button>
        </form>
        <?php
            if(!empty($_POST))
            {
                $aKeyword = explode(" ", $_POST['PalabraClave']);
                $query ="SELECT * FROM usuarios WHERE codigo like '" . $aKeyword[0] . "'";
                for($i = 1; $i < count($aKeyword); $i++) {
                    if(!empty($aKeyword[$i])) {
                        $query .= " OR id like '%" . $aKeyword[$i] . "%'";
                    }
                }
                $result = $db->query($query);
                echo "<h1 class='word-a'>Has buscado el código:</h1><h1 class='word-b'>".$_POST['PalabraClave']."</h1>";    
                if(mysqli_num_rows($result) > 0) {
                    $row_count=0;
                    echo "<h1 class='word-c'>Resultados Encontrados:</h1>";
                    echo "<table class='table'>";
                    While($row = $result->fetch_assoc()) {   
                        $row_count++;
                        // echo "<div>DNI</div>";
                        // echo "<div>Nombres</div>";
                        // echo "<div>Apellidos</div>";
                        // echo "<div>Certificado</div>";
                        // echo "<td>".$row['codigo']."</td>";
                        // echo "<td>".$row['nombres']."</td>";
                        // echo "<td>".$row['apellidos']."</td>";
                        //echo "<iframe src='http://docs.google.com/gview?url=http://www.scielo.org.pe/pdf/hm/v18n2/a05v18n2.pdf &embedded=true' style='width:90%; margin:auto; height:700px;' frameborder='0' ></iframe>";
                        echo "<h1 class='success'><span class='icon-ok'></span>Certificado Comprobado</h1>";
                        //echo "<td class='img'><img src='".$row['certificado']."'/></td>";
                        echo "<a class='down' href='".$row['certificado']."' download='Certificado'><span class='icon-download-1'></span>Descargar</a>";
                        // echo "<td>".$row['codigo']."</td>"."<td>".$row['nombres']."</td>"."<td><img src='".$row['certificado']."' height=200px width=200px /></td>";
                    }
                    echo "</table>";
                    
                    
                    echo "<p class='mensaje'>El certificado fue otorgado y verificado por la Universidad Nacional Autónoma de Chota  y toda su información es válida.</p>";
                }
            else {
                echo "<h1 class='fail'>No se encontró resultados</h1>";
            }
            }   
        ?>
    </section>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="assets-eventos/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="assets-eventos/js/vendor/popper.min.js"></script>
</html>