2014-11-03T01:30:57.396030+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=cf6842a6-bc3c-4c83-be97-532a40423de0 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:30:58.402622+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=d179cedd-8ed2-4203-92ce-d32748870fe2 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:34:57+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T01:35:53+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T01:35:53.860753+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T01:35:53.394632+00:00 heroku[api]: Release v24 created by daniel@danielstern.ca
2014-11-03T01:35:53.394551+00:00 heroku[api]: Deploy a1e33b3 by daniel@danielstern.ca
2014-11-03T01:36:05.398936+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `bower install;node server/app.js`
2014-11-03T01:36:05.410049+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T01:36:05.399238+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T01:36:05.304503+00:00 app[web.1]: fs.js:695
2014-11-03T01:36:05.401520+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T01:36:05.406268+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T01:36:05.401282+00:00 app[web.1]: npm ERR! 
2014-11-03T01:36:05.406098+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T01:36:12.453056+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T01:36:14.193616+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-03T01:36:14.193613+00:00 app[web.1]:     at favicon (/app/node_modules/serve-favicon/index.js:47:15)
2014-11-03T01:36:14.193611+00:00 app[web.1]:     at Object.fs.statSync (fs.js:695:18)
2014-11-03T01:36:14.193615+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-03T01:36:14.193614+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:44:13)
2014-11-03T01:36:14.193609+00:00 app[web.1]: Error: ENOENT, no such file or directory '/app/public/favicon.ico'
2014-11-03T01:36:14.209850+00:00 app[web.1]: 
2014-11-03T01:36:14.191804+00:00 app[web.1]: fs.js:695
2014-11-03T01:36:14.193620+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T01:36:14.192072+00:00 app[web.1]:   return binding.stat(pathModule._makeLong(path));
2014-11-03T01:36:14.193621+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T01:36:14.192076+00:00 app[web.1]:                  ^
2014-11-03T01:36:14.193623+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T01:36:14.191663+00:00 app[web.1]: 
2014-11-03T01:36:14.193618+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-03T01:36:14.193619+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-03T01:36:14.921941+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T01:36:01.931870+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T01:36:16.601146+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=d9300668-3ea6-45f2-9a68-dc766d3150b6 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:36:15.986337+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=b0195d4a-eda8-4a84-8dec-92271e20c2fc fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:36:17.768849+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=e8d46ba0-6058-4578-a694-f40ed379bb07 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:36:04.130237+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T01:36:04.130223+00:00 app[web.1]: 
2014-11-03T01:36:13.463070+00:00 app[web.1]: 
2014-11-03T01:36:05.305061+00:00 app[web.1]:                  ^
2014-11-03T01:36:05.307009+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T01:36:05.416658+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T01:36:05.307001+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:44:13)
2014-11-03T01:36:05.415343+00:00 app[web.1]: npm ERR!     bower install;node server/app.js
2014-11-03T01:36:05.433508+00:00 app[web.1]: npm ERR! 
2014-11-03T01:36:04.171314+00:00 app[web.1]: sh: bower: not found
2014-11-03T01:36:05.305058+00:00 app[web.1]:   return binding.stat(pathModule._makeLong(path));
2014-11-03T01:36:05.307008+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T01:36:05.416412+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T01:36:04.130239+00:00 app[web.1]: > bower install;node server/app.js
2014-11-03T01:36:13.463067+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T01:36:13.478020+00:00 app[web.1]: sh: bower: not found
2014-11-03T01:36:04.130240+00:00 app[web.1]: 
2014-11-03T01:36:05.292991+00:00 app[web.1]: 
2014-11-03T01:36:05.307006+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-03T01:36:05.416201+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T01:36:05.306994+00:00 app[web.1]: Error: ENOENT, no such file or directory '/app/public/favicon.ico'
2014-11-03T01:36:05.307010+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T01:36:05.417869+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T01:36:13.463050+00:00 app[web.1]: 
2014-11-03T01:36:05.307003+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-03T01:36:05.415519+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T01:36:05.433585+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T01:36:05.307005+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-03T01:36:05.415899+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T01:36:05.434022+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T01:36:05.307000+00:00 app[web.1]:     at favicon (/app/node_modules/serve-favicon/index.js:47:15)
2014-11-03T01:36:05.418284+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T01:36:13.463069+00:00 app[web.1]: > bower install;node server/app.js
2014-11-03T01:36:06.268272+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T01:36:05.307004+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-03T01:36:05.415669+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T01:36:05.433713+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T01:36:06.255354+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T01:36:05.306999+00:00 app[web.1]:     at Object.fs.statSync (fs.js:695:18)
2014-11-03T01:36:05.343666+00:00 app[web.1]: 
2014-11-03T01:36:05.418082+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T01:36:14.215179+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `bower install;node server/app.js`
2014-11-03T01:36:14.217279+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T01:36:14.216689+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T01:36:14.218494+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T01:36:14.220919+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T01:36:14.216965+00:00 app[web.1]: npm ERR!     bower install;node server/app.js
2014-11-03T01:36:06.268705+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T01:36:14.216864+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T01:36:14.218720+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T01:36:14.217152+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T01:36:14.218283+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T01:36:14.217058+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T01:36:14.215615+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T01:36:14.217853+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T01:36:14.216770+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T01:36:14.218068+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T01:36:14.220822+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T01:36:14.215358+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T01:36:14.220713+00:00 app[web.1]: npm ERR! 
2014-11-03T01:36:14.215501+00:00 app[web.1]: npm ERR! 
2014-11-03T01:36:14.217616+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T01:36:14.221082+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T01:36:14.911484+00:00 heroku[web.1]: Process exited with status 1
