using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Setting
    {
        private int _idSetting;
        private string _name;
        private string _des;
        private string _value;
        private string _username;
        private DateTime _modified;

        public Setting()
        {
            IdSetting = 0;
            Name = "";
            Des = "";
            Value = "";
            Username = "khuong";
            Modified = DateTime.Now;
        }
        public Setting(int idSetting, string name, string des, string value, string username, DateTime modified)
        {
            IdSetting = idSetting;
            Name = name;
            Des = des;
            Value = value;
            Username = username;
            Modified = modified;
        }

        public int IdSetting { get => _idSetting; set => _idSetting = value; }
        public string Name { get => _name; set => _name = value; }
        public string Des { get => _des; set => _des = value; }
        public string Value { get => _value; set => _value = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }
    }
}