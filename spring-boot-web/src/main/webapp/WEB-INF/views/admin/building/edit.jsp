<%--
  Created by IntelliJ IDEA.
  User: HPPC
  Date: 4/6/2021
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<c:url var="buildingAPI" value="/api/building"/>

<html>
<head>
    <title>Chỉnh sửa tòa nhà</title>
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
            <!-- PHần Chỉnh Sửa-->
            <div class="row">
                <div class="col-xs-12">
                    <form class="form-horizontal" role="form" id="formEdit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Tên tòa nhà </label>

                            <div class="col-sm-9">
                                <input type="text" id="name" placeholder="VinCity" class="form-control" name="name" value=""/>
                            </div>
                        </div>
                        <!--<div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Quận </label>
                            <div class="col-sm-9">
                                <select class="chosen-select form-control" id="district" data-placeholder="Choose a State..." name="district">
                                    <option value="take">-- Quận --</option>
                                    <option value="Q1">Quận 1</option>
                                    <option value="Q2">Quận 2</option>
                                    <option value="Q4">Quận 3</option>
                                </select>
                            </div>
                        </div>-->
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="ward"> Phường </label>
                            <div class="col-sm-9">
                                <input type="text" id="ward" placeholder="" class="form-control" name="ward" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Đường </label>
                            <div class="col-sm-9">
                                <input type="text" id="street" placeholder="" class="form-control" name="street" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Kết cấu </label>
                            <div class="col-sm-9">
                                <input type="text" id="structure" placeholder="" class="form-control" name="structure" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement"> Số tầng hầm </label>
                            <div class="col-sm-9">
                                <input type="number" id="numberOfBasement" class="form-control" name="numberOfBasement" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="buildingArea"> Diện tích sàn </label>
                            <div class="col-sm-9">
                                <input type="number" id="buildingArea" placeholder="" class="form-control" name="buildingArea" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="direction"> Hướng </label>
                            <div class="col-sm-9">
                                <input type="text" id="direction" placeholder="" class="form-control" name="direction" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="level"> Hạng </label>
                            <div class="col-sm-9">
                                <input type="text" id="level" placeholder="" class="form-control" name="level" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="rentArea"> Diện tích thuê </label>
                            <div class="col-sm-9">
                                <input type="text" id="rentArea" placeholder="" holder="100" class="form-control" name="rentArea" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Mô tả diện tích </label>
                            <div class="col-sm-9">
                                <input type="text" id="rentAreaDescription" placeholder="" class="form-control" name="rentAreaDescription" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Giá thuê </label>
                            <div class="col-sm-9">
                                <input type="number" id="rentprice" placeholder="" class="form-control" name="rentprice" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="serviceCost"> Phí dịch vụ </label>
                            <div class="col-sm-9">
                                <input type="number" id="serviceCost" placeholder="" class="form-control" name="serviceCost" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Phí ô tô </label>
                            <div class="col-sm-9">
                                <input type="text" id="carCost" placeholder="" class="form-control" name="carCost" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Phí xe máy </label>
                            <div class="col-sm-9">
                                <input type="text" id="motorCost" placeholder="" class="form-control" name="motorCost" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Tiền điện </label>
                            <div class="col-sm-9">
                                <input type="number" id="electricBill" placeholder="" class="form-control" name="electricBill" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Đặt cọc </label>
                            <div class="col-sm-9">
                                <input type="number" id="deposit" placeholder="" class="form-control" name="deposit" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Thanh toán </label>
                            <div class="col-sm-9">
                                <input type="number" id="payment" placeholder="" class="form-control" name="payment" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Thời hạn thuê </label>
                            <div class="col-sm-9">
                                <input type="text" id="timeRent" placeholder="" class="form-control" name="timeRent" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Tên quản lý </label>
                            <div class="col-sm-9">
                                <input type="text" id="managerName" placeholder="" class="form-control" name="managerName" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Số điện thoại </label>
                            <div class="col-sm-9">
                                <input type="number" id="managerPhone" placeholder="" class="form-control" name="managerPhone" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Phí môi giới </label>
                            <div class="col-sm-9">
                                <input type="number" id="costTips" placeholder="" class="form-control" name="costTips" value=""/>
                            </div>
                        </div>
                        <!--<div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="type"> Loại tòa nhà </label>
                            <div class="col-sm-9">
                                <label class="checkbox-inline"><input type="checkbox" value="TANG_TRET" id="buildingTypes" name="buildingTypes">Tầng trệt</label>
                                <label class="checkbox-inline"><input type="checkbox" value="NGUYEN_CAN" id="buildingTypes" name="buildingTypes">Nguyên căn</label>
                                <label class="checkbox-inline"><input type="checkbox" value="NOI_THAT" id="buildingTypes" name="buildingTypes">Nội thất</label>
                            </div>
                        </div>-->
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="note"> Ghi chú </label>
                            <div class="col-sm-9">
                                <textarea class="form-control limited" id="note" maxlength="50" name="note" value=""></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Link tòa nhà </label>
                            <div class="col-sm-9">
                                <input type="number" id="#" placeholder="" class="form-control" name="#" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Hình đại diện </label>
                            <div class="col-sm-9">
                                <label class="ace-file-input"><input type="file" id="id-input-file-2" value=""><span class="ace-file-container" data-title="Choose"><span class="ace-file-name" data-title="No File ..."><i class=" ace-icon fa fa-upload"></i></span></span><a class="remove" href="#"><i class=" ace-icon fa fa-times"></i></a></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right"></label>
                            <div class="col-md-offset-3 col-md-9">
                                <button class="btn btn-info" type="button" id="btnAddBuilding">
                                    <i class="ace-icon fa fa-check bigger-110"></i>
                                    Thêm
                                </button>
                                &nbsp; &nbsp; &nbsp;
                                <button class="btn" type="button">
                                    <i class="ace-icon fa fa-times bigger-110"></i>
                                    Xóa
                                </button>
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div><!--row-->

    </div><!-- /.page-content -->
</div> <!-- /.mainconten -->

<script>
    $('#btnAddBuilding').click(function (e) {
        e.preventDefault();
        // call API add buildingTypes
        var data = {};
        var buildingTypes = [];
        var formData = $('#formEdit').serializeArray();
        /*$.each(formData, function(index, v) {
            if(v.name == 'buildingTypes') {
                buildingTypes.push(v.value);
            }else {
                data[""+v.name+""] = v.value;
            }
        });

        data['buildingTypes'] = buildingTypes;*/

        $.each(formData, function (index, v) {
            data[""+v.name+""] = v.value;
        });

        $.ajax({
            url: '${buildingAPI}',
            type: 'POST',
            dataType: "json",
            data: JSON.stringify(data),
            contentType: "application/json",
            success: function(response) {
                console.log('success');
            },
            error: function (response) {
                console.log('error');
                console.log(response);
            }
        });
    });
</script>

</body>
</html>
