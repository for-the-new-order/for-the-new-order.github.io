document.addEventListener('DOMContentLoaded', function () {
    const overlayScrollbarsOptions = {
        className: 'os-theme-light',
    };
    OverlayScrollbars(document.querySelectorAll('body'), overlayScrollbarsOptions);
    OverlayScrollbars(document.querySelectorAll('.nav__list'), overlayScrollbarsOptions);
});
