using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Food
    {
        private int _type_id;
        private string _type_name;
        private int _type_pos;
        private string _type_img;
        private int _status;
        private string _username;
        private DateTime _datetime;

        public int Type_id { get => _type_id; set => _type_id = value; }
        public string Type_name { get => _type_name; set => _type_name = value; }
        public int Type_pos { get => _type_pos; set => _type_pos = value; }
        public string Type_img { get => _type_img; set => _type_img = value; }
        public int Status { get => _status; set => _status = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Datetime { get => _datetime; set => _datetime = value; }

        public Food(int type_id, string type_name, int type_pos, string type_img, int status, string username, DateTime datetime)
        {
            _type_id = type_id;
            _type_name = type_name;
            _type_pos = type_pos;
            _type_img = type_img;
            _status = status;
            _username = username;
            _datetime = datetime;
        }

        public Food()
        {
        }


    }
}