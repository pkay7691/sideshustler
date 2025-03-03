import { Squada_One } from 'next/font/google';
import React from 'react';
import Link from 'next/link';


const squadaOne = Squada_One({
  subsets: ['latin'],
  weight: '400',
});

const Header = () => {
  return (
    <header>
      <nav id="main-nav">
        <ul>
          <li><Link href="/"><span className={squadaOne.className}>Side-Hustle.io</span></Link></li>
          <li><Link href="/about">About</Link></li>
          <li><Link href="/contact">Contact</Link></li>
          <li><Link href="/blog">Blogs</Link></li>
        </ul>
      </nav>
    </header>
  );
};

export default Header;
