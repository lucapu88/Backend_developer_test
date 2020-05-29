<?php
//pagina di tutte le funzioni utilizzate

function connessione_db() { //login
    include 'db_config.php';
    $conn = new mysqli($servername, $username, $password, $dbname);
    return $conn;
}

function esegui_query($query) {
    // Connessione al database
    $conn = connessione_db();
    // Check connection
    if ($conn && $conn->connect_error) { //se non c'è connessione e se ci sono errori nella connessione
        return null;
    } else { //altrimenti, c'è connessione e quindi esegui la query
        $result = $conn->query($query);
        $conn->close(); //chiudi la connessione
        return $result; //restituisci la query immagazzinata in result
    }
}

// function controlla_dati($node_id, $page_num, $page_size) { //controlla i dati passati:
//     if(
//         !empty($node_id) && // che non siano vuoti
//         is_numeric($page_num) && //che siano numeri
//         intval($page_size) >= 0 && //che sia maggiore o uguale a 0
//         intval($page_size) <= 1000  //che sia minore o uguale di 1000
//     ) {
//         return true;
//     } else {
//         return false;
//     }
// }

?>
