<?php
include 'functions.php';
if( //se i dati passati in get non sono vuoti e se la funzione di controllo restituisce true
    !empty($_GET) //&& controlla_dati($_GET['node_id'], $_GET['page_num'], intval($_GET['page_size']))
) {
    // recuperare i dati del nodo 
    $node_id = intval($_GET['node_id']);
    $page_num = intval($_GET['page_num']);
    $page_size = intval($_GET['page_size']);
    $search_keyword = $_GET['search_keyword'];
    $language = $_GET['language'];
    // cerca il nodo nel db
    //query di ricerca con i relativi dettagli
    if (empty($search_keyword)) { //se non è stata digitata la parola chiave
        $sql =  "SELECT idNode, language FROM `node_tree_names` WHERE idNode = $node_id AND language = '$language'"; //seleziona dalla tabella node_tree_names tutti i nodi con l'id e la lingua digitati in imput
    } else { //altrimenti fai lo stesso ma in più c'è la parola chiave digitata
        $sql =  "SELECT idNode, language FROM `node_tree_names` WHERE idNode = $node_id AND language = '$language' AND nodeName = '$search_keyword'";
    }

    $result = esegui_query($sql); //esegue la query e la salva in result
    $row = $result->fetch_array(MYSQLI_ASSOC);
	echo $row;
   
    
    if ($result) { //se la query va a buon fine
        $array = [
            [ 
                'idNode' => $node_id,
                'language' => $language,
                'search_keyword' => $search_keyword
            ]
        ];
        $api = json_encode($array);
    } 
    echo $api;
} else { //altrimenti result è = false e quindi non esegue niente
     $result = false;
}
 ?>