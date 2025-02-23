import { Squada_One } from 'next/font/google';
import React from 'react';


const squadaOne = Squada_One({
  subsets: ['latin'],
  weight: '400',
});

const Header = () => {
  return (
    <header>
      <nav id="main-nav">
        <ul>
          <li className={squadaOne.className}>Side-Hustle.io</li>
          <li><a href="/" >Home</a></li>
          <li><a href="/about">About</a></li>
          <li><a href="/contact">Contact</a></li>
          <li><a href="/blogs">Blogs</a></li>
        </ul>
      </nav>
    </header>
  );
};

export default Header;
