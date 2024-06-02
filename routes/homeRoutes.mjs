import express from 'express';
const router = express.Router();

import { getAllHomeController } from '../controllers/homeController.mjs';

router.get('/', (req, res) => {
    getAllHomeController(req, res);
});

export default router;
