2014-11-02T22:57:43.368204+00:00 heroku[api]: Release v2 created by daniel@danielstern.ca
2014-11-02T22:57:43.368093+00:00 heroku[api]: Enable Logplex by daniel@danielstern.ca
2014-11-02T22:59:07+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-02T22:59:33.106408+00:00 heroku[api]: Scale to web=1 by daniel@danielstern.ca
2014-11-02T22:59:33+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-02T22:59:33.246282+00:00 heroku[api]: Release v3 created by daniel@danielstern.ca
2014-11-02T22:59:33.246222+00:00 heroku[api]: Deploy c52b216 by daniel@danielstern.ca
2014-11-02T22:59:35.527645+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T22:59:36.598897+00:00 app[web.1]: 
2014-11-02T22:59:36.598919+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T22:59:36.598921+00:00 app[web.1]: > node server/app.js
2014-11-02T22:59:36.598922+00:00 app[web.1]: 
2014-11-02T22:59:37.440978+00:00 app[web.1]: 
2014-11-02T22:59:37.442924+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:51:13)
2014-11-02T22:59:37.441090+00:00 app[web.1]: module.js:340
2014-11-02T22:59:37.442926+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-02T22:59:37.441373+00:00 app[web.1]:     throw err;
2014-11-02T22:59:37.442927+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-02T22:59:37.441379+00:00 app[web.1]:     ^
2014-11-02T22:59:37.442929+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-02T22:59:37.442913+00:00 app[web.1]: Error: Cannot find module 'connect-livereload'
2014-11-02T22:59:37.442930+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-02T22:59:37.442917+00:00 app[web.1]:     at Function.Module._resolveFilename (module.js:338:15)
2014-11-02T22:59:37.442931+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-02T22:59:37.442918+00:00 app[web.1]:     at Function.Module._load (module.js:280:25)
2014-11-02T22:59:37.442920+00:00 app[web.1]:     at Module.require (module.js:364:17)
2014-11-02T22:59:37.455930+00:00 app[web.1]: 
2014-11-02T22:59:37.442923+00:00 app[web.1]:     at require (module.js:380:17)
2014-11-02T22:59:37.465105+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-02T22:59:37.465759+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-02T22:59:37.465913+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-02T22:59:37.466021+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-02T22:59:37.466212+00:00 app[web.1]: npm ERR! cwd /app
2014-11-02T22:59:37.466243+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-02T22:59:37.466846+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-02T22:59:37.465557+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-02T22:59:37.467060+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-02T22:59:37.464438+00:00 app[web.1]: npm ERR! 
2014-11-02T22:59:37.469171+00:00 app[web.1]: npm ERR! 
2014-11-02T22:59:37.465340+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-02T22:59:37.469292+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-02T22:59:37.465458+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-02T22:59:37.469396+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-02T22:59:37.465650+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-02T22:59:37.469590+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-02T22:59:37.464180+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-02T22:59:37.464288+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-02T22:59:37.464551+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-02T22:59:37.465232+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-02T22:59:38.230262+00:00 heroku[web.1]: Process exited with status 1
2014-11-02T22:59:38.238744+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T22:59:38.239642+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T22:59:40.636625+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T22:59:42.246041+00:00 app[web.1]: 
2014-11-02T22:59:42.246061+00:00 app[web.1]: > node server/app.js
2014-11-02T22:59:42.246059+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T22:59:42.246062+00:00 app[web.1]: 
2014-11-02T22:59:43.020519+00:00 app[web.1]: 
2014-11-02T22:59:43.020658+00:00 app[web.1]: module.js:340
2014-11-02T22:59:43.022454+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-02T22:59:43.022447+00:00 app[web.1]:     at Function.Module._resolveFilename (module.js:338:15)
2014-11-02T22:59:43.022457+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-02T22:59:43.022444+00:00 app[web.1]: Error: Cannot find module 'connect-livereload'
2014-11-02T22:59:43.022456+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-02T22:59:43.022448+00:00 app[web.1]:     at Function.Module._load (module.js:280:25)
2014-11-02T22:59:43.022458+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-02T22:59:43.020931+00:00 app[web.1]:     throw err;
2014-11-02T22:59:43.049574+00:00 app[web.1]: 
2014-11-02T22:59:43.022450+00:00 app[web.1]:     at Module.require (module.js:364:17)
2014-11-02T22:59:43.059098+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-02T22:59:43.022452+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:51:13)
2014-11-02T22:59:43.059469+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-02T22:59:43.021007+00:00 app[web.1]:     ^
2014-11-02T22:59:43.059278+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-02T22:59:43.022451+00:00 app[web.1]:     at require (module.js:380:17)
2014-11-02T22:59:43.059628+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-02T22:59:43.022453+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-02T22:59:43.059798+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-02T22:59:43.060761+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-02T22:59:43.059959+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-02T22:59:43.061000+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-02T22:59:43.061508+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-02T22:59:43.061810+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-02T22:59:43.065069+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-02T22:59:43.064331+00:00 app[web.1]: npm ERR! 
2014-11-02T22:59:43.062024+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-02T22:59:43.064510+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-02T22:59:43.064738+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-02T22:59:43.061232+00:00 app[web.1]: npm ERR! cwd /app
2014-11-02T22:59:43.056918+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-02T22:59:43.057263+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-02T22:59:43.057514+00:00 app[web.1]: npm ERR! 
2014-11-02T22:59:43.057689+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-02T22:59:43.058641+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-02T22:59:43.912212+00:00 heroku[web.1]: Process exited with status 1
2014-11-02T22:59:43.915738+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:00:12.061875+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=82eb9103-3616-4d8c-b753-63ef3c59a837 fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:01:06.655286+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=b65d6793-9a1d-4d9a-8e62-08b0a0f47742 fwd="162.210.196.131" dyno= connect= service= status=503 bytes=
2014-11-02T23:01:07.650824+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=d99f6ba9-ee4e-4379-ad85-89e290545470 fwd="162.210.196.131" dyno= connect= service= status=503 bytes=
2014-11-02T23:02:50+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-02T23:02:59+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-02T23:02:58.945716+00:00 heroku[api]: Deploy 819e215 by daniel@danielstern.ca
2014-11-02T23:02:58.945788+00:00 heroku[api]: Release v4 created by daniel@danielstern.ca
2014-11-02T23:02:59.045471+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:03:01.126146+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:03:02.908749+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:03:02.908751+00:00 app[web.1]: > npm install; node server/app.js
2014-11-02T23:03:02.908752+00:00 app[web.1]: 
2014-11-02T23:03:02.908732+00:00 app[web.1]: 
2014-11-02T23:03:03.487745+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:03:31.314171+00:00 app[web.1]: npm WARN optional dep failed, continuing fsevents@0.3.0
2014-11-02T23:03:47.814116+00:00 app[web.1]: > phantomjs@1.9.12 install /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs
2014-11-02T23:03:47.814118+00:00 app[web.1]: > node install.js
2014-11-02T23:03:47.814120+00:00 app[web.1]: 
2014-11-02T23:03:47.814110+00:00 app[web.1]: 
2014-11-02T23:03:48.355924+00:00 app[web.1]: Receiving...
2014-11-02T23:03:48.354742+00:00 app[web.1]: Downloading https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:03:48.355149+00:00 app[web.1]: Saving to /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:03:48.767249+00:00 app[web.1]: Extracting tar contents (via spawned process)
2014-11-02T23:03:48.714705+00:00 app[web.1]: 
2014-11-02T23:03:48.766163+00:00 app[web.1]: Received 12854K total.
2014-11-02T23:03:52.565456+00:00 app[web.1]: Removing /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom
2014-11-02T23:03:52.567217+00:00 app[web.1]: Copying extracted folder /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2-extract-1414969428766/phantomjs-1.9.8-linux-x86_64 -> /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom
2014-11-02T23:03:53.532428+00:00 app[web.1]: Done. Phantomjs binary available at /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom/bin/phantomjs
2014-11-02T23:03:53.486485+00:00 app[web.1]: Removing /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2-extract-1414969428766
2014-11-02T23:03:53.529087+00:00 app[web.1]: Writing location.js file
2014-11-02T23:04:01.607341+00:00 heroku[web.1]: Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch
2014-11-02T23:04:01.607680+00:00 heroku[web.1]: Stopping process with SIGKILL
2014-11-02T23:04:02.708674+00:00 heroku[web.1]: Process exited with status 137
2014-11-02T23:04:02.718050+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:04:03.930796+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=b9f9e116-f99b-436e-bec3-eb2c4a47f33a fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:05:02.516048+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=45706f96-8035-44de-9478-73a23c677c08 fwd="162.210.196.131" dyno= connect= service= status=503 bytes=
2014-11-02T23:05:02.841853+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=cd6aacac-0487-4d2d-9623-56a19b967fc3 fwd="162.210.196.131" dyno= connect= service= status=503 bytes=
2014-11-02T23:09:38.335716+00:00 heroku[api]: Add mongohq:sandbox add-on by daniel@danielstern.ca
2014-11-02T23:09:38.335847+00:00 heroku[api]: Release v5 created by daniel@danielstern.ca
2014-11-02T23:09:38.879911+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:09:41.240454+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:09:42.315311+00:00 app[web.1]: 
2014-11-02T23:09:42.315330+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:09:42.315333+00:00 app[web.1]: > npm install; node server/app.js
2014-11-02T23:09:42.315334+00:00 app[web.1]: 
2014-11-02T23:09:42.928121+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:10:04.677304+00:00 app[web.1]: npm WARN optional dep failed, continuing fsevents@0.3.0
2014-11-02T23:10:10+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-02T23:10:17+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-02T23:10:16.984151+00:00 heroku[api]: Deploy 5608446 by daniel@danielstern.ca
2014-11-02T23:10:16.984222+00:00 heroku[api]: Release v6 created by daniel@danielstern.ca
2014-11-02T23:10:18.342809+00:00 app[web.1]: > phantomjs@1.9.12 install /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs
2014-11-02T23:10:18.342801+00:00 app[web.1]: 
2014-11-02T23:10:18.342811+00:00 app[web.1]: > node install.js
2014-11-02T23:10:18.342812+00:00 app[web.1]: 
2014-11-02T23:10:19.174652+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:10:19.231298+00:00 app[web.1]: Saving to /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:10:19.230931+00:00 app[web.1]: Downloading https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:10:19.232517+00:00 app[web.1]: Receiving...
2014-11-02T23:10:19.700298+00:00 app[web.1]: Extracting tar contents (via spawned process)
2014-11-02T23:10:19.658552+00:00 app[web.1]: 
2014-11-02T23:10:19.699653+00:00 app[web.1]: Received 12854K total.
2014-11-02T23:10:19.708018+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2014-11-02T23:10:20.319272+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:10:20.319250+00:00 app[web.1]: 
2014-11-02T23:10:20.319274+00:00 app[web.1]: > node server/app.js
2014-11-02T23:10:20.319276+00:00 app[web.1]: 
2014-11-02T23:10:21.104608+00:00 app[web.1]:     at require (module.js:380:17)
2014-11-02T23:10:21.122388+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-02T23:10:21.123053+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-02T23:10:21.102933+00:00 app[web.1]: 
2014-11-02T23:10:21.104610+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:51:13)
2014-11-02T23:10:21.122590+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-02T23:10:21.123467+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-02T23:10:21.121154+00:00 app[web.1]: npm ERR! 
2014-11-02T23:10:21.122488+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-02T23:10:21.123186+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-02T23:10:21.120825+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-02T23:10:21.104603+00:00 app[web.1]:     at Function.Module._resolveFilename (module.js:338:15)
2014-11-02T23:10:21.104617+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-02T23:10:21.122816+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-02T23:10:21.123606+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-02T23:10:21.104607+00:00 app[web.1]:     at Module.require (module.js:364:17)
2014-11-02T23:10:21.115816+00:00 app[web.1]: 
2014-11-02T23:10:21.122920+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-02T23:10:21.125472+00:00 app[web.1]: npm ERR! 
2014-11-02T23:10:21.104605+00:00 app[web.1]:     at Function.Module._load (module.js:280:25)
2014-11-02T23:10:21.104616+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-02T23:10:21.125842+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-02T23:10:21.103245+00:00 app[web.1]:     ^
2014-11-02T23:10:21.122720+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-02T23:10:21.123754+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-02T23:10:21.121783+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-02T23:10:21.103240+00:00 app[web.1]:     throw err;
2014-11-02T23:10:21.104613+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-02T23:10:21.123349+00:00 app[web.1]: npm ERR! cwd /app
2014-11-02T23:10:21.121014+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-02T23:10:21.103013+00:00 app[web.1]: module.js:340
2014-11-02T23:10:21.104611+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-02T23:10:21.125576+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-02T23:10:21.121260+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-02T23:10:21.104601+00:00 app[web.1]: Error: Cannot find module 'connect-livereload'
2014-11-02T23:10:21.104614+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-02T23:10:21.125670+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-02T23:10:21.093056+00:00 heroku[web.1]: Process exited with status 143
2014-11-02T23:10:21.846736+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:10:21.846736+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:10:21.827896+00:00 heroku[web.1]: Process exited with status 1
2014-11-02T23:10:25.306771+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:10:27.015283+00:00 app[web.1]: 
2014-11-02T23:10:27.015300+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:10:27.015302+00:00 app[web.1]: > node server/app.js
2014-11-02T23:10:27.015303+00:00 app[web.1]: 
2014-11-02T23:10:29.787675+00:00 app[web.1]: 
2014-11-02T23:10:29.787796+00:00 app[web.1]: module.js:340
2014-11-02T23:10:29.789551+00:00 app[web.1]: Error: Cannot find module 'connect-livereload'
2014-11-02T23:10:29.789561+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-02T23:10:29.788051+00:00 app[web.1]:     ^
2014-11-02T23:10:29.789554+00:00 app[web.1]:     at Function.Module._resolveFilename (module.js:338:15)
2014-11-02T23:10:29.789557+00:00 app[web.1]:     at Module.require (module.js:364:17)
2014-11-02T23:10:29.789556+00:00 app[web.1]:     at Function.Module._load (module.js:280:25)
2014-11-02T23:10:29.789558+00:00 app[web.1]:     at require (module.js:380:17)
2014-11-02T23:10:29.788047+00:00 app[web.1]:     throw err;
2014-11-02T23:10:29.789563+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-02T23:10:29.789566+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-02T23:10:29.789559+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:51:13)
2014-11-02T23:10:29.789562+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-02T23:10:29.789565+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-02T23:10:29.835366+00:00 app[web.1]: 
2014-11-02T23:10:29.918404+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-02T23:10:29.885886+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-02T23:10:29.902906+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-02T23:10:29.885483+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-02T23:10:29.937114+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-02T23:10:29.885787+00:00 app[web.1]: npm ERR! 
2014-11-02T23:10:29.903424+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-02T23:10:29.918548+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-02T23:10:29.902703+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-02T23:10:29.903193+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-02T23:10:29.903578+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-02T23:10:29.885654+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-02T23:10:29.902794+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-02T23:10:29.903289+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-02T23:10:29.903106+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-02T23:10:29.903705+00:00 app[web.1]: npm ERR! cwd /app
2014-11-02T23:10:29.918659+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-02T23:10:29.903007+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-02T23:10:29.936841+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-02T23:10:29.936935+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-02T23:10:29.936721+00:00 app[web.1]: npm ERR! 
2014-11-02T23:10:31.075735+00:00 heroku[web.1]: Process exited with status 1
2014-11-02T23:10:31.120711+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:10:33.071282+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=a0999f33-e82e-4f96-a52b-e3ac828878f8 fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:21:06+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-02T23:21:12+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-02T23:21:12.477344+00:00 heroku[api]: Deploy 8375f85 by daniel@danielstern.ca
2014-11-02T23:21:12.477418+00:00 heroku[api]: Release v7 created by daniel@danielstern.ca
2014-11-02T23:21:12.620922+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:21:15.073594+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:21:16.671297+00:00 app[web.1]: 
2014-11-02T23:21:16.671315+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:21:16.671317+00:00 app[web.1]: > npm install; grunt serve;
2014-11-02T23:21:16.671318+00:00 app[web.1]: 
2014-11-02T23:21:17.414059+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:22:10.422431+00:00 app[web.1]: npm WARN optional dep failed, continuing fsevents@0.3.0
2014-11-02T23:22:15.104617+00:00 heroku[web.1]: Stopping process with SIGKILL
2014-11-02T23:22:15.981520+00:00 heroku[web.1]: Process exited with status 137
2014-11-02T23:22:15.104395+00:00 heroku[web.1]: Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch
2014-11-02T23:22:15.996086+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:22:15.994805+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:22:18.149128+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:22:19.427751+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:22:19.427753+00:00 app[web.1]: > npm install; grunt serve;
2014-11-02T23:22:19.427733+00:00 app[web.1]: 
2014-11-02T23:22:19.427754+00:00 app[web.1]: 
2014-11-02T23:22:19.987981+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:22:32.839466+00:00 heroku[router]: at=error code=H20 desc="App boot timeout" method=GET path="/" host=flashforum.herokuapp.com request_id=7fa2d58d-2e37-4bdf-89ab-482e7f76037b fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:22:41.956359+00:00 heroku[router]: at=error code=H20 desc="App boot timeout" method=GET path="/" host=flashforum.herokuapp.com request_id=228ade42-efc9-436c-988e-0d02af22933a fwd="207.244.77.23" dyno= connect= service= status=503 bytes=
2014-11-02T23:22:42.128621+00:00 app[web.1]: npm WARN optional dep failed, continuing fsevents@0.3.0
2014-11-02T23:22:49.163606+00:00 heroku[router]: at=error code=H20 desc="App boot timeout" method=GET path="/" host=flashforum.herokuapp.com request_id=f9368c17-8baa-460a-bae6-d55e76a9de36 fwd="207.244.77.23" dyno= connect= service= status=503 bytes=
2014-11-02T23:22:55.342950+00:00 app[web.1]: 
2014-11-02T23:22:55.342957+00:00 app[web.1]: > phantomjs@1.9.12 install /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs
2014-11-02T23:22:55.342959+00:00 app[web.1]: > node install.js
2014-11-02T23:22:55.342960+00:00 app[web.1]: 
2014-11-02T23:22:55.810535+00:00 app[web.1]: Saving to /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:22:55.810191+00:00 app[web.1]: Downloading https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:22:55.811150+00:00 app[web.1]: Receiving...
2014-11-02T23:22:56.273902+00:00 app[web.1]: 
2014-11-02T23:22:56.698874+00:00 app[web.1]: Received 12854K total.
2014-11-02T23:22:56.699597+00:00 app[web.1]: Extracting tar contents (via spawned process)
2014-11-02T23:23:00.193961+00:00 app[web.1]: Copying extracted folder /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2-extract-1414970576699/phantomjs-1.9.8-linux-x86_64 -> /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom
2014-11-02T23:23:00.192475+00:00 app[web.1]: Removing /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom
2014-11-02T23:23:00.693200+00:00 app[web.1]: Removing /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2-extract-1414970576699
2014-11-02T23:23:00.720174+00:00 app[web.1]: Done. Phantomjs binary available at /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom/bin/phantomjs
2014-11-02T23:23:00.719893+00:00 app[web.1]: Writing location.js file
2014-11-02T23:23:04.741714+00:00 heroku[router]: at=error code=H20 desc="App boot timeout" method=GET path="/" host=flashforum.herokuapp.com request_id=94233403-46c2-4046-a70a-2c0777abb487 fwd="207.244.77.23" dyno= connect= service= status=503 bytes=
2014-11-02T23:23:18.165231+00:00 heroku[web.1]: Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch
2014-11-02T23:23:18.165421+00:00 heroku[web.1]: Stopping process with SIGKILL
2014-11-02T23:23:19.003872+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:23:18.990833+00:00 heroku[web.1]: Process exited with status 137
2014-11-02T23:23:20.879245+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=2b7ebb57-53c5-4cc3-9e1d-9542c37ced3c fwd="207.244.77.23" dyno= connect= service= status=503 bytes=
2014-11-02T23:23:21.558149+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=97400f5b-15bd-4a9e-a45e-c91b665c7395 fwd="207.244.77.23" dyno= connect= service= status=503 bytes=
2014-11-02T23:25:56.195495+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=1ed337fe-e20c-4f98-ab52-6cb25402eb4e fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:25:56.554519+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=52b6e468-c0b9-4c5c-898d-de838f5adc42 fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:31:31.126439+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-02T23:31:33.403500+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:31:32.710753+00:00 app[web.1]: 
2014-11-02T23:31:32.710772+00:00 app[web.1]: > npm install; grunt serve;
2014-11-02T23:31:32.710773+00:00 app[web.1]: 
2014-11-02T23:31:32.710771+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-02T23:31:28.615431+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:32:03.534486+00:00 app[web.1]: npm WARN optional dep failed, continuing fsevents@0.3.0
2014-11-02T23:32:31.348736+00:00 heroku[web.1]: Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch
2014-11-02T23:32:31.348736+00:00 heroku[web.1]: Stopping process with SIGKILL
2014-11-02T23:32:32.292804+00:00 heroku[web.1]: Process exited with status 137
2014-11-02T23:32:32.297266+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:34:32+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-02T23:34:40+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-02T23:34:40.236499+00:00 heroku[api]: Deploy ac08ceb by daniel@danielstern.ca
2014-11-02T23:34:40.236581+00:00 heroku[api]: Release v8 created by daniel@danielstern.ca
2014-11-02T23:34:40.485066+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:34:43.353384+00:00 heroku[web.1]: Starting process with command `npm install; grunt serve;`
2014-11-02T23:34:45.168140+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:35:43.616463+00:00 heroku[web.1]: Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch
2014-11-02T23:35:43.616614+00:00 heroku[web.1]: Stopping process with SIGKILL
2014-11-02T23:35:45.046994+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:35:45.047625+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:35:45.030465+00:00 heroku[web.1]: Process exited with status 137
2014-11-02T23:35:47.016784+00:00 heroku[web.1]: Starting process with command `npm install; grunt serve;`
2014-11-02T23:35:48.160798+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:36:01.200352+00:00 heroku[router]: at=error code=H20 desc="App boot timeout" method=GET path="/" host=flashforum.herokuapp.com request_id=16166b21-df69-429a-8b5c-7422bd160ee2 fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:36:09.649929+00:00 app[web.1]: npm WARN optional dep failed, continuing fsevents@0.3.0
2014-11-02T23:36:23.744985+00:00 app[web.1]: > phantomjs@1.9.12 install /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs
2014-11-02T23:36:23.744962+00:00 app[web.1]: 
2014-11-02T23:36:23.744989+00:00 app[web.1]: 
2014-11-02T23:36:23.744987+00:00 app[web.1]: > node install.js
2014-11-02T23:36:24.320540+00:00 app[web.1]: Saving to /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:36:24.319958+00:00 app[web.1]: Downloading https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
2014-11-02T23:36:24.321337+00:00 app[web.1]: Receiving...
2014-11-02T23:36:24.757605+00:00 app[web.1]: Received 12854K total.
2014-11-02T23:36:24.767223+00:00 app[web.1]: Extracting tar contents (via spawned process)
2014-11-02T23:36:24.724800+00:00 app[web.1]: 
2014-11-02T23:36:28.696606+00:00 app[web.1]: Copying extracted folder /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2-extract-1414971384761/phantomjs-1.9.8-linux-x86_64 -> /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom
2014-11-02T23:36:28.693061+00:00 app[web.1]: Removing /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom
2014-11-02T23:36:29.228736+00:00 app[web.1]: Done. Phantomjs binary available at /app/node_modules/karma-phantomjs-launcher/node_modules/phantomjs/lib/phantom/bin/phantomjs
2014-11-02T23:36:29.227482+00:00 app[web.1]: Writing location.js file
2014-11-02T23:36:29.095128+00:00 app[web.1]: Removing /tmp/phantomjs/phantomjs-1.9.8-linux-x86_64.tar.bz2-extract-1414971384761
2014-11-02T23:36:47.192243+00:00 heroku[web.1]: Error R10 (Boot timeout) -> Web process failed to bind to $PORT within 60 seconds of launch
2014-11-02T23:36:47.192243+00:00 heroku[web.1]: Stopping process with SIGKILL
2014-11-02T23:36:48.096888+00:00 heroku[web.1]: Process exited with status 137
2014-11-02T23:36:48.107073+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:41:20.850770+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=440f6053-9ef9-45cb-97fd-2eaa68d0f0ad fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:41:21.821752+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=80e7cbb0-3e59-4e25-a8f9-391a071b63b1 fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:43:27.183023+00:00 heroku[api]: Set NODE_ENV config vars by daniel@danielstern.ca
2014-11-02T23:43:27.183099+00:00 heroku[api]: Release v9 created by daniel@danielstern.ca
2014-11-02T23:43:27.490498+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:43:29.488158+00:00 heroku[web.1]: Starting process with command `npm install; grunt serve;`
2014-11-02T23:43:30.634669+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:43:31.802706+00:00 app[web.1]: bash: grunt: command not found
2014-11-02T23:43:32.449869+00:00 heroku[web.1]: Process exited with status 127
2014-11-02T23:43:32.460621+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:43:53.543941+00:00 heroku[api]: Set NODE_PATH config vars by daniel@danielstern.ca
2014-11-02T23:43:53.544020+00:00 heroku[api]: Release v10 created by daniel@danielstern.ca
2014-11-02T23:43:53.660265+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:43:55.548488+00:00 heroku[web.1]: Starting process with command `npm install; grunt serve;`
2014-11-02T23:43:56.766578+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:43:57.566457+00:00 app[web.1]: bash: grunt: command not found
2014-11-02T23:43:58.228573+00:00 heroku[web.1]: Process exited with status 127
2014-11-02T23:43:58.246850+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:44:17.231065+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=f28d5d60-146c-4dd7-8f69-03edda2528fa fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:44:18.223781+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=421242e0-1e67-4351-9d71-9a8c066edaef fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:44:19.048318+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=7bda900e-c1dc-4146-92e1-14114496bcce fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:44:19.824829+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=659799b0-6367-47c1-9aa2-22017bc3b6ca fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:44:47.412848+00:00 heroku[api]: Set NODE_PATH config vars by daniel@danielstern.ca
2014-11-02T23:44:47.413037+00:00 heroku[api]: Release v11 created by daniel@danielstern.ca
2014-11-02T23:44:47.690926+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:44:49.581892+00:00 heroku[web.1]: Starting process with command `npm install; grunt serve;`
2014-11-02T23:44:50.910913+00:00 app[web.1]: npm WARN package
.json passport-local@0.1.6 No README data
2014-11-02T23:44:51.993940+00:00 app[web.1]: bash: grunt: command not found
2014-11-02T23:44:52.750944+00:00 heroku[web.1]: Process exited with status 127
2014-11-02T23:44:52.762145+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:44:59.412353+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=b2fde00e-a503-4ba0-a8fd-e1a0ce0d6fdb fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
2014-11-02T23:45:00.000333+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=c54dd4ae-2322-484a-b0a5-36f1c9f38215 fwd="207.244.77.16" dyno= connect= service= status=503 bytes=
