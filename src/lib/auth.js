module.exports = {
    isLoggedIn(req, res, next) {
        if (req.isAuthenticated()) {
            return next();
        }
        req.flash("message", "Se debe logear primero");
        return res.redirect('/signin');
    }
};
