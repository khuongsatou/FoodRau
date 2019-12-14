
$(this).ready(function () {
    SelectList();
    CheckEnable();
});

function CheckEnable() {
    $('#cph_content_lblThongBao').text("");
    $('#cph_content_lblThongBao').hide();
}

function SelectList() {
    $.ajax({
        type: 'post',
        url: "food_type.aspx/SelectAll",
        data: {},
        contentType: 'application/json;charset=utf-8',
        success: function (response) {
            ResetList(response);
        },
        error: function (err) {
            alert("Error" + err.d);
        }
    });
}

function Chon(type_id) {
    $.ajax({
        type: 'post',
        url: "food_type.aspx/GetObject",
        data: "{type_id:'" + type_id + "'}",
        contentType: 'application/json;charset=utf-8',
        success: function (response) {
            $('#cph_content_txtName').val(response.d.Type_name);
            $('#cph_content_txtPost').val(response.d.Type_post);
            $('#cph_content_ddlStatus').val(response.d.Status);
            $('#cph_content_imgReview').attr("src", "img/" + response.d.Type_img);
            $('#cph_content_hfNameImg').val(response.d.Type_img);
        },
        error: function (err) {
            alert("error" + err.d);
        }
    });
}

function ResetList(response) {
    var arrObj = response.d;
    var row = "";
    var o_td = "<td>";
    var c_td = "</td>";
    for (var i = 0; i < arrObj.length; i++) {
        row += "<tr>";
        row += o_td;
        row += i;
        row += c_td;

        row += o_td;
        row += arrObj[i].Type_name;
        row += c_td;

        row += o_td;
        row += arrObj[i].Type_post;
        row += c_td;

        row += o_td;
        row += "<img id='imgHinh' alt='' width='50' height='50' src='/Admin/img/" + arrObj[i].Type_img + "' />";
        row += c_td;
        row += o_td;

        row += "<input id='Checkbox1' type='checkbox'" + ((arrObj[i].Status > 0) ? 'checked' : '') + " disabled />";
        row += c_td;

        row += o_td;
        row += arrObj[i].Username;
        row += c_td;

        row += o_td;
        row += "<a href='#chon'><img id='imgHinh' alt='' width='20' height='20' src='/Admin/icon/edit.png' onClick='Chon(" + arrObj[i].Type_id + ");' /></a>";
        row += c_td;

        row += o_td;
        row += "<a href='#chon'><img id='imgHinh' alt='' width='20' height='20' src='/Admin/icon/delete.png' onClick='Chon(" + arrObj[i].Type_name + ");' /></a>";
        row += c_td;
        row += "</tr>";

    }
    $('#repeater').html(row);
}

function PhanTrang() {
    $.ajax({
        type: 'post',
        url: "food_type.aspx/SelectAll",
        data: {},
        contentType: 'application/json;charset=utf-8',
        datatype: 'json',
        success: function (response) {
            ResetList(response);
        },
        error: function (err) {
            alert("Error" + err.d);
        }
    });
}

function TimKiem() {
    var type_name = $('#cph_content_txtTimKiem').val();
    $.ajax({
        type: 'post',
        url: "food_type.aspx/Search",
        data: "{type_name:'" + type_name + "'}",
        contentType: 'application/json;charset=utf-8',
        success: function (response) {
            ResetList(response);
        },
        error: function (err) {
            alert("error" + err.d);
        }
    });
}

function Insert() {
    var checkUpImg = $('#cph_content_hfNameImg').val();
    if (checkUpImg == '') {
        $('#cph_content_lblThongBao').text('Bạn Chưa Upload');
        $('#cph_content_lblThongBao').show();
        return;
    }
    var type_name = $('#cph_content_txtName').val();
    var type_post = $('#cph_content_txtPost').val();
    var status = $('#cph_content_ddlStatus').val();
    var param = "type_name:'" + type_name + "',type_post:'" + type_post + "',status:'" + status + "'";
    alert(param);
    $.ajax({
        type: 'post',
        url: "food_type.aspx/InsertObject",
        data: "{"+param+"}",
        contentType: 'application/json;charset=utf-8',
        datatype: 'json',
        success: function (response) {
            ResetList(response);
        },
        error: function (err) {
            alert("error" + err.d);
        }
    });
}

