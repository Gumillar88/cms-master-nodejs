// controllers/homeController.mjs
import { getAllUsers } from '../models/homeModel.mjs';
import {renderDashboardPage} from '../views/home.mjs';

const getAllHomeController = (req, res) => {
  const pageContent = renderDashboardPage();
  res.send(pageContent);
};

export {
  getAllHomeController,
};