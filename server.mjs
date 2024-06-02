// Import dependencies
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import express from 'express';
import dotenv from 'dotenv';
import session from 'express-session';
import loginRoutes from './routes/loginRoutes.mjs';
import userRoutes from './routes/userRoutes.mjs';
import dashboardRoutes from './routes/homeRoutes.mjs';

// Resolve the directory name of the current module file
const __dirname = dirname(fileURLToPath(import.meta.url));

// Load environment variables from .env file
dotenv.config({ path: join(__dirname, '.env') });

// Check if SESSION_SECRET is provided
if (!process.env.SESSION_SECRET) {
  console.error('SESSION_SECRET not found in .env file');
  process.exit(1);
}

// Initialize express app
const app = express();

// Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

/*
** Session configuration
** Use SESSION_SECRET from .env
*/ 
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  cookie: { secure: false }
}));

// This is Routing for URL
app.use('/', dashboardRoutes);
app.use('/users', userRoutes);
app.use('/login/thor', loginRoutes);

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
