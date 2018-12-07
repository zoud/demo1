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

    <h3 class="text-success">基因信息</h3>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>accession</th>
            <th>symbol</th>
            <th>chr</th>
            <th>strand</th>
            <th>start</th>
            <th>end</th>
            <th>descirption</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${gene.geneAccession}</td>
            <td>${gene.geneSymbol}</td>
            <td>${gene.chrom}</td>
            <td>${gene.strand}</td>
            <td>${gene.startPosition}</td>
            <td>${gene.endPosition}</td>
            <td>${gene.description}</td>
        </tr>
        </tbody>
    </table>

    <h4 class="text-info">基因甲基化信息</h4>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>gene</th>
            <th>sample</th>
            <th>genedbody</th>
            <th>promoter</th>
            <th>downstream</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${gene.methylationList}" var="m">
            <tr>
                <td>${gene.geneAccession}</td>
                <td>${m.sample}</td>
                <td>${m.genebody}</td>
                <td>${m.promoter}</td>
                <td>${m.downstream}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div id="container"></div>

</div>



<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>

<script>
    $(document).ready(function () {
        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Monthly Average Rainfall'
            },
            subtitle: {
                text: 'Source: WorldClimate.com'
            },
            xAxis: {
                categories: [
                    'Jan',
                    'Feb',
                    'Mar',
                    'Apr',
                    'May',
                    'Jun',
                    'Jul',
                    'Aug',
                    'Sep',
                    'Oct',
                    'Nov',
                    'Dec'
                ],
                crosshair: true
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Rainfall (mm)'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: 'Tokyo',
                data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

            }, {
                name: 'New York',
                data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

            }, {
                name: 'London',
                data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

            }, {
                name: 'Berlin',
                data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

            }]
        });
    });
</script>
</body>
</html>
