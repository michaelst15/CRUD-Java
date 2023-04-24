<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Tambah Data Mahasiswa</title>

    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

</head>

<style>
    .button-back {
        margin-top: -54px;
        margin-left: 90px;
    }
</style>
<body>

<div class="container">

    <h1 class="p-3"> Tambah Data Mahasiswa </h1>


    <form:form action="/saveDataMahasiswa" method="POST">

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3" for="nama">Nama</label>
                <div class="col-md-4">
                    <form:input type="text" path="nama" id="nama"
                                class="form-control input-sm" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3" for="nim">Nim</label>
                <div class="col-md-1">
                    <form:input type="number" path="nim" id="nim"
                                class="form-control input-sm" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3" for="kelas">Kelas</label>
                <div class="col-md-1">
                    <form:input type="number" path="kelas" id="kelas"
                                class="form-control input-sm" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3" for="jurusan">Jurusan</label>
                <div class="col-md-3">
                    <form:input type="text" path="jurusan" id="jurusan"
                                class="form-control input-sm" required="required" />
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3" for="tanggal_lahir">Tanggal Lahir</label>
                <div class="col-md-2">
                    <form:input type="date" path="tanggal_lahir" id="tanggal_lahir"
                                class="form-control input-sm" required="required" />
                </div>
            </div>
        </div>

<%--        <div class="row">--%>
<%--            <div class="form-group col-md-12">--%>
<%--                <label class="col-md-3" for="author">Author</label>--%>
<%--                <div class="col-md-2">--%>
<%--                    <form:input type="string" path="author" id="author"--%>
<%--                                class="form-control input-sm" required="required" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row">--%>
<%--            <div class="form-group col-md-12">--%>
<%--                <label class="col-md-3" for="book_name">Nama Buku</label>--%>
<%--                <div class="col-md-2">--%>
<%--                    <form:input type="string" path="book_name" id="book_name"--%>
<%--                                class="form-control input-sm" required="required" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="row">--%>
<%--            <div class="form-group col-md-12">--%>
<%--                <label class="col-md-3" for="price">Price</label>--%>
<%--                <div class="col-md-2">--%>
<%--                    <form:input type="long" path="price" id="price"--%>
<%--                                class="form-control input-sm" required="required" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="button-container">--%>
            <div class="row p-2">
                <div class="col-md-2">
                    <button type="submit" value="Register" class="btn btn-success">Save</button>
                </div>
            </div>

            <div class="button-back row p-2">
<%--                <div class="col-md-2">--%>
                    <button class="btn btn-success">
                       <a class="btn-success text-decoration-none" href="${pageContext.request.contextPath}/view">Lihat Data</a>
                    </button>
<%--                </div>--%>
            </div>
<%--        </div>--%>

    </form:form>



</div>

<script th:inline="javascript">
    window.onload = function() {

        var msg = "${message}";
        console.log(msg);
        if (msg == "Save Failure") {
            Command: toastr["error"]("Something went wrong with the save.")
        }

        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
    }
</script>

</body>

</html>