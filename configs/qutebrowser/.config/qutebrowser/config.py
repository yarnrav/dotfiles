c.url.searchengines = {"DEFAULT": "https://searx.tuxcloud.net/?q={}", "wa": "https://wiki.archlinux.org/?search={}"}
c.url.start_pages = "https://searx.tuxcloud.net"
config.bind(',m', 'hint links spawn mpv_yt {hint-url}')
c.colors.webpage.darkmode.enabled = True

"""Block YT ads.

I DO NOT USE THIS SCRIPT ANYMORE, in favor of a real adblocker."""


from qutebrowser.api import interceptor


def filter_yt(info: interceptor.Request):
	"""Block the given request if necessary."""
	url = info.request_url
	if (url.host() == 'www.youtube.com' and
			url.path() == '/get_video_info' and
			'&adformat=' in url.query()):
		info.block()


interceptor.register(filter_yt)

c.url.default_page = "https://searx.tuxcloud.net/"
config.source('qutewal.py')
