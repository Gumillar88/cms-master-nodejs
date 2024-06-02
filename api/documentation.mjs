import express from 'express';
import path from 'path';

const router = express.Router();

router.get('/', (req, res) => {
  res.sendFile('documentation.html', { root: path.resolve('api') });
});

export default router;
