using Blog.Models;
using System;
using System.Linq;
using System.Web.UI;

namespace Blog
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Post> postList_GetData()
        {
            var _db = new PostContext();
            IQueryable<Post> query = _db.Posts;
            return query;
        }
    }
}