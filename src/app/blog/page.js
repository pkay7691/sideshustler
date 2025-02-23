import React from 'react';


const blog = {
  title: 'Sample Blog',
  date: '2/23/2025',
  author: 'Sammy Vercellino',
  body: 'Lorem Ipsum',
  category: ['Ecommerce', 'Dropshipping']
}

const Blog = () => {
  return (
    <div>
      <h1>{blog.title}</h1>
      <h4>By {blog.author}</h4>
      <p>{blog.body}</p>
    </div>
  );
};

export default Blog;
