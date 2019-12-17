using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Order
    {
        private int _orderID;
        private string _cusName;
        private string _cusPhone;
        private string _cusAdd;
        private int _quan;
        private decimal _sum;
        private int _status;
        private string _username;
        private DateTime _modified;
        private DateTime _creted;
        private string _cusUserName;


        public Order()
        {
            OrderID = 0;
            CusName = "";
            CusPhone = "";
            CusAdd = "";
            Quan = 0;
            Sum = 0;
            Status = 0;
            Username = "";
            Modified = DateTime.Now;
            Creted = DateTime.Now;
            CusUserName = "";
        }

        public Order(int OrderID, string cusName, string cusPhone, string cusAdd, int quan, decimal sum, int status, string username, DateTime modified, DateTime creted, string cusUserName)
        {
            this.OrderID = OrderID;
            CusName = cusName;
            CusPhone = cusPhone;
            CusAdd = cusAdd;
            Quan = quan;
            Sum = sum;
            Status = status;
            Username = username;
            Modified = modified;
            Creted = creted;
            CusUserName = cusUserName;
        }

        public int OrderID { get => _orderID; set => _orderID = value; }
        public string CusName { get => _cusName; set => _cusName = value; }
        public string CusPhone { get => _cusPhone; set => _cusPhone = value; }
        public string CusAdd { get => _cusAdd; set => _cusAdd = value; }
        public int Quan { get => _quan; set => _quan = value; }
        public decimal Sum { get => _sum; set => _sum = value; }
        public int Status { get => _status; set => _status = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }
        public DateTime Creted { get => _creted; set => _creted = value; }
        public string CusUserName { get => _cusUserName; set => _cusUserName = value; }

        public int add()
        {
            string sQuery = "INSERT INTO [dbo].[order] ([cus_name] ,[cus_phone] ,[cus_add] ,[quan] ,[sum] ,[status] ,[username] ,[modified] ,[created] ,[cus_username]) VALUES (@cus_name,@cus_phone,@cus_add ,@quan,@sum,@status,@username,@modified,@created,@cus_username)";
            SqlParameter[] sParams =
            {
                new SqlParameter("@cus_name",this.OrderID),
                new SqlParameter("@cus_phone",this.CusPhone),
                new SqlParameter("@cus_add",this.CusAdd),
                new SqlParameter("@quan",this.Quan),
                new SqlParameter("@sum",this.Sum),
                new SqlParameter("@status",this.Status),
                new SqlParameter("@username",this.Username),
                new SqlParameter("@modified",this.Modified),
                new SqlParameter("@created",this.Creted),
                new SqlParameter("@cus_username",this.CusUserName)
            };
            return DataProvider.executeScalar(sQuery,sParams);
        }

      
    }
}