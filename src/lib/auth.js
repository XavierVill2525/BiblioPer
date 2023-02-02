module.exports = {
    isLoggedIn(req, res, next) {
        if (req.isAuthenticated()) {
            return next();
        }
        req.flash("message", "El usuario no existe");
        return res.redirect('/signin');
    }
};
