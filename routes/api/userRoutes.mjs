// routes/userRoutes.mjs
import { parse } from 'url';
import { getAllUsersController, getUserByIdController, createUserController, updateUserController, deleteUserController } from '../../api/userController.mjs';

const userRoutes = (req, res) => {
  const parsedUrl = parse(req.url, true);
  const path = parsedUrl.pathname;
  const method = req.method;
  const idMatch = path.match(/^\/users\/(\d+)$/);

  if (path === '/api/users' && method === 'GET') {
    getAllUsersController(req, res);
  } else if (path === '/api/users' && method === 'POST') {
    createUserController(req, res);
  } else if (idMatch && method === 'GET') {
    req.params = { id: idMatch[1] };
    getUserByIdController(req, res);
  } else if (idMatch && method === 'PUT') {
    req.params = { id: idMatch[1] };
    updateUserController(req, res);
  } else if (idMatch && method === 'DELETE') {
    req.params = { id: idMatch[1] };
    deleteUserController(req, res);
  } else {
    res.writeHead(404, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ message: 'Route not found' }));
  }
};

export default userRoutes;
