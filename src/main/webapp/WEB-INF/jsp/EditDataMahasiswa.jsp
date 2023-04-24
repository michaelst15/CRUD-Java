<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${empty pettern}">
    <c:set var="v" value="dd/MM/yyyy" />
</c:if>

<fmt:parseDate value="${date}" pattern="dd/MM/yyyy" var="parseDate" type="date" />
<fmt:formateDate value="${parseDate}" type="date" pattern="${pettern}" />

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Edit Data Mahasiswa</title>

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
<body>

<div class="container">

    <h1 class="p-3"> Edit Data Mahasiswa </h1>

    <form:form action="/editSaveDataMahasiswa" method="post">

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
<%--                <label class="col-md-3" for="nim">Nim</label>--%>
                <div class="col-md-1">
                    <form:input type="hidden"  path="nim" id="nim"
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
                    <form :input type="date" path="tanggal_lahir" id="tanggal_lahir"
                                class="form-control input-sm" required="required" />
                </div>
            </div>
        </div>

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
        if (msg == "Edit Failure") {
            Command: toastr["error"]("Something went wrong with the edit.")
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