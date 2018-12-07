<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zoud
  Date: 2018/12/6
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" type="text/css" />
</head>
<body>

<div class="container">
    <div class="page-header">
        <h1 class="text-primary">这是一个简单的甲基化数据库</h1>
    </div>

    <h3>实体</h3>
    <ol>
        <li><strong>物种</strong>：  一个物种对应多个基因</li>
        <li><strong>基因</strong>：  一个基因对应多个不同状态的甲基化值</li>
        <li><strong>甲基化</strong></li>
    </ol>

    <h4 class="text-success">查询所有物种</h4>

    <table class="table table-bordered table-striped table-condensed table-hover">
        <thead>
        <tr class="info">
            <th>中文名</th>
            <th>英文名</th>
            <th>拉丁名</th>
            <th>类型</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${speciesList}" var="species">
            <tr>
                <td>${species.speciesChineseName}</td>
                <td>${species.speciesEnglishName}</td>
                <td>${species.speciesLatinName}</td>
                <td>${species.speciesType}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <h4>提交物种</h4>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/species/save" method="post">
        <div class="form-group">
            <label class="control-label col-md-2">中文名: </label>

            <div class="col-md-6">
                <input type="text" name="speciesChineseName" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2">英文名: </label>

            <div class="col-md-6">
                <input type="text" name="speciesEnglishName" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2">拉丁名: </label>

            <div class="col-md-6">
                <input type="text" name="speciesLatinName" class="form-control" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2">物种类型: </label>
            <div class="col-md-6">
                <select name="speciesType" class="form-control">
                    <option value="Plant">Plant</option>
                    <option value="Animal">Animal</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-2">
                <button type="submit" class="btn btn-primary">保存</button>
            </div>
        </div>


    </form>


</div>




<script src="${pageContext.request.contextPath}/static/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</body>
</html>
