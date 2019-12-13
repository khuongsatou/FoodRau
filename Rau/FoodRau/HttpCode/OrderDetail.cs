using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class OrderDetail
    {
        private int _orderID;
        private int _foodID;
        private decimal _quan;
        private string _unit;
        private decimal _price;
        private decimal _total;

        public OrderDetail()
        {
            _orderID = 0;
            _foodID = 0;
            _quan = 0;
            _unit = "";
            _price = 0;
            _total = 0;
        }

        public OrderDetail(int orderID, int foodID, decimal quan, string unit, decimal price, decimal total)
        {
            _orderID = orderID;
            _foodID = foodID;
            _quan = quan;
            _unit = unit;
            _price = price;
            _total = total;
        }
    }
}