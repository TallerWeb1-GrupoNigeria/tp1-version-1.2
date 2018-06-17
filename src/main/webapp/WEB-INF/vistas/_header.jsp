<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/theme.css" type="text/css"> </head>

<body>
  <nav class="navbar navbar-expand-md bg-primary navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-beer"></i>
        <b>&nbsp;BARAPP</b>
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa d-inline fa-lg fa-sign-in"></i> Registrarme</a>
          </li>
        </ul>
        <a class="btn navbar-btn ml-2 text-white btn-secondary">
          <i class="fa d-inline fa-lg fa-user-circle-o"></i>&nbsp;Login</a>
      </div>
    </div>
  </nav>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="nav nav-pills">
            <li class="nav-item">
              <a href="inicioHome" class="nav-link">
                <i class="fa fa-home fa-home"></i>&nbsp;Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Eventos
                <br>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Arma tu evento!
                <br>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">Nosotros</a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">Contacto</a>
            </li>
            <li class="nav-item">
              <a href="homeAdmin" class="nav-link">*Menu Admin*</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>