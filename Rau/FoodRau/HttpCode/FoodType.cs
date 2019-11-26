﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace FoodRau.HttpCode
{
    public class FoodType
    {
		private int _type_id;
		private string _type_name;
		private int _type_post;
		private string _type_img;
		private int _status;
		private string _username;
		private DateTime _modified;

		public int Type_id { get => _type_id; set => _type_id = value; }
		public string Type_name { get => _type_name; set => _type_name = value; }
		public int Type_post { get => _type_post; set => _type_post = value; }
		public string Type_img { get => _type_img; set => _type_img = value; }
		public int Status { get => _status; set => _status = value; }
		public string Username { get => _username; set => _username = value; }
		public DateTime Modified { get => _modified; set => _modified = value; }

		public FoodType()
		{
			
		}

		public FoodType(int type_id, string type_name, int type_post, string type_img, int status, string username, DateTime modified)
		{
			_type_id = type_id;
			_type_name = type_name;
			_type_post = type_post;
			_type_img = type_img;
			_status = status;
			_username = username;
			_modified = modified;
		}


        public bool exist(string type_id)
        {
            string sQuery = "SELECT count(*) FROM [dbo].[food_type] WHERE [type_id] =@type_id";
            SqlParameter[] param =
            {
                new SqlParameter("@type_id",type_id)
            };
            return Convert.ToInt32(DataProvider.getDataTable(sQuery, param).Rows[0][0]) > 0;
        }

        public bool add()
        {
            string sQuery = "INSERT INTO [dbo].[food_type] ([type_id] ,[type_name] ,[type_pos] ,[type_img] ,[status] ,[username] ,[modified]) VALUES (@type_id,@type_name,@type_pos,@type_img,@status,@username,@modified)";
            SqlParameter[] param =
            {
                new SqlParameter("@type_id",this._type_id),
                new SqlParameter("@type_name",this._type_name),
                new SqlParameter("@type_pos",this._type_post),
                new SqlParameter("@type_img",this._type_img),
                new SqlParameter("@status",this._status),
                new SqlParameter("@username",this._type_name),
                new SqlParameter("@modified",this._modified)
            };
            //trả về true(1) hoặc false(0)
            return DataProvider.executeNonQuery(sQuery, param);
        }
        public bool update()
        {
            string sQuery = "UPDATE [dbo].[food_type] SET [type_name] =@type_name,[type_pos] = @type_pos,[type_img] = @type_img,[status] = @status,[username] = @username,[modified] =@[modified] = @modified WHERE [type_id] = @type_id";
            SqlParameter[] param =
             {
                new SqlParameter("@type_id",this._type_id),
                new SqlParameter("@type_name",this._type_name),
                new SqlParameter("@type_pos",this._type_post),
                new SqlParameter("@type_img",this._type_img),
                new SqlParameter("@status",this._status),
                new SqlParameter("@username",this._type_name),
                new SqlParameter("@modified",this._modified)
            };
            return DataProvider.executeNonQuery(sQuery, param);
        }

        public bool delete()
        {
            string sQuery = "UPDATE [dbo].[food_type] SET [status] = @status WHERE [type_id] = @type_id";
            SqlParameter[] param =
             {
                
                new SqlParameter("@status",this.Status)
            };
            return DataProvider.executeNonQuery(sQuery, param);
        }
        public List<FoodType> getList()
        {
            string sQuery = "SELECT [type_id]  FROM [dbo].[food_type]";
            SqlParameter[] param = { };
            List<FoodType> ft = new List<FoodType>();
            DataTable dt = DataProvider.getDataTable(sQuery, param);
            foreach (DataRow dr in dt.Rows)
            {
                ft.Add(convertToObject(dr));
            }
            return ft;
        }
        public FoodType getItem(FoodType ft)
        {
            string sQuery = "SELECT [type_id]  FROM [dbo].[food_type] WHERE [type_id]=@type_id";
            SqlParameter[] param = {
                new SqlParameter("@username",ft._type_id)
            };
            return convertToObject(DataProvider.getDataTable(sQuery, param).Rows[0]);
        }
        private FoodType convertToObject(DataRow dr)
        {
            FoodType ft = new FoodType();
            ft.Type_id = Convert.ToInt32(dr["type_id"].ToString());
            ft.Type_name = dr["type_name"].ToString();
            ft.Type_post = Convert.ToInt32(dr["type_pos"].ToString());
            ft.Type_img = dr["type_img"].ToString();
            ft.Status =Convert.ToInt32(dr["status"].ToString());
            ft.Username = dr["username"].ToString();
            ft.Modified = Convert.ToDateTime(dr["modified"].ToString());
            return ft;
        }
    }
}