// controllers/authController.mjs
import { renderLoginPage } from '../views/login.mjs';
import { authenticateUser } from '../models/authModel.mjs';


const loginRender = (req, res) => {
    const csrfToken = req.csrfToken();
  
    const pageContent = renderLoginPage(csrfToken);
    res.send(pageContent);
};

export const loginHandle = async (req, res) => {
    const { email, password } = req.body;
    // console.log(req.body);
    try {
        const user = await authenticateUser(email, password);
      
        if (user) {
            req.session.user = user;
            res.status(200).json({ message: 'Login successful', redirectUrl: '/thor' });
        } else {
            res.status(401).json({ message: 'Invalid credentials' });
        }
    } catch (error) {
        res.status(500).json({ message: 'Internal server error' });
    }
};

export {
  loginRender
};