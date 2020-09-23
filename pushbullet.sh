PUSHBULLET_TOKEN="o.nIqxVMPtLS4k2wcGbygoHQuSYY804Xpj"

	curl -s --header "Access-Token: $PUSHBULLET_TOKEN" \
     	 		--header "Content-Type: application/json" \
     	 		--data-binary "{\"body\":\"$2\",\"title\":\"$1\",\"type\":\"note\"}" \
     	 		--request POST \
     			https://api.pushbullet.com/v2/pushes > /dev/null
