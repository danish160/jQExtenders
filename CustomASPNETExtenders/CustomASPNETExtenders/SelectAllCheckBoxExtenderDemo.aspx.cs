using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebApp
{
    public partial class SelectAllCheckBoxExtenderDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = null;

                List<MyUsers> lstUsers = new List<MyUsers>
                                             {
                                                 #region Adding users

                                                 new MyUsers {FirstName = "Guy", LastName = "Barrera", UserID = 1},
                                                 new MyUsers {FirstName = "Catherine", LastName = "Weeks", UserID = 2},
                                                 new MyUsers {FirstName = "Roland", LastName = "Gregory", UserID = 3},
                                                 new MyUsers {FirstName = "Randi", LastName = "O'Connor", UserID = 4},
                                                 new MyUsers {FirstName = "Tina", LastName = "Gill", UserID = 5},
                                                 new MyUsers {FirstName = "Theresa", LastName = "Wilkinson", UserID = 6},
                                                 new MyUsers {FirstName = "Jeannette", LastName = "Bates", UserID = 7},
                                                 new MyUsers {FirstName = "Lloyd", LastName = "Bowers", UserID = 8},
                                                 new MyUsers {FirstName = "Tammie", LastName = "Cole", UserID = 9},
                                                 new MyUsers {FirstName = "Howard", LastName = "Townsend", UserID = 10},
                                                 new MyUsers {FirstName = "Desiree", LastName = "Orr", UserID = 11},
                                                 new MyUsers {FirstName = "Mike", LastName = "Marshall", UserID = 12},
                                                 new MyUsers {FirstName = "Kellie", LastName = "Guerra", UserID = 13},
                                                 new MyUsers {FirstName = "Deborah", LastName = "Martinez", UserID = 14},
                                                 new MyUsers {FirstName = "Elton", LastName = "Sexton", UserID = 15},
                                                 new MyUsers {FirstName = "Brock", LastName = "Collins", UserID = 16},
                                                 new MyUsers {FirstName = "Kristian", LastName = "Mac Donald", UserID = 17},
                                                 new MyUsers {FirstName = "Ruth", LastName = "Pruitt", UserID = 18},
                                                 new MyUsers {FirstName = "Roderick", LastName = "Villarreal", UserID = 19},
                                                 new MyUsers {FirstName = "Lloyd", LastName = "Velasquez", UserID = 20},

                                                 #endregion
                                             };

                GridView1.DataSource = lstUsers;
                GridView1.DataBind();
            }
        }
    }

    public class MyUsers
    {
        public int UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}