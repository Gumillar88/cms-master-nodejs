import { readFileSync, writeFileSync, appendFileSync } from 'fs';
import cryptoRandomString from 'crypto-random-string';
import dotenv from 'dotenv';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Muat file .env jika ada
const envPath = path.join(__dirname, '.env');
dotenv.config({ path: envPath });

// Hasilkan kunci rahasia
const secret = cryptoRandomString({ length: 64 });

// Tambahkan atau perbarui SESSION_SECRET di file .env
const envContent = `SESSION_SECRET=${secret}\n`;

// Baca file .env jika ada
let envFileContent = '';
try {
  envFileContent = readFileSync(envPath, 'utf8');
} catch (err) {
  console.log('.env file not found, creating a new one');
}

// Jika SESSION_SECRET sudah ada, perbarui nilainya, jika tidak tambahkan
if (envFileContent.includes('SESSION_SECRET')) {
  envFileContent = envFileContent.replace(/SESSION_SECRET=.*/, envContent.trim());
  writeFileSync(envPath, envFileContent);
  console.log(`SESSION_SECRET diperbarui di file .env: ${secret}`);
} else {
  appendFileSync(envPath, envContent);
  console.log(`SESSION_SECRET ditambahkan ke file .env: ${secret}`);
}
