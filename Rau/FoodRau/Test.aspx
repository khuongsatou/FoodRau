<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="FoodRau.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Home/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Admin/vendor/jquery/jquery.min.js"></script>
    <script src="Admin/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }

        //$(function () {
        //    $("#btnShow").click(function () {
        //        showModal();
        //    });
        //});
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnShow" runat="server" Text="Button" OnClick="Button2_Click" />
        <%--<input type="button"  id="btnShow" value="Show Modal" />--%>
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="Button2" runat="server" Text="Click Me" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
