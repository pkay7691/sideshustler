import { createServerComponentClient } from "@supabase/auth-helpers-nextjs";
import { cookies } from "next/headers";
import Link from "next/link";
import { createClient } from "@/utils/supabase/server";

async function getBlogPost(slug) {
  // const supabase = createServerComponentClient({ cookies });

  const supabase = await createClient()
  const { data, error } = await supabase
    .from("blog_posts")
    .select("id, user_id:users(username), title, slug, content, featured_image, status, published_at, created_at")
    .eq("slug", slug)
    .eq("status", "published") // Only show published posts
    .single(); // Fetch only one post

  if (error) {
    console.error("Error fetching blog post:", error.message);
    return { post: null, error: "Post not found or unavailable." };
  }

  return { post: data, error: null };
}

export default async function Blog({ params }) {
  const { slug } = await params
  const { post, error } = await getBlogPost(slug);
  if (error) {
    return <p style={{ color: "red" }}>{error}</p>;
  }

  return (
    <div>
      <Link href="/blog">
        <p style={{ color: "blue", cursor: "pointer" }}>← Back to Blogs</p>
      </Link>

      <h1>{post.title}</h1>
      <h3>by Pat Kenny</h3>
      {post.featured_image && <img src={post.featured_image} alt={post.title} style={{ maxWidth: "100%" }} />}
      <p>{new Date(post.published_at || post.created_at).toLocaleDateString()}</p>
      <div dangerouslySetInnerHTML={{ __html: post.content }} />
    </div>
  );
}
