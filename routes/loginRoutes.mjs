// routes/loginRoutes.mjs
import express from 'express';
const router = express.Router();

import { loginRender } from '../controllers/authController.mjs';

router.get('/', (req, res) => {
    loginRender(req, res);
});

export default router;