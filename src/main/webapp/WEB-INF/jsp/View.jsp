<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
    <meta charset="ISO-8859-1">
    <title>Data Mahasiswa</title>

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

    <style>
        a{
            color: white;
        }
        a:hover {
            color: white;
            text-decoration: none;
        }
    </style>

</head>
<body>

<div class="container">

    <h1 class="p-3"> Data Mahasiswa</h1>

    <form:form>

        <table class="table table-bordered">
            <tr>
                <th>Nim</th>
                <th>Jumlah SKS</th>
                <th>Jurusan</th>
                <th>Kelas</th>
                <th>Nama</th>
                <th>Status</th>
                <th>Tanggal Lahir</th>
<%--                <th>Author</th>--%>
<%--                <th>Nama Buku</th>--%>
<%--                <th>Price</th>--%>
                <th>Edit</th>
                <th>Delete</th>
            </tr>

            <c:forEach var="view" items="${view}">
                <tr>
                    <td>${view.nim}</td>
                    <td>${view.jumlah_sks}</td>
                    <td>${view.jurusan}</td>
                    <td>${view.kelas}</td>
                    <td>${view.nama}</td>
                    <td>${view.status}</td>
                    <td>${view.tanggal_lahir}</td>
<%--                    <td>${view.author}</td>--%>
<%--                    <td>${view.book_name}</td>--%>
<%--                    <td>Rp ${view.price}</td>--%>
                    <td><button type="button" class="btn btn-success">
                        <a href="/editDataMahasiswa/${view.nim}">Edit</a>
                    </button></td>
                    <td><button type="button" class="btn btn-danger">
                        <a href="/deleteDataMahasiswa/${view.nim}">Delete</a>
                    </button></td>
                </tr>

            </c:forEach>

        </table>

    </form:form>

    <button type="button" class="btn btn-success btn-block">
        <a href="/addDataMahasiswa">Tambahkan Data Mahasiswa</a>
    </button>

</div>

<script th:inline="javascript">
    window.onload = function() {
        var msg = "${message}";
        console.log(msg);
        if (msg == "Save Success") {
            Command: toastr["success"]("Data Mahasiswa added successfully!!")
        } else if (msg == "Delete Success") {
            Command: toastr["success"]("Data Mahasiswa deleted successfully!!")
        } else if (msg == "Delete fail") {
            Command: toastr["error"]("Some error occurred, couldn't delete user")
        } else if (msg == "Edit Success") {
            Command: toastr["success"]("Data Mahasiswa updated successfully!!")
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