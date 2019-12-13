using System;
using System.Collections.Generic;
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
		}

		public Post(int post_id, string title, string @short, string des, string img, int status, string username, DateTime modified, DateTime created)
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
	}
}