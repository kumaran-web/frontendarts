<?php
include "config.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title><?=$pageTitle?></title>
	<link rel="icon" href="assets/images/logo.png" type="image/x-icon" />
	
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- DataTables CSS -->
    <link href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/responsive/3.0.2/css/responsive.bootstrap5.css" rel="stylesheet">
    
    <link href="assets/css/app.css?v=<?=rand()?>" rel="stylesheet">
</head>

<body>
	<div class="container-fluid">
		
		<div class="sidebar d-flex flex-column flex-shrink-0 p-3 col-md-3 col-lg-2" id="sidebar">
	        <a href="home" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
	            <svg class="bi" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
	            <span class="fs-4"><?=$web_app_name?></span>
	        </a>
	        <hr>
	        
	        <ul class="nav nav-pills flex-column mb-auto">
	            <li class="nav-item">
	                <a href="home" class="nav-link <?=($pageName == 'index') ? 'active' : '';?>" aria-current="page">
	                    <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
	                    <span>Home</span>
	                </a>
	            </li>
	        </ul>
	        <hr>
	    </div>
	    
	    <div class="content col" id="content">
	        <button class="btn btn-primary mb-3" id="toggleSidebar">
	            <i class="fa fa-bars"></i>
	        </button>
	        