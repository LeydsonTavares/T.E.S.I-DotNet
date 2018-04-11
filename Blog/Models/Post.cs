using System;

namespace Blog.Models
{
    public class Post
    {
        public int PostId { get; set; }
        public string Titulo { get; set; }
        public DateTime Data { get; set; }
        public string Descricao { get; set; }
    }
}