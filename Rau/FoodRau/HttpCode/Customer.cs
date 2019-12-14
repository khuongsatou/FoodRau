using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Customer
    {
        private string _username;
        private string _password;
        private string _name;
        private string _phone;
        private string _email;
        private int _numOrder;
        private int _numSuccessfulOrder;
        private decimal _sum;
        private int _status;
        private DateTime _created;


        public Customer()
        {
            _username = "";
            _password = "";
            _name = "";
            _phone = "";
            _email = "";
            _numOrder = 0;
            _numSuccessfulOrder = 0;
            _sum = 0;
            _status = 0;
            _created = DateTime.Now;
        }

        public Customer(string username, string password, string name, string phone, string email, int numOrder, int numSuccessfulOrder, decimal sum, int status, DateTime created)
        {
            _username = username;
            _password = password;
            _name = name;
            _phone = phone;
            _email = email;
            _numOrder = numOrder;
            _numSuccessfulOrder = numSuccessfulOrder;
            _sum = sum;
            _status = status;
            _created = created;
        }
    }
}