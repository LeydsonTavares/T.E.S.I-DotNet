using System;
using System.Collections.Generic;
using System.Data.Entity;

namespace Blog.Models
{
    public class PostDataBaseInitializer : DropCreateDatabaseIfModelChanges<PostContext>
    {
        protected override void Seed(PostContext context)
        {
            GetPosts().ForEach(p => context.Posts.Add(p));
        }

        private static List<Post> GetPosts()
        {
            var posts = new List<Post>
            {
                new Post
                {
                    Titulo = "Post_1",
                    Data = DateTime.Now,
                    Descricao="Initial post.",
                    PostId = 1
                }
            };

            return posts;
        }
    }
}