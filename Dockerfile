FROM 		node

# Start app dir
RUN 		mkdir /app

# Install app dependencies
ADD 		./package.json /app/package.json
RUN			cd /app; npm install -d

# Load app dependencies
ADD 		. /app/src

WORKDIR		/app

CMD 		["src/bin/hubot"]