// controllers/authController.mjs
import {renderLoginPage} from '../views/login.mjs';

const loginRender = (req, res) => {
    const pageContent = renderLoginPage();
    res.send(pageContent);
};

export {
  loginRender,
};