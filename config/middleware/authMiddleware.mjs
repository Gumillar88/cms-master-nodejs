/*
** middleware
** /authMiddleware.mjs
*/
export const ensureAuthenticated = (req, res, next) => {
    if (req.session.user) {
        return next();
    }
    
    res.redirect('/login/thor');
};