2014-11-03T02:03:52.558299+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T02:03:52.558301+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T02:03:52.579979+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T02:03:52.581366+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T02:03:52.558302+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T02:03:52.579705+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T02:03:52.580905+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T02:03:52.573326+00:00 app[web.1]: 
2014-11-03T02:03:52.581487+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T02:03:52.579478+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-03T02:03:52.581010+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T02:03:52.581656+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T02:03:52.581142+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T02:03:52.581785+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T02:03:52.582036+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T02:03:52.584486+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T02:03:52.582157+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T02:03:52.584579+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T02:03:52.584756+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T02:03:52.582282+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T02:03:52.582405+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T02:03:52.556474+00:00 app[web.1]: fs.js:695
2014-11-03T02:03:52.579845+00:00 app[web.1]: npm ERR! 
2014-11-03T02:03:52.581272+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-03T02:03:52.581911+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T02:03:52.584373+00:00 app[web.1]: npm ERR! 
2014-11-03T02:03:53.454177+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T02:03:53.472363+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T02:03:55.358480+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=90fbe478-cfa2-4ea9-ade6-3a0816328ad3 fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:03:56.383249+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=229f6d8c-ce14-408d-9535-bfdbb7484947 fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:03:57.217673+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=cde471ef-a4f6-4233-955d-424d703d17de fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:03:57.565678+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=2e3f0ec0-8f3f-4d75-baa1-7ac8144bf131 fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:06:58+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T02:07:36+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T02:07:36.645593+00:00 heroku[api]: Deploy dbb796e by daniel@danielstern.ca
2014-11-03T02:07:36.645744+00:00 heroku[api]: Release v33 created by daniel@danielstern.ca
2014-11-03T02:07:36.754592+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T02:07:44.499958+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:07:45.695926+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:07:45.695908+00:00 app[web.1]: 
2014-11-03T02:07:45.695930+00:00 app[web.1]: 
2014-11-03T02:07:45.695928+00:00 app[web.1]: > node server/app.js
2014-11-03T02:07:46.908233+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T02:07:46.913368+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T02:07:46.907796+00:00 app[web.1]: npm ERR! 
2014-11-03T02:07:46.871860+00:00 app[web.1]: fs.js:695
2014-11-03T02:07:46.907114+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-03T02:07:46.914271+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T02:07:46.872295+00:00 app[web.1]:   return binding.stat(pathModule._makeLong(path));
2014-11-03T02:07:46.872346+00:00 app[web.1]:                  ^
2014-11-03T02:07:46.874870+00:00 app[web.1]: Error: ENOENT, no such file or directory '/app/public/favicon.ico'
2014-11-03T02:07:46.874874+00:00 app[web.1]:     at Object.fs.statSync (fs.js:695:18)
2014-11-03T02:07:46.874875+00:00 app[web.1]:     at favicon (/app/node_modules/serve-favicon/index.js:47:15)
2014-11-03T02:07:46.874884+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T02:07:46.874886+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T02:07:46.918119+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T02:07:46.910425+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T02:07:46.910656+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T02:07:46.911133+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-03T02:07:46.911450+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T02:07:46.911777+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T02:07:46.912169+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T02:07:46.912744+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T02:07:46.913894+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T02:07:46.918223+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T02:07:46.874877+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:44:13)
2014-11-03T02:07:46.874878+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-03T02:07:46.87488
0+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-03T02:07:46.874881+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-03T02:07:46.874883+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-03T02:07:46.914593+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T02:07:46.914934+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T02:07:46.918018+00:00 app[web.1]: npm ERR! 
2014-11-03T02:07:46.866683+00:00 app[web.1]: 
2014-11-03T02:07:46.874887+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T02:07:46.899758+00:00 app[web.1]: 
2014-11-03T02:07:46.910196+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T02:07:46.918446+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T02:07:46.907520+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T02:07:47.818850+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T02:07:47.803650+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T02:08:15.844305+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=134a9b38-5c8b-421b-b6cb-0a37d1e98322 fwd="207.244.77.5" dyno= connect= service= status=503 bytes=
2014-11-03T02:08:17.040874+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=cfc3b2e3-0075-42d7-9272-6e673e43a1c9 fwd="207.244.77.5" dyno= connect= service= status=503 bytes=
2014-11-03T02:09:30+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T02:09:56+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T02:09:56.595800+00:00 heroku[api]: Deploy e024878 by daniel@danielstern.ca
2014-11-03T02:09:56.595871+00:00 heroku[api]: Release v34 created by daniel@danielstern.ca
2014-11-03T02:09:56.908588+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T02:10:04.254765+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:10:05.738093+00:00 app[web.1]: 
2014-11-03T02:10:05.738140+00:00 app[web.1]: > node server/app.js
2014-11-03T02:10:05.738138+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:10:05.738142+00:00 app[web.1]: 
2014-11-03T02:10:06.798502+00:00 app[web.1]: Express server listening on 11449, in production mode
2014-11-03T02:10:06.938884+00:00 heroku[web.1]: State changed from starting to up
2014-11-03T02:10:38.178680+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:10:38.374329+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:10:38.236622+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=fef6f503-53ae-4b9f-9f52-abb2b0aa181b fwd="207.244.77.5" dyno=web.1 connect=1ms service=72ms status=404 bytes=297
2014-11-03T02:10:38.241124+00:00 app[web.1]: [90mGET / [33m404 [90m64ms - 9b[0m
2014-11-03T02:10:38.376362+00:00 app[web.1]: [90mGET /favicon.ico [33m404 [90m3ms - 9b[0m
2014-11-03T02:10:38.374733+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=3f7abe96-f698-4767-8707-d832e2a5fe48 fwd="207.244.77.5" dyno=web.1 connect=1ms service=11ms status=404 bytes=181
