<?php
include 'functions.php';
// apertura tag html, head e body + inclusione navbar
include 'layout/head.php';
?>
<main>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form method="get" action="api.php">
                  <div class="form-group">
                    <label for="node_id">Node ID</label>
                    <input name="node_id" type="text" class="form-control" id="node_id" placeholder="Node ID" required>
                  </div>
                  <div class="form-group">
                    <label for="language">Language</label>
                    <input name="language" type="text" class="form-control" id="language" placeholder="Language" required>
                  </div>
                  <div class="form-group">
                    <label for="search_keyword">Search Keyword</label>
                    <input name="search_keyword" type="text" class="form-control" id="search_keyword" placeholder="Search Keyword">
                  </div>
                  <div class="form-group">
                    <label for="page_num">Page Number</label>
                    <input name="page_num" type="text" class="form-control" id="page_num" placeholder="Page Number">
                  </div>
                  <div class="form-group">
                    <label for="page_size">Page Size</label>
                    <input name="page_size" type="text" class="form-control" id="page_size" placeholder="Page Size">
                  </div>
                  <button type="submit" class="btn btn-success">Search</button>
                </form>
            </div>
        </div>
    </div>
</main>
<?php
// footer + chiusura body e html
include 'layout/footer.php'
 ?>