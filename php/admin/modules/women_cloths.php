<?php
    session_start();
    // echo $_SESSION['adminLogined'];
    if (!isset($_SESSION['adminLogined'])) {
        header('Location: signIn.php');
    }

    include('../layout/header.php');
?>




<div class="container-fluid">
    <div class="row">
        <?php include('../layout/sideMenu.php'); ?>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <table class='table'>
                <thead>
                    <tr>
                        <th>Type</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Women Clothes</td>
                        <td>
                            <button class="btn btn-primary" type="button" onclick="viewTable('women_cloths')">View Record</button>

                            <button class="btn btn-success" type="button" onclick="insert('women_cloths')">Scrap and
                                Insert in Table</button>

                            <button class="btn btn-danger" type="button" onclick="clearTable('women_cloths')">Clear
                                Table</button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="col-md-12">
                <div class="progress mt-2" id="progress" style="display: none">
                    <div style="color: white;" class="progress-bar" role="progressbar" aria-valuenow=""
                        aria-valuemin="0" aria-valuemax="100" style="width: 0%">
                        0%
                    </div>
                </div>
            </div>
            <br>
            <div class="row" id="data">


            </div>
            
        </main>
    </div>
</div>

<?php

    include('../layout/footer.php');
?>
<script src="/js/dashboard.js"></script>