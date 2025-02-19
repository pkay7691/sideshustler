import Image from "next/image";
import styles from "./page.module.css";

export default function Home() {
  return (
    <>
      <div className={styles.container}>
        <h1>Welcome to Side Hustler</h1>
        <p>Your go-to resource for all things side hustle.</p>
        <div>
          Howdy
        </div>
      </div>
    </>
  );
}
