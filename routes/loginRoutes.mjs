// routes/loginRoutes.mjs
import express from 'express';
const router = express.Router();

import { loginRender, loginHandle } from '../controllers/authController.mjs';

router.get('/thor', (req, res) => {
    loginRender(req, res);
});

router.post('/auth', (req, res) => {
    loginHandle(req, res);
});

export default router;