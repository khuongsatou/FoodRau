
$(this).ready(function () {
    //SelectList();
});

function SelectList() {
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
    var param = "'type_name':'" + type_name + "'";
    alert(param);
    $.ajax({
        type: 'get',
        url: "food_type.aspx/Search",
        data: "{" + param + "}",
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

function Insert() {
    var type_name = $('#cph_content_txtName').val();
    var type_post = $('#cph_content_txtPost').val();
    var status = $('#cph_content_ddlStatus').val();
    var param = "'type_name':'" + type_name + "','type_post':'" + type_post + "','status':'" + status + "'";
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
        row += "</tr>";
    }
    $('#repeater').html(row);
}