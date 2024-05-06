function proxy_on
	export http_proxy=http://135.181.14.45:5959/
	export https_proxy=$http_proxy
	export ftp_proxy=$http_proxy
	export rsync_proxy=$http_proxy
	export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

	echo -e "Proxy is ready!"
end

function proxy_off
	# Thanks, Alan Pope ;)
	unset http_proxy https_proxy ftp_proxy rsync_proxy \ 
		HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY

	echo -e "Proxy environment variable removed."
end

