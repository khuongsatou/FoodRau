using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Member
    {
        private string _userName;
        private string _pass;
        private string _name;
        private string _email;
        private string _phone;
        private int _role;
        private int _status;

        public Member()
        {
            _role = 0;
            Status = 0;
        }

        public Member(string userName, string pass, string name, string email, string phone, int role)
        {
            UserName = userName;
            Pass = pass;
            Name = name;
            Email = email;
            Phone = phone;
            Role = role;
        }

        public string UserName { get => _userName; set => _userName = value; }
        public string Pass { get => _pass; set => _pass = value; }
        public string Name { get => _name; set => _name = value; }
        public string Email { get => _email; set => _email = value; }
        public string Phone { get => _phone; set => _phone = value; }
        public int Role { get => _role; set => _role = value; }
        public int Status { get => _status; set => _status = value; }

        public bool existMember(string username)
        {
            string sQuery = "SELECT [username] FROM [dbo].[member] WHERE [username] = '@username'";
            SqlParameter[] param =
            {
                //có 2 cách 1 là truyền đối tượng vào insert
                //cách 1: nhưng phải set cho nó trước
                //new SqlParameter("@username",member.UserName)
                //đây là cách 2: lấy username đó tìm
                new SqlParameter("@username",username)
            };
            //trả về true(1) hoặc false(0)
            return DataProvider.executeNonQuery(sQuery, param);
        }

        public bool addMember()
        {
            string sQuery = "INSERT INTO [dbo].[member] ([username] ,[pass] ,[name] ,[email] ,[phone] ,[role],[status]) VALUES (@username,@pass,@name,@email,@phone,@role,@status)";
            SqlParameter[] param =
            {
                new SqlParameter("@username",this._userName),
                new SqlParameter("@pass",this._pass),
                new SqlParameter("@name",this._name),
                new SqlParameter("@email",this._email),
                new SqlParameter("@phone",this._phone),
                new SqlParameter("@role",this._role),
                new SqlParameter("@status",this.Status)
            };
            //trả về true(1) hoặc false(0)
            return DataProvider.executeNonQuery(sQuery, param);
        }


    }
}