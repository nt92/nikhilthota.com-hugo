// Google Analytics
window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
ga('create', '{{ .Site.GoogleAnalytics }}', 'auto');

// Extras (https://github.com/googleanalytics/autotrack)
ga('require', 'outboundLinkTracker');
ga('require', 'mediaQueryTracker');
ga('require', 'impressionTracker');
ga('require', 'maxScrollTracker');
ga('require', 'pageVisibilityTracker');

ga('send', 'pageview');

// Prevent copying images
document.addEventListener('contextmenu', event => {
    if (event.target.tagName === 'IMG') {
        event.preventDefault()
    }
});
