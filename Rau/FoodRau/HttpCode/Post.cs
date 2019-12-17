﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Post
    {
		private int _post_id;
		private string _title;
		private string _short;
		private string _des;
		
		private string _img;
		private int _status;
		private string _username;
		private DateTime _modified;
		private DateTime _created;
		private string _type_name;
		private int _type;
		private int _count;

		public Post()
		{
			_post_id = 0;
			_title = "";
			_short = "";
			_des = "";
			_img = "";
			_status = 0;
			_username = "";
			_modified = DateTime.Now;
			_created = DateTime.Now;
			_type = 0;
		}

		public Post(int post_id, string title, string @short, string des, string img, int status, string username, DateTime modified, DateTime created,int type)
		{
			_post_id = post_id;
			_title = title;
			_short = @short;
			_des = des;
			_img = img;
			_status = status;
			_username = username;
			_modified = modified;
			_created = created;
			_type = type;
		}

		public int Post_id { get => _post_id; set => _post_id = value; }
		public string Title { get => _title; set => _title = value; }
		public string Short { get => _short; set => _short = value; }
		public string Des { get => _des; set => _des = value; }
		public string Img { get => _img; set => _img = value; }
		public int Status { get => _status; set => _status = value; }
		public string Username { get => _username; set => _username = value; }
		public DateTime Modified { get => _modified; set => _modified = value; }
		public DateTime Created { get => _created; set => _created = value; }
		public string Type_name { get => _type_name; set => _type_name = value; }
		public int Type { get => _type; set => _type = value; }
		public int Count { get => _count; set => _count = value; }

		public List<Post> getList()
		{
			string sQuery = "SELECT [post_id] ,[title] ,[short_des] ,[des] ,[img] ,[status] ,[username] ,[modified] ,[created] FROM [dbo].[post] WHERE status=1";
			SqlParameter[] param = { };
			List<Post> ft = new List<Post>();
			DataTable dt = DataProvider.getDataTable(sQuery, param);
			foreach (DataRow dr in dt.Rows)
			{
				ft.Add(convertToObject(dr));
			}
			return ft;
		}

		public List<Post> getListDescCreate()
		{
			string sQuery = "SELECT TOP 3 [post_id] ,[title] ,[short_des] ,[des] ,[type] ,[img] ,[status] ,[username] ,[modified] ,[created] FROM [dbo].[post] WHERE status = 1 Order by [created] DESC";
			SqlParameter[] param = { };
			List<Post> ft = new List<Post>();
			DataTable dt = DataProvider.getDataTable(sQuery, param);
			foreach (DataRow dr in dt.Rows)
			{
				ft.Add(convertToObject(dr));
			}
			return ft;
		}



		public List<Post> getListCount()
		{
			string sQuery = "SELECT [type],type_name ,count(*) as 'SL' From post,food_type where post.type = food_type.type_id group by [type],type_name";
			SqlParameter[] param = { };
			List<Post> ft = new List<Post>();
			DataTable dt = DataProvider.getDataTable(sQuery, param);
			foreach (DataRow dr in dt.Rows)
			{
				ft.Add(convertToObjectCount(dr));
			}
			return ft;
		}

		public Post convertToObjectCount(DataRow dr)
		{
			Post p = new Post();
			p.Type = Convert.ToInt32(dr["type"]);
			p.Type_name = dr["type_name"].ToString();
			p.Count =Convert.ToInt32(dr["SL"]);
			return p;
		}

		public Post getItem(int post_id)
		{
			string sQuery = "SELECT [post_id] ,[title] ,[short_des] ,[des] ,[img] ,[status] ,[username] ,[modified] ,[created] FROM [dbo].[post] WHERE post_id = @post_id AND status=1";
			SqlParameter[] param = {
				new SqlParameter("@post_id",post_id)
			};
			
			return convertToObject(DataProvider.getDataTable(sQuery,param).Rows[0]);
		}

		public List<Post> getList(int type)
		{
			string sQuery = "SELECT [post_id] ,[title] ,[short_des] ,[des] ,[img] ,[status] ,[username] ,[modified] ,[created] FROM [dbo].[post] WHERE type =@type AND status=1";
			SqlParameter[] param = { 
				new SqlParameter("@type",type)
			};
			List<Post> ft = new List<Post>();
			DataTable dt = DataProvider.getDataTable(sQuery, param);
			foreach (DataRow dr in dt.Rows)
			{
				ft.Add(convertToObject(dr));
			}
			return ft;
		}


		public Post convertToObject(DataRow dr)
		{
			Post p = new Post();
			p.Post_id = Convert.ToInt32(dr["post_id"]);
			p.Title =dr["title"].ToString();
			p.Short = dr["short_des"].ToString();
			p.Des = dr["des"].ToString();
			p.Img = dr["img"].ToString();
			p.Status = Convert.ToInt32(dr["status"]);
			p.Username = dr["username"].ToString();
			p.Modified = Convert.ToDateTime(dr["modified"]);
			p.Created = Convert.ToDateTime(dr["created"]);
			return p;
		}

	}
}