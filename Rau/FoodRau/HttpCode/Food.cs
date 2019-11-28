﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FoodRau.HttpCode
{
    public class Food
    {
        private int _id;
        private string _name;
        private string _description;
        private decimal _price;
        private decimal _price_promo;
        private string _thumb;
        private string _img;
        private string _unit;
        private decimal _percent_promo;
        private int _rating;
        private int _sold;
        private decimal _point;
        private int _type;
        private int _status;
        private string _username;
        private DateTime _modified;

        public Food()
        {
        }

        public Food(int id, string name, string description, decimal price, decimal price_promo, string thumb, string img, string unit, decimal percent_promo, int rating, int sold, decimal point, int type, int status, string username, DateTime modified)
        {
            _id = id;
            _name = name;
            _description = description;
            _price = price;
            _price_promo = price_promo;
            _thumb = thumb;
            _img = img;
            _unit = unit;
            _percent_promo = percent_promo;
            _rating = rating;
            _sold = sold;
            _point = point;
            _type = type;
            _status = status;
            _username = username;
            _modified = modified;
        }

        public int Id { get => _id; set => _id = value; }
        public string Name { get => _name; set => _name = value; }
        public string Description { get => _description; set => _description = value; }
        public decimal Price { get => _price; set => _price = value; }
        public decimal Price_promo { get => _price_promo; set => _price_promo = value; }
        public string Thumb { get => _thumb; set => _thumb = value; }
        public string Img { get => _img; set => _img = value; }
        public string Unit { get => _unit; set => _unit = value; }
        public decimal Percent_promo { get => _percent_promo; set => _percent_promo = value; }
        public int Rating { get => _rating; set => _rating = value; }
        public int Sold { get => _sold; set => _sold = value; }
        public decimal Point { get => _point; set => _point = value; }
        public int Type { get => _type; set => _type = value; }
        public int Status { get => _status; set => _status = value; }
        public string Username { get => _username; set => _username = value; }
        public DateTime Modified { get => _modified; set => _modified = value; }



        public bool exist(int id)
        {
            string sQuery = "SELECT count(*) FROM [dbo].[food] WHERE [id] =@id";
            SqlParameter[] param =
            {
                new SqlParameter("@id",id)
            };
            return Convert.ToInt32(DataProvider.getDataTable(sQuery, param).Rows[0][0]) > 0;
        }

        public bool exist(string name)
        {
            string sQuery = "SELECT count(*) FROM [dbo].[food] WHERE [name] =@name";
            SqlParameter[] param =
            {
                new SqlParameter("@name",name)
            };
            return Convert.ToInt32(DataProvider.getDataTable(sQuery, param).Rows[0][0]) > 0;
        }

        public bool add()
        {
            string sQuery = "INSERT INTO [dbo].[food] ([name] ,[description] ,[price] ,[price_promo] ,[thumb] ,[img] ,[unit] ,[percent_promo] ,[rating] ,[sold] ,[point] ,[type] ,[status] ,[username] ,[modified]) VALUES (@name,@description,@price,@price_promo,@thumb,@img,@unit,@percent_promo,@rating,@sold,@point,@type,@status,@username,@modified)";
            SqlParameter[] param =
            {
                new SqlParameter("@name",this._name),
                new SqlParameter("@description",this._description),
                new SqlParameter("@price",this._price),
                new SqlParameter("@price_promo",this._price_promo),
                new SqlParameter("@thumb",this._thumb),
                new SqlParameter("@img",this._img),
                new SqlParameter("@unit",this._unit),
                new SqlParameter("@percent_promo",this._percent_promo),
                new SqlParameter("@rating",this._rating),
                new SqlParameter("@sold",this._sold),
                new SqlParameter("@point",this._point),
                new SqlParameter("@type",this._type),
                new SqlParameter("@status",this._status),
                new SqlParameter("@username",this._username),
                new SqlParameter("@modified",this._modified)
            };
            //trả về true(1) hoặc false(0)
            return DataProvider.executeNonQuery(sQuery, param);
        }
        public bool update()
        {
            string sQuery = "UPDATE [dbo].[food] SET [name] = @name ,[description] = @description ,[price] = @price ,[price_promo] = @price_promo ,[thumb] = @thumb ,[img] = @img ,[unit] = @unit ,[percent_promo] = @percent_promo ,[rating] = @rating ,[sold] = @sold ,[point] = @point ,[type] = @type ,[status] = @status ,[username] = @username ,[modified] = @modified WHERE [id] = @id";
            SqlParameter[] param =
             {
                new SqlParameter("@id",this._id),
                new SqlParameter("@name",this._name),
                new SqlParameter("@description",this._description),
                new SqlParameter("@price",this._price),
                new SqlParameter("@price_promo",this._price_promo),
                new SqlParameter("@thumb",this._thumb),
                new SqlParameter("@img",this._img),
                new SqlParameter("@unit",this._unit),
                new SqlParameter("@percent_promo",this._percent_promo),
                new SqlParameter("@rating",this._rating),
                new SqlParameter("@sold",this._sold),
                new SqlParameter("@point",this._point),
                new SqlParameter("@type",this._type),
                new SqlParameter("@status",this._status),
                new SqlParameter("@username",this._username),
                new SqlParameter("@modified",this._modified)
            };
            return DataProvider.executeNonQuery(sQuery, param);
        }

        public bool delete()
        {
            string sQuery = "UPDATE [dbo].[food] SET [status] = 1 WHERE [id] = @id";
            SqlParameter[] param =
             {
                new SqlParameter("@id",this._id)
            };
            return DataProvider.executeNonQuery(sQuery, param);
        }
        public List<Food> getList()
        {
            string sQuery = "SELECT *  FROM [dbo].[food] WHERE status =0";
            SqlParameter[] param = {};
            List<Food> ft = new List<Food>();
            DataTable dt = DataProvider.getDataTable(sQuery, param);
            foreach (DataRow dr in dt.Rows)
            {
                ft.Add(convertToObject(dr));
            }
            return ft;
        }
        public Food getItem(int id)
        {
            string sQuery = "SELECT *  FROM [dbo].[food] WHERE [id]=@id";
            SqlParameter[] param = {
                new SqlParameter("@id",id)
            };
            return convertToObject(DataProvider.getDataTable(sQuery, param).Rows[0]);
        }

        private Food convertToObject(DataRow dr)
        {
            Food f = new Food();
            f.Id = Convert.ToInt32(dr["id"].ToString());
            f.Name = dr["name"].ToString();
            f.Description = dr["description"].ToString();
            f.Price =Convert.ToDecimal(dr["price"].ToString());
            f.Price_promo =Convert.ToDecimal(dr["price_promo"].ToString());
            f.Thumb = dr["thumb"].ToString();
            f.Img = dr["img"].ToString();
            f.Unit = dr["unit"].ToString();
            f.Percent_promo =Convert.ToDecimal(dr["percent_promo"].ToString());
            f.Rating = Convert.ToInt32(dr["rating"].ToString());
            f.Sold = Convert.ToInt32(dr["sold"].ToString());
            f.Point = Convert.ToDecimal(dr["point"].ToString());
            f.Type = Convert.ToInt32(dr["type"].ToString());
            f.Status = Convert.ToInt32(dr["status"].ToString());
            f.Username = dr["username"].ToString();
            f.Modified = Convert.ToDateTime(dr["modified"].ToString());
            return f;
        }


    }
}