using System;
using System.Collections.Generic;
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
            _orderID = 0;
            _cusName = "";
            _cusPhone = "";
            _cusAdd = "";
            _quan = 0;
            _sum = 0;
            _status = 0;
            _username = "";
            _modified = DateTime.Now;
            _creted = DateTime.Now;
            _cusUserName = "";
        }

        public Order(int orderID, string cusName, string cusPhone, string cusAdd, int quan, decimal sum, int status, string username, DateTime modified, DateTime creted, string cusUserName)
        {
            _orderID = orderID;
            _cusName = cusName;
            _cusPhone = cusPhone;
            _cusAdd = cusAdd;
            _quan = quan;
            _sum = sum;
            _status = status;
            _username = username;
            _modified = modified;
            _creted = creted;
            _cusUserName = cusUserName;
        }
    }
}