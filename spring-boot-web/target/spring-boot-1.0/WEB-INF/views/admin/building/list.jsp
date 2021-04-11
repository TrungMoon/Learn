<%--
  Created by IntelliJ IDEA.
  User: HPPC
  Date: 4/6/2021
  Time: 7:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-list"/>

<html>
<head>
    <title>Danh sách tòa nhà</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->

        </div>

        <div class="page-content">
            <!-- /.page-header -->
            <!-- PHần Tìm KIếm -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="widget-box">
                        <div class="widget-header">
                            <h4 class="widget-title">Tìm Kiếm</h4>
                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>
                            </div>
                        </div>
                        <div class="widget-body">
                            <div class="widget-main">

                                <form:form commandName="modelSearch" action="${buildingListURL}" id="listForm"
                                           method="get">
                                    <div class="forn-horizontal">
                                        <div class="form-group">
                                            <!-- PAGE CONTENT BEGINS -->
                                            <div class="col-sm-6">
                                                <div>
                                                    <label for="name">Tên tòa nhà</label>
                                                    <!--<input type="text" id="name" placeholder="VinCity"
                                                           class="form-control" name="name" value="${modelSearch.name}"/>-->
                                                    <form:input path="name" cssClass="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">

                                                <label for="floorArea">Diện tích sàn</label>
                                                <input type="number" id="floorArea" placeholder="100"
                                                       class="form-control" name="floorArea"
                                                       value="${modelSearch.floorArea}"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="district">Quận</label>
                                                    <div>
                                                        <select class="chosen-select form-control" id="district"
                                                                data-placeholder="Choose a State...">
                                                            <option value="take">-- Chọn quận --</option>
                                                            <option value="Q1">Quận 1</option>
                                                            <option value="Q2">Quận 2</option>
                                                            <option value="Q4">Quận 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="ward">Phường</label>
                                                    <form:input path="ward" cssClass="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="street">Đường</label>
                                                    <form:input path="street" cssClass="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="numberOfBaseMent">Số tầng hầm</label>
                                                    <input type="text" id="numberOfBaseMent"
                                                           placeholder="thường thì chỉ có 1"
                                                           class="form-control"/>

                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="direction">Hướng</label>
                                                    <input type="text" id="direction" placeholder="Đông, Tây, Nam, Bắc"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="level">Hạng</label>
                                                    <input type="text" id="level" placeholder="Nhập đê"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-3">
                                                <div>
                                                    <label for="areaRentFrom">Diện tích từ</label>
                                                    <input type="number" id="areaRentFrom" placeholder="100"
                                                           class="form-control" name="areaRentFrom"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div>
                                                    <label for="areaRentTo">Diện tích đến</label>
                                                    <input type="number" id="areaRentTo" placeholder="2000"
                                                           class="form-control" name="areaRentTo"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div>
                                                    <label for="costRentFrom">Giá thuê từ</label>
                                                    <input type="number" id="costRentFrom" placeholder="400.000"
                                                           class="form-control" name="costRentFrom"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div>
                                                    <label for="costRentTo">Giá thuê đến</label>
                                                    <input type="number" id="costRentTo" placeholder="10.000.000"
                                                           class="form-control" name="costRentTo"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <div>
                                                    <label for="managerName">Tên Quản Lý</label>
                                                    <input type="text" id="managerName" placeholder="Đinh Quốc T"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <label for="managerPhone">Số điện thoại</label>
                                                <div class="input-group">
                                                <span class="input-group-addon"><i
                                                        class="ace-icon fa fa-phone"></i></span>
                                                    <input type="number" id="managerPhone" placeholder="0989992727"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="form-field-select-3">Nhân Viên</label>
                                                    <div>
                                                        <select class="chosen-select form-control"
                                                                id="form-field-select-3"
                                                                data-placeholder="Choose a State...">
                                                            <option value="take">-- Chọn người phục vụ --</option>
                                                            <option value="ID">Vũ Thị Thu Hà</option>
                                                            <option value="IL">Hảo Hảo Lớ</option>
                                                            <option value="IN">Ngọng 1</option>
                                                            <option value="IA">Cô gái vú to</option>
                                                        </select>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="control-group">
                                                    <label class="control-label bolder blue">Checkbox</label>
                                                    <br>
                                                    <label>
                                                        <input name="form-field-checkbox" type="checkbox" class="ace"/>
                                                        <span class="lbl"> Tầng trệt</span>
                                                    </label>
                                                </div>

                                            </div>

                                            <div class="col-sm-4">
                                                <div class="control-group">
                                                    <br>
                                                    <label>
                                                        <input name="form-field-checkbox" type="checkbox" class="ace"/>
                                                        <span class="lbl"> Nguyên căn </span>
                                                    </label>
                                                </div>

                                            </div>

                                            <div class="col-sm-4">
                                                <div class="control-group">
                                                    <br>
                                                    <label>
                                                        <input name="form-field-checkbox" type="checkbox" class="ace"/>
                                                        <span class="lbl"> Nội thất </span>
                                                    </label>
                                                </div>

                                            </div>
                                        </div><!-- /.row -->

                                    </div>
                                    <!-- PAGE CONTENT ENDS -->
                                    <div class="form-actions center">
                                        <button type="button" class="btn btn-primary" id="btnSearch">
                                            Tìm Kiếm
                                            <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                        </button>
                                    </div>
                                </form:form>


                            </div><!-- /.col -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="pull-right">
                        <button class="btn btn-white btn-default btn-round" data-toggle="tooltip"
                                title="Thêm tòa nhà">
								<span>
									<i class="fa fa-plus-circle bigger-120" aria-hidden="true" style="color:black"></i>
								</span>
                        </button>
                        <button class="btn btn-white btn-warning btn-round" data-toggle="tooltip"
                                title="Xóa tòa nhà" id="btnDeleteBuilding">
								<span>
									<i class="ace-icon fa fa-times red2" aria-hidden="true" style="color:black"></i>
								</span>
                        </button>
                    </div>
                </div>
            </div><!-- /.row -->
            <br/>
            <!-- Phần TABLE -->
            <div class="row">
                <div class="col-xs-12">
                    <table id="buildingList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace"/>
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>
                                <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                Ngày
                            </th>
                            <th>Tên sản phẩm</th>
                            <th>Số tầng hầm</th>
                            <th>Địa chỉ</th>
                            <th>Quản lý</th>
                            <th>Số điện thoại</th>
                            <th>Diện tích sàn</th>
                            <th class="hidden-480">Giá thuê</th>
                            <th class="hidden-480">Phí dịch vụ</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${buildings}" >
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" value="1" id="checkbox_1"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td>abc</td>
                                <td>${item.name}</td>
                                <td>${item.numberOfBasement}</td>
                                <td>abc</td>
                                <td>abc</td>
                                <td>abc</td>
                                <td>abc</td>
                                <td>abc</td>
                                <td>abc</td>
                                <td>
                                    <button class="btn btn-xs btn-info" data-toggle="tooltip"
                                            title="Giao tòa nhà" onclick="assignmentBuilding(1)">
                                        <i class="ace-icon fa fa-users bigger-120" aria-hidden="true"></i>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<!-- assignment Building Modal -->
<div class="modal fade" id="assignmentBuildingModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table class="table table-bordered" id="staffsList">
                    <thead>
                    <tr>
                        <th>Chọn nhân viên</th>
                        <th>Tên nhân viên</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox" value="2" id="checkbox_2"/></td>
                        <td>Ngyễn Văn B</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" value="3" id="checkbox_3"/></td>
                        <td>Ngyễn Văn C</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" value="4" id="checkbox_4"/></td>
                        <td>Ngyễn Văn D</td>
                    </tr>
                    </tbody>
                </table>
                <input type="hidden" id="buildingId" name="buildingId" value="">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btnAssignBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<script>
    function assignmentBuilding(buildingId) {
        openModalAssignmentBuilding();
        $('#buildingId').val(buildingId);
        console.log($('#buildingId').val());
    }

    function openModalAssignmentBuilding() {
        $('#assignmentBuildingModal').modal();
    }

    $('#btnAssignBuilding').click(function (e) {
        e.preventDefault();
        //Call API
        var data = {};
        data['buidingId'] = $('#buildingId').val();
        //$('#staffsList').find('tbody input[type=checkbox]')
        var staffs = $('#staffsList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();

        }).get();
        data['staffs'] = staffs;
        assignStaff(data);
    });

    function assignStaff(data) {
        $.ajax({
            url: "http://localhost:8080/api-user-assignment",
            type: "POST",
            dataType: "json",
            data: JSON.stringify(data),
            contentType: "application/json",
        })
            .done(function (response) {
                console.log("success");
            })
            .fail(function (response) {
                console.log("error");
                console.log(response);
            });
    }

    $('#btnDeleteBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        var buildingIds = $('#buildingList').find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();

        }).get();
        data['buildingIds'] = buildingIds
        deleteBuilding(data);
    });

    function deleteBuilding(data) {
        $.ajax({
            url: "http://localhost:8080/api-building",
            type: "DELETE",
            dataType: "json",
            data: JSON.stringify(data),
            contentType: "application/json",
        })
            .done(function (response) {
                console.log("success");
            })
            .fail(function (response) {
                console.log("error");
                console.log(response);
            });
    }

    $('#btnSearch').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    });

</script>

</body>
</html>
