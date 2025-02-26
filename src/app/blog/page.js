import Link from "next/link";
import { createServerComponentClient } from "@supabase/auth-helpers-nextjs";
import { cookies } from "next/headers";

async function getBlogPost() {
  const supabase = createServerComponentClient({ cookies });
  const { data, error } = await supabase
    .from("blog_posts")
    .select("id, user_id, title, slug, content, featured_image, status, published_at, created_at")
    .eq("status", "published") // Only fetch published posts
    .order("published_at", { ascending: false });

  if (error) {
    console.error("Error fetching blog posts:", error.message);
    return { posts: [], error: "Failed to load blog posts. Please try again later." };
  }

  return { posts: data, error: null };
}

export default async function Blogs() {
  const { posts, error } = await getBlogPost();

  if (error) {
    return <p style={{ color: "red" }}>{error}</p>;
  }

  return (
    <div>
      <h1>Blogs</h1>
      {posts.length === 0 ? (
        <p>No posts available</p>
      ) : (
        posts.map((post) => (
          <div key={post.id} style={{ marginBottom: "20px" }}>
            <h2>
              <Link href={`/blog/${post.slug}`}>{post.title}</Link>
            </h2>
            <p>{new Date(post.published_at || post.created_at).toLocaleDateString()}</p>
          </div>
        ))
      )}
    </div>
  );
}