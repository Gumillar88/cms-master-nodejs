// routes/loginRoutes.mjs
import express from 'express';
const router = express.Router();

import { loginHandle } from '../controllers/authController.mjs';

router.post('/login/auth', (req, res) => {
    loginHandle(req, res);
});

export default router;