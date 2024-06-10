import express from 'express';
import dotenv from 'dotenv';
import session from 'express-session';
import cookieParser from 'cookie-parser';
import csrf from 'csurf';
import { dirname, join } from 'path';
import { fileURLToPath } from 'url';
import { ensureAuthenticated } from './config/middleware/authMiddleware.mjs';
import loginRoutes from './routes/loginRoutes.mjs';
import authRoutes from './routes/authRoutes.mjs';
import userRoutes from './routes/userRoutes.mjs';
import dashboardRoutes from './routes/homeRoutes.mjs';

const __dirname = dirname(fileURLToPath(import.meta.url));
dotenv.config({ path: join(__dirname, '.env') });

if (!process.env.SESSION_SECRET) {
  console.error('SESSION_SECRET not found in .env file');
  process.exit(1);
}

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(join(__dirname, 'public')));
app.use(cookieParser());
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  cookie: { secure: false }
}));
const csrfProtection = csrf({ cookie: true });
app.use(csrfProtection);

app.use((req, res, next) => {
  res.locals.csrfToken = req.csrfToken();
  next();
});

app.use('/', dashboardRoutes);
app.use('/users', userRoutes);
app.use('/login', loginRoutes);
app.use('/thor', ensureAuthenticated, (req, res) => {
  res.send('<h1>Welcome to the Dashboard</h1>');
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

const PORT = process.env.PORT || 3001;

const startServer = (port) => {
  app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
  }).on('error', (err) => {
    if (err.code === 'EADDRINUSE') {
      console.error(`Port ${port} is in use, trying another port...`);
      startServer(port + 1);
    } else {
      throw err;
    }
  });
};

startServer(PORT);