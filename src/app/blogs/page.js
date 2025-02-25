import React from 'react';

const blogPosts = [
  { id: 1, title: 'First Blog Post', content: 'This is the content of the first blog post.' },
  { id: 2, title: 'Second Blog Post', content: 'This is the content of the second blog post.' },
  // Add more blog posts here
];



const Blogs = () => {
  return (
    <div>
      <h1>Blogs</h1>
      <p>Welcome to the blog page!</p>
      <div>
        {blogPosts.map(post => (
          <div key={post.id}>
            <h2>{post.title}</h2>
            <p>{post.content}</p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Blogs;
