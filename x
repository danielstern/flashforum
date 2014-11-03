2014-11-03T02:00:05.164412+00:00 app[web.1]: ├── glob@4.0.6 (inherits@2.0.1, once@1.3.1, minimatch@1.0.0)
2014-11-03T02:00:05.164414+00:00 app[web.1]: ├── request@2.42.0 (caseless@0.6.0, json-stringify-safe@5.0.0, aws-sign2@0.5.0, forever-agent@0.5.2, stringstream@0.0.4, oauth-sign@0.4.0, tunnel-agent@0.4.0, node-uuid@1.4.1, qs@1.2.2, mime-types@1.0.2, form-data@0.1.4, bl@0.9.3, tough-cookie@0.12.1, http-signature@0.10.0, hawk@1.1.1)
2014-11-03T02:00:05.164415+00:00 app[web.1]: ├── bower-registry-client@0.2.1 (graceful-fs@2.0.3, request-replay@0.2.0, lru-cache@2.3.1, async@0.2.10, mkdirp@0.3.5, request@2.27.0)
2014-11-03T02:00:05.164416+00:00 app[web.1]: ├── cardinal@0.4.0 (redeyed@0.4.4)
2014-11-03T02:00:05.164419+00:00 app[web.1]: ├── update-notifier@0.2.0 (semver-diff@0.1.0, string-length@0.1.2, latest-version@0.2.0, configstore@0.3.1)
2014-11-03T02:00:05.164420+00:00 app[web.1]: ├── inquirer@0.7.1 (figures@1.3.3, mute-stream@0.0.4, through@2.3.6, readline2@0.1.0, lodash@2.4.1, cli-color@0.3.2, rx@2.3.14)
2014-11-03T02:00:05.164421+00:00 app[web.1]: ├── handlebars@2.0.0 (optimist@0.3.7, uglify-js@2.3.6)
2014-11-03T02:00:05.164423+00:00 app[web.1]: └── insight@0.4.3 (object-assign@1.0.0, async@0.9.0, chalk@0.5.1, os-name@1.0.1, lodash.debounce@2.4.1, tough-cookie@0.12.1, configstore@0.3.1, inquirer@0.6.0)
2014-11-03T02:00:06+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T02:00:06.644154+00:00 heroku[api]: Deploy 3a1f915 by daniel@danielstern.ca
2014-11-03T02:00:06.644212+00:00 heroku[api]: Release v31 created by daniel@danielstern.ca
2014-11-03T02:00:10.417431+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `npm install -g bower;bower install -F;node server/app.js`
2014-11-03T02:00:10.417601+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T02:00:10.417758+00:00 app[web.1]: npm ERR! 
2014-11-03T02:00:10.418352+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T02:00:10.370762+00:00 app[web.1]: fs.js:695
2014-11-03T02:00:10.375598+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-03T02:00:10.370997+00:00 app[web.1]:   return binding.stat(pathModule._makeLong(path));
2014-11-03T02:00:10.375599+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-03T02:00:10.371006+00:00 app[web.1]:                  ^
2014-11-03T02:00:10.375600+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T02:00:10.375587+00:00 app[web.1]: Error: ENOENT, no such file or directory '/app/public/favicon.ico'
2014-11-03T02:00:10.370637+00:00 app[web.1]: 
2014-11-03T02:00:10.375602+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T02:00:10.375591+00:00 app[web.1]:     at Object.fs.statSync (fs.js:695:18)
2014-11-03T02:00:10.402289+00:00 app[web.1]: 
2014-11-03T02:00:10.375593+00:00 app[web.1]:     at favicon (/app/node_modules/serve-favicon/index.js:47:15)
2014-11-03T02:00:10.418713+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T02:00:10.419053+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T02:00:10.419156+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T02:00:10.419832+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T02:00:10.419946+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T02:00:10.375603+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T02:00:10.419240+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T02:00:10.420073+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T02:00:10.426586+00:00 app[web.1]: npm ERR! 
2014-11-03T02:00:10.375594+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:44:13)
2014-11-03T02:00:10.418791+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T02:00:10.419528+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T02:00:10.426660+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T02:00:10.375596+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-03T02:00:10.418882+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T02:00:10.426742+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T02:00:10.375597+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-03T02:00:10.419040+00:00 app[web.1]: npm ERR!     npm install -g bower;bower install -F;node server/app.js
2014-11-03T02:00:10.419622+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T02:00:10.426914+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T02:00:10.419382+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T02:00:10.539971+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2014-11-03T02:00:11.609683+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T02:00:23.435113+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T02:00:24.428223+00:00 app[web.1]: > node server/app.js
2014-11-03T02:00:24.428206+00:00 app[web.1]: 
2014-11-03T02:00:24.428225+00:00 app[web.1]: 
2014-11-03T02:00:24.428222+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T02:00:25.256576+00:00 app[web.1]: 
2014-11-03T02:00:25.258478+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-03T02:00:25.258479+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-03T02:00:25.258480+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T02:00:25.258482+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T02:00:25.258483+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T02:00:25.268949+00:00 app[web.1]: 
2014-11-03T02:00:25.275266+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T02:00:25.276548+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T02:00:25.275360+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T02:00:25.276666+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T02:00:25.256976+00:00 app[web.1]:                  ^
2014-11-03T02:00:25.256716+00:00 app[web.1]: fs.js:695
2014-11-03T02:00:25.274178+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T02:00:25.275974+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T02:00:25.274015+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-03T02:00:25.275843+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T02:00:25.278841+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T02:00:25.275457+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T02:00:25.276789+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T02:00:25.258472+00:00 app[web.1]:     at favicon (/app/node_modules/serve-favicon/index.js:47:15)
2014-11-03T02:00:25.258473+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:44:13)
2014-11-03T02:00:25.275557+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-03T02:00:25.278470+00:00 app[web.1]: npm ERR! 
2014-11-03T02:00:25.258470+00:00 app[web.1]:     at Object.fs.statSync (fs.js:695:18)
2014-11-03T02:00:25.258475+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-03T02:00:25.256959+00:00 app[web.1]:   return binding.stat(pathModule._makeLong(path));
2014-11-03T02:00:25.258476+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-03T02:00:25.275747+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T02:00:25.278670+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T02:00:25.274315+00:00 app[web.1]: npm ERR! 
2014-11-03T02:00:25.276101+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T02:00:25.275649+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T02:00:25.278575+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T02:00:25.274410+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T02:00:25.276238+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T02:00:26.081039+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T02:00:25.258467+00:00 app[web.1]: Error: ENOENT, no such file or directory '/app/public/favicon.ico'
2014-11-03T02:00:26.068526+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T02:00:28.805543+00:00 heroku[router]: at=error code=H20 desc="App boot timeout" method=GET path="/" host=flashforum.herokuapp.com request_id=b9dbbdf1-5f70-4d83-95c8-eebb17c42e4b fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:00:29.347799+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=24eb8bde-00b0-4436-9300-47799d9b73da fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:00:28.392549+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=a09221b4-2284-4d0d-9101-b630658178be fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:01:13.258074+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=a6a50b58-4294-4980-a1b1-e34464603fdf fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:01:14.197520+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=3f744b07-0741-4ee6-be17-0105af686f70 fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:01:15.199035+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=d03f5215-c64a-436f-86a6-0d91a63dd8ea fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
2014-11-03T02:01:15.626747+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=d6c6b91b-a39a-45bc-9008-a73accb73166 fwd="199.115.114.204" dyno= connect= service= status=503 bytes=
