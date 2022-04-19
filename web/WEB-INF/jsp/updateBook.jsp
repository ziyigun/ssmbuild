<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>

    </div>
</div>


    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <%--出现的问题：提交了SQL请求，但是修改失败：①事务问题 ②SQL语句--%>
    <%--传入隐藏域--%>
        <input type="hidden" name="bookID" value="${QBook.bookID}">
        <div class="form-group" >
            <label for="bkname">书籍名称：</label>
            <input type="text" name="bookName" class="form-control" id="bkname" value="${QBook.bookName}" required >
        </div>
        <div class="form-group">
            <label for="bkcount">书籍数量：</label>
            <input type="text" name="bookCounts" class="form-control" id="bkcount" value="${QBook.bookCounts}" required>
        </div>
        <div class="form-group">
            <label for="bkdesc">书籍描述：</label>
            <input type="text" name="detail" class="form-control" id="bkdesc" value="${QBook.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</body>
</html>
