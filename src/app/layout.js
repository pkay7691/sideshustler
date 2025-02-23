import { Geist, Geist_Mono, Squada_One } from "next/font/google";
import Header from "../components/Header";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

const squadaOne = Squada_One({
  subsets: ['latin'],
  weight: '400',
  variable: "--squadaOne"
  
})



export const metadata = {
  title: "Side-Hustle.io",
  description: "Generated by create next app",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className={geistSans.className}>
       <Header />
        <main className="container mx-auto p-4">{children}</main>
        <footer className="bg-gray-800 text-white text-center p-4">
          &copy; {new Date().getFullYear()} My Website
        </footer>
      </body>
    </html>
  );
}
