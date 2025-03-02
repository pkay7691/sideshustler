SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '1c7936e2-734d-4e43-97de-8d2b8df34873', '{"action":"user_confirmation_requested","actor_id":"65e0be8d-4b12-4796-8b37-7831f752b5cd","actor_username":"pkay7691@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2025-02-25 19:11:25.712531+00', ''),
	('00000000-0000-0000-0000-000000000000', '49e2c829-64c0-4049-80ad-63f50b923a7e', '{"action":"user_signedup","actor_id":"65e0be8d-4b12-4796-8b37-7831f752b5cd","actor_username":"pkay7691@gmail.com","actor_via_sso":false,"log_type":"team"}', '2025-02-25 19:14:28.852666+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('614a96e4-dbea-4127-a00f-0c090366d969', '65e0be8d-4b12-4796-8b37-7831f752b5cd', 'e11ec809-7d11-4334-829b-fe7cacd92a95', 's256', 'ioBHS4k8zxoyEad-be52bVQc6Z3Q7v3FZ02-W4RUI6M', 'email', '', '', '2025-02-25 19:11:25.715241+00', '2025-02-25 19:14:28.862986+00', 'email/signup', '2025-02-25 19:14:28.862947+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '65e0be8d-4b12-4796-8b37-7831f752b5cd', 'authenticated', 'authenticated', 'pkay7691@gmail.com', '$2a$10$F1NQYJxoVbrYniqVo35xPOxakdVMqxN3JfeK8K1so.bXiwU5Ta7da', '2025-02-25 19:14:28.854987+00', NULL, '', '2025-02-25 19:11:25.720349+00', '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{"sub": "65e0be8d-4b12-4796-8b37-7831f752b5cd", "email": "pkay7691@gmail.com", "email_verified": true, "phone_verified": false}', NULL, '2025-02-25 19:11:25.683997+00', '2025-02-25 19:14:28.860393+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('65e0be8d-4b12-4796-8b37-7831f752b5cd', '65e0be8d-4b12-4796-8b37-7831f752b5cd', '{"sub": "65e0be8d-4b12-4796-8b37-7831f752b5cd", "email": "pkay7691@gmail.com", "email_verified": true, "phone_verified": false}', 'email', '2025-02-25 19:11:25.707263+00', '2025-02-25 19:11:25.707318+00', '2025-02-25 19:11:25.707318+00', 'f92eb39b-932a-4f3d-a82a-87357f2e7a0c');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "username", "email", "bio", "profile_picture", "created_at") VALUES
	('3f6b6826-cca0-4e49-a8b9-ea0409f1d972', 'PK', 'patrickmkenny91@gmail.com', 'Founder of  Side-Hustle.io', NULL, '2025-02-28 12:20:21');


--
-- Data for Name: blog_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."blog_posts" ("id", "user_id", "title", "slug", "content", "featured_image", "status", "published_at", "created_at") VALUES
	('9387fe6b-b7cd-4d0d-be64-331b70541d9c', '3f6b6826-cca0-4e49-a8b9-ea0409f1d972', 'Best Shopify Side Hustle Ideas for 2025', 'side-hustle-ideas', '💡 Best Shopify Side Hustle Ideas for 2025
Not sure what to sell? Here are some profitable Shopify side hustle ideas that work even if you''re short on time:

1️⃣ Dropshipping Business
💰 Pros: No inventory, low upfront costs, automated fulfillment
🚀 How to Start: Use suppliers like AliExpress, CJ Dropshipping, or Spocket to sell trending products without handling stock.

2️⃣ Print-on-Demand (POD)
💰 Pros: No inventory, creative freedom, passive income potential
🚀 How to Start: Use Shopify apps like Printful or Printify to sell custom t-shirts, mugs, and hoodies without printing or shipping yourself.

3️⃣ Selling Digital Products
💰 Pros: 100% profit margins, no shipping, fully automated
🚀 How to Start: Sell eBooks, online courses, templates, planners, or stock photos using Shopify’s digital downloads feature.

4️⃣ Subscription Boxes
💰 Pros: Recurring income, high customer retention
🚀 How to Start: Sell monthly niche boxes (beauty, fitness, gourmet snacks) using Shopify’s subscription tools like Recharge.

5️⃣ Niche Handmade Products
💰 Pros: Unique products, strong branding, premium pricing
🚀 How to Start: If you make jewelry, candles, or custom gifts, Shopify helps you sell directly to customers and integrate with Etsy.

🛠 How to Start a Shopify Side Hustle (Step-by-Step Guide)
Step 1: Pick a Niche
Choosing a niche is crucial for success. Here’s how to find a profitable one:

✔️ Solve a problem (e.g., eco-friendly home products)
✔️ Target a passionate audience (e.g., fitness enthusiasts)
✔️ Check trends on Google Trends, TikTok, or Amazon Best Sellers

👉 Pro Tip: Avoid saturated markets unless you can offer something unique!

Step 2: Sign Up for Shopify
🔗 Start a free Shopify trial here (14 days free) and set up your store.

1️⃣ Choose a store name
2️⃣ Pick a domain name (e.g., yourbrand.com)
3️⃣ Select a theme (free or premium from the Shopify Theme Store)

Step 3: Add Products
✔️ Dropshipping? Use Oberlo, Spocket, or CJ Dropshipping to import products.
✔️ Print-on-Demand? Connect Printful or Printify.
✔️ Selling Handmade/Digital Products? Upload high-quality images & product descriptions.

Step 4: Optimize Your Store for SEO
To get free traffic from Google, optimize your store with:

🔍 Keyword Research – Use Google Keyword Planner to find high-traffic keywords.
📝 SEO-Friendly Product Titles & Descriptions – Include relevant keywords naturally.
📸 High-Quality Images – Helps with conversions and SEO.
🚀 Fast Loading Speed – Use tools like TinyPNG to compress images.

👉 Pro Tip: Create a blog section on Shopify and write content around your niche for better Google rankings.

Step 5: Set Up Payment & Shipping
✔️ Use Shopify Payments, PayPal, or Stripe to accept payments.
✔️ Dropshipping? Use free/low-cost shipping options.
✔️ Selling Physical Goods? Set clear shipping rates or offer free shipping.

Step 6: Launch & Market Your Store
Once your store is ready, start driving traffic with these marketing strategies:

📌 TikTok & Instagram Reels – Go viral with trending videos.
📌 Facebook & Instagram Ads – Target ideal customers with paid ads.
📌 Influencer Marketing – Partner with micro-influencers in your niche.
📌 SEO & Blogging – Write helpful blog posts to attract organic traffic.
📌 Email Marketing – Use Klaviyo to send promotional emails.

🎯 How Much Can You Make with a Shopify Side Hustle?
Your income depends on niche, product pricing, and marketing. Here’s a rough breakdown:

💰 Dropshipping: $500 – $5,000/month
💰 Print-on-Demand: $300 – $3,000/month
💰 Digital Products: $1,000 – $10,000/month
💰 Subscription Boxes: $1,000 – $8,000/month

With consistent marketing and a profitable niche, your Shopify side hustle could turn into a full-time income!

✅ Final Thoughts: Is Shopify a Good Side Hustle?
Absolutely! Shopify is one of the easiest and most scalable side hustles you can start today. It’s perfect if you want:

✅ Extra income without quitting your job
✅ A flexible online business with passive income potential
✅ To sell products worldwide with minimal effort

Whether you sell print-on-demand shirts, digital templates, or start a dropshipping store, Shopify gives you all the tools to succeed.

🚀 Ready to Start? Try Shopify for FREE!
🔗 Sign up for a free trial here and launch your store today!

💬 Have questions? Drop them in the comments below!

📌 SEO Optimization Used in This Post:
✅ Targeted Keywords: Shopify side hustle, best Shopify business ideas, how to start Shopify store, Shopify for beginners, Shopify passive income
✅ Long-Tail Keywords: Best Shopify side hustle ideas 2024, make money with Shopify, start an online store with Shopify
✅ Structured Headings (H1, H2, H3) for SEO & readability
✅ Internal Links & Call-to-Actions (CTAs) for engagement
✅ Mobile-Friendly Formatting (bullet points, emojis, short paragraphs)

This post is optimized to rank on Google and drive organic traffic. Let me know if you’d like any adjustments! 🚀', NULL, 'published', '2025-02-26 12:30:11', '2025-02-26 12:30:13');


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: post_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."categories_id_seq"', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."comments_id_seq"', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."likes_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
