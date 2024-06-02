// routes/homeRoutes.mjs
import express from 'express';
const router = express.Router();

import { renderUserIndex } from '../controllers/userController.mjs';

router.get('/', (req, res) => {
    renderUserIndex(req, res);
});

export default router;