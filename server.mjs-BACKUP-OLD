// Import dependencies
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import express from 'express';
import dotenv from 'dotenv';
import session from 'express-session';
import cookieParser from 'cookie-parser';
import csrf from 'csurf';
import { ensureAuthenticated } from './config/middleware/authMiddleware.mjs';
import loginRoutes from './routes/loginRoutes.mjs';
import authRoutes from './routes/authRoutes.mjs';
import userRoutes from './routes/userRoutes.mjs';
import dashboardRoutes from './routes/homeRoutes.mjs';

/*
** Resolve the directory
** name of the current module file
*/
const __dirname = dirname(fileURLToPath(import.meta.url));

/*
** Load environment
** variables from .env file
*/
dotenv.config({ path: join(__dirname, '.env') });

/*
** Check if SESSION_SECRET
** is provided
*/
if (!process.env.SESSION_SECRET) {
  console.error('SESSION_SECRET not found in .env file');
  process.exit(1);
}

// Initialize express app
const app = express();

/*
** Middleware
*/
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Serve static files from the "public" directory
app.use(express.static(join(__dirname, 'public')));

// Add cookieParser middleware
app.use(cookieParser());

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

/*
** Setup CSRF protection
*/
const csrfProtection = csrf({ cookie: true });
app.use(csrfProtection);

app.use((req, res, next) => {
  res.locals.csrfToken = req.csrfToken();
  next();
});

/*
** This is Routing for URL
*/ 
app.use('/', dashboardRoutes);
app.use('/users', userRoutes);
app.use('/login', loginRoutes);

app.use('/thor', ensureAuthenticated, (req, res) => {
  // Render dashboard or whatever is appropriate
  res.send('Welcome to the Dashboard');
});

/*
** Start server
*/
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
