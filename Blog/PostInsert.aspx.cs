using Blog.Models;
using System;

namespace Blog
{
    public partial class PostInsert : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var post = new Post()
                {
                    Titulo = txtTitulo.Text,
                    Descricao = txtDescricao.Text,
                    Data = DateTime.Now
                };

                var context = new PostContext();
                context.Posts.Add(post);
                context.SaveChanges();
                Response.Redirect("Default.aspx");
            }


        }

    }
}