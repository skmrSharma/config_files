import qutebrowser.api.interceptor
 
def rewrite(request: qutebrowser.api.interceptor.Request):
    if request.request_url.host() == 'www.reddit.com':
        request.request_url.setHost('https://libreddit.kavin.rocks')
 
        try:
            request.redirect(request.request_url)
        except:
            pass

qutebrowser.api.interceptor.register(rewrite)
