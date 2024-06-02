// // controllers/userController.mjs

// controllers/homeController.mjs
import {renderUserIndexPage} from '../views/users/user.mjs';

const renderUserIndex = (req, res) => {
  const pageContent = renderUserIndexPage();
  res.send(pageContent);
};

export {
  renderUserIndex,
};