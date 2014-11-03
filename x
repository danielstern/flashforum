2014-11-03T02:14:56.670881+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T02:14:56.665726+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T02:14:56.666320+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T02:14:56.666457+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T02:14:56.666551+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T02:14:56.666670+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-03T02:14:56.666771+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T02:14:56.666870+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T02:14:56.666982+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T02:14:56.640997+00:00 app[web.1]: Express server listening on 3119, in development mode
2014-11-03T02:14:56.665129+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-03T02:14:57.538805+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T02:14:57.553316+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T02:15:14.719818+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=7f64fc56-bea4-4411-839d-6326ee48c98f fwd="207.244.77.5" dyno= connect= service= status=503 bytes=
2014-11-03T02:15:24.699138+00:00 heroku[api]: Set NODE_ENV config vars by daniel@danielstern.ca
2014-11-03T02:15:24.699850+00:00 heroku[api]: Release v37 created by daniel@danielstern.ca
2014-11-03T02:15:24.801498+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T02:15:32.322946+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:15:34.821739+00:00 heroku[web.1]: State changed from starting to up
2014-11-03T02:15:36.557804+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=a9cbf652-c863-4f73-bcbc-a73832827064 fwd="207.244.77.5" dyno=web.1 connect=2ms service=69ms status=404 bytes=181
2014-11-03T02:15:33.463203+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:15:33.463205+00:00 app[web.1]: > node server/app.js
2014-11-03T02:15:33.463206+00:00 app[web.1]: 
2014-11-03T02:15:34.518098+00:00 app[web.1]: Express server listening on 46845, in production mode
2014-11-03T02:15:33.463186+00:00 app[web.1]: 
2014-11-03T02:15:36.549043+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:15:36.556805+00:00 app[web.1]: [90mGET / [33m404 [90m10ms - 9b[0m
2014-11-03T02:15:59.801579+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=5a824aab-fcbb-4ad2-a217-76f7d99c6923 fwd="207.244.77.5" dyno=web.1 connect=2ms service=13ms status=404 bytes=181
2014-11-03T02:15:59.790478+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:15:59.793295+00:00 app[web.1]: [90mGET / [33m404 [90m4ms - 9b[0m
2014-11-03T02:16:36+00:00 heroku[slug-compiler]: Slug compilation st
arted
2014-11-03T02:17:12+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T02:17:12.729502+00:00 heroku[api]: Deploy 3109b32 by daniel@danielstern.ca
2014-11-03T02:17:12.729782+00:00 heroku[api]: Release v38 created by daniel@danielstern.ca
2014-11-03T02:17:13.325657+00:00 heroku[web.1]: State changed from up to starting
2014-11-03T02:17:15.882571+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2014-11-03T02:17:17.453617+00:00 heroku[web.1]: Process exited with status 143
2014-11-03T02:17:21.240029+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:17:22.545339+00:00 app[web.1]: 
2014-11-03T02:17:22.545358+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:17:22.545360+00:00 app[web.1]: > grunt; node server/app.js
2014-11-03T02:17:22.545362+00:00 app[web.1]: 
2014-11-03T02:17:22.578401+00:00 app[web.1]: sh: grunt: not found
2014-11-03T02:17:24.029814+00:00 app[web.1]: Express server listening on 56403, in production mode
2014-11-03T02:17:24.179466+00:00 heroku[web.1]: State changed from starting to up
2014-11-03T02:17:40.985182+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:17:40.993042+00:00 app[web.1]: [90mGET / [33m404 [90m10ms - 9b[0m
2014-11-03T02:17:40.995350+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=fe22587e-6dd5-4541-a5d6-d2d6fe5881e5 fwd="207.244.77.5" dyno=web.1 connect=1ms service=76ms status=404 bytes=181
2014-11-03T02:17:43.199532+00:00 app[web.1]: [90mGET / [33m404 [90m3ms - 9b[0m
2014-11-03T02:17:43.196935+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:17:43.203417+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=4d7295b9-1cae-4426-ab81-527d38ce647c fwd="207.244.77.5" dyno=web.1 connect=1ms service=8ms status=404 bytes=181
2014-11-03T02:19:11.051685+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=909608de-c60e-472f-8cdf-755610386cf9 fwd="207.244.77.5" dyno=web.1 connect=1ms service=6ms status=404 bytes=181
2014-11-03T02:19:11.050680+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:19:11.052717+00:00 app[web.1]: [90mGET / [33m404 [90m2ms - 9b[0m
2014-11-03T02:20:45+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T02:21:13.955339+00:00 heroku[web.1]: State changed from up to starting
2014-11-03T02:21:13+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T02:21:17.923924+00:00 app[web.1]: Error waiting for process to terminate: No child processes
2014-11-03T02:21:17.020957+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2014-11-03T02:21:18.782752+00:00 heroku[web.1]: Process exited with status 22
2014-11-03T02:21:20.369908+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:21:13.686523+00:00 heroku[api]: Deploy 394e156 by daniel@danielstern.ca
2014-11-03T02:21:13.686595+00:00 heroku[api]: Release v39 created by daniel@danielstern.ca
2014-11-03T02:21:22.676866+00:00 heroku[web.1]: State changed from starting to up
2014-11-03T02:21:24.253262+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:21:24.255973+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=e23bf035-91b1-45de-9b58-c45df298523d fwd="207.244.77.5" dyno=web.1 connect=1ms service=67ms status=404 bytes=181
2014-11-03T02:21:25.900696+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=9ca57fcf-d2a6-4250-8d22-bfe3a94d7db6 fwd="207.244.77.5" dyno=web.1 connect=1ms service=9ms status=404 bytes=181
2014-11-03T02:21:25.905266+00:00 app[web.1]: [90mGET / [33m404 [90m5ms - 9b[0m
2014-11-03T02:21:25.901762+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:21:27.570668+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=914c783c-96e5-4339-ad7c-23cb2aeafc7d fwd="207.244.77.5" dyno=web.1 connect=0ms service=8ms status=404 bytes=181
2014-11-03T02:21:27.571387+00:00 app[web.1]: [90mGET / [33m404 [90m2ms - 9b[0m
2014-11-03T02:21:27.569657+00:00 app[web.1]: Error: ENOENT, stat '/app/public/index.html'
2014-11-03T02:21:24.261287+00:00 app[web.1]: [90mGET / [33m404 [90m10ms - 9b[0m
2014-11-03T02:21:22.224091+00:00 app[web.1]: Express server listening on 30824, in production mode
2014-11-03T02:21:21.325134+00:00 app[web.1]: > node server/app.js
2014-11-03T02:21:21.325135+00:00 app[web.1]: 
2014-11-03T02:21:21.325132+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:21:21.325116+00:00 app[web.1]: 
2014-11-03T02:24:15+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T02:24:51+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T02:24:51.191926+00:00 heroku[api]: Deploy 1ea9f1c by daniel@danielstern.ca
2014-11-03T02:24:51.191978+00:00 heroku[api]: Release v40 created by daniel@danielstern.ca
2014-11-03T02:24:51.350944+00:00 heroku[web.1]: State changed from up to starting
2014-11-03T02:24:52.850685+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2014-11-03T02:24:53.878936+00:00 heroku[web.1]: Process exited with status 143
2014-11-03T02:25:00.310368+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:25:01.394290+00:00 app[web.1]: 
2014-11-03T02:25:01.394287+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:25:01.394266+00:00 app[web.1]: 
2014-11-03T02:25:01.394289+00:00 app[web.1]: > node server/app.js
2014-11-03T02:25:02.445899+00:00 app[web.1]: Express server listening on 8993, in production mode
2014-11-03T02:25:02.600552+00:00 heroku[web.1]: State changed from starting to up
2014-11-03T02:25:24.666333+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=0af4b95f-9ad3-4970-92a2-f21b243143a8 fwd="207.244.77.5" dyno=web.1 connect=1ms service=85ms status=404 bytes=181
2014-11-03T02:25:24.665029+00:00 app[web.1]: Error: ENOENT, stat 'client//public/index.html'
2014-11-03T02:25:24.673236+00:00 app[web.1]: [90mGET / [33m404 [90m12ms - 9b[0m
2014-11-03T02:25:25.481475+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=57115d73-958c-4396-92c4-d8a40c0b8ebd fwd="207.244.77.5" dyno=web.1 connect=1ms service=8ms status=404 bytes=181
2014-11-03T02:25:25.484455+00:00 app[web.1]: Error: ENOENT, stat 'client//public/index.html'
2014-11-03T02:25:25.487379+00:00 app[web.1]: [90mGET / [33m404 [90m4ms - 9b[0m
2014-11-03T02:25:27.329063+00:00 heroku[router]: at=info method=GET path="/" host=flashforum.herokuapp.com request_id=e5f62850-5262-4e8e-b6a7-202f08cc0218 fwd="207.244.77.5" dyno=web.1 connect=1ms service=7ms status=404 bytes=181
2014-11-03T02:25:27.331132+00:00 app[web.1]: Error: ENOENT, stat 'client//public/index.html'
2014-11-03T02:25:27.332874+00:00 app[web.1]: [90mGET / [33m404 [90m2ms - 9b[0m
