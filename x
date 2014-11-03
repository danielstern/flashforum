2014-11-03T01:23:43.370705+00:00 app[web.1]: Injecting [32mless[39m files [90m(4 files)[39m
2014-11-03T01:23:43.321674+00:00 app[web.1]: [4mRunning "serve" task[24m
2014-11-03T01:23:43.378562+00:00 app[web.1]: 
2014-11-03T01:23:44.778017+00:00 heroku[web.1]: Process exited with status 6
2014-11-03T01:23:42.827235+00:00 app[web.1]: grunt-cli@0.1.13 /app/vendor/node/lib/node_modules/grunt-cli
2014-11-03T01:23:52.754731+00:00 heroku[web.1]: Starting process with command `npm install -g bower; npm install; bower install; npm install grunt -g; npm install grunt-cli -g; grunt serve;`
2014-11-03T01:23:43.378594+00:00 app[web.1]: [4mRunning "concurrent:server" (concurrent) task[24m
2014-11-03T01:23:42.827240+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-03T01:23:43.370887+00:00 app[web.1]: [32m>> [39mNothing changed
2014-11-03T01:23:43.331304+00:00 app[web.1]: [4mRunning "clean:server" (clean) task[24m
2014-11-03T01:23:43.355663+00:00 app[web.1]: [4mRunning "env:all" (env) task[24m
2014-11-03T01:23:44.053719+00:00 app[web.1]:     [33mWarning: [4mRunning "less:server" (less) task[24m
2014-11-03T01:23:44.053736+00:00 app[web.1]:     Execution Time (2014-11-03 01:23:43 UTC)
2014-11-03T01:23:44.053754+00:00 app[web.1]:     loading tasks  243ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 86%
2014-11-03T01:23:44.053727+00:00 app[web.1]:     >> [39m1 @import 'bootstrap/less/bootstrap.less';[31m
2014-11-03T01:23:44.066376+00:00 app[web.1]: loading tasks      126ms  ▇▇▇▇▇▇▇ 15%
2014-11-03T01:23:44.053851+00:00 app[web.1]:         
2014-11-03T01:23:43.355639+00:00 app[web.1]: 
2014-11-03T01:23:44.053731+00:00 app[web.1]:     
2014-11-03T01:23:44.053728+00:00 app[web.1]:     >> [39m2 @import 'font-awesome/less/font-awesome.less';
2014-11-03T01:23:44.066382+00:00 app[web.1]: serve               11ms  ▇ 1%
2014-11-03T01:23:44.066389+00:00 app[web.1]: 
2014-11-03T01:23:42.827243+00:00 app[web.1]: └── findup-sync@0.1.3 (glob@3.2.11, lodash@2.4.1)
2014-11-03T01:23:44.053726+00:00 app[web.1]:     [31m>> [39mFileError: 'bootstrap/less/bootstrap.less' wasn't found in client/app/app.less on line 1, column 1:[31m
2014-11-03T01:23:44.053735+00:00 app[web.1]:     
2014-11-03T01:23:44.066388+00:00 app[web.1]: Total 861ms
2014-11-03T01:23:43.359630+00:00 app[web.1]: [4mRunning "injector:less" (injector) task[24m
2014-11-03T01:23:43.359595+00:00 app[web.1]: 
2014-11-03T01:23:43.331247+00:00 app[web.1]: 
2014-11-03T01:23:44.053730+00:00 app[web.1]:     [33mWarning: Error compiling client/app/app.less Use --force to continue.[39m
2014-11-03T01:23:44.053757+00:00 app[web.1]:     Total 283ms Use --force to continue.[39m
2014-11-03T01:23:44.055371+00:00 app[web.1]: 
2014-11-03T01:23:44.053733+00:00 app[web.1]:     [31mAborted due to warnings.[39m
2014-11-03T01:23:44.055373+00:00 app[web.1]: Execution Time (2014-11-03 01:23:43 UTC)
2014-11-03T01:23:43.362183+00:00 app[web.1]: [90mMissing option `template`, using `dest` as template instead[39m
2014-11-03T01:23:41.843692+00:00 app[web.1]: /app/vendor/node/bin/grunt -> /app/vendor/node/lib/node_modules/grunt-cli/bin/grunt
2014-11-03T01:23:44.055369+00:00 app[web.1]:     
2014-11-03T01:23:44.053734+00:00 app[web.1]:     
2014-11-03T01:23:44.066383+00:00 app[web.1]: clean:server        24ms  ▇▇ 3%
2014-11-03T01:23:44.066385+00:00 app[web.1]: injector:less       19ms  ▇ 2%
2014-11-03T01:23:44.066386+00:00 app[web.1]: concurrent:server  676ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 79%
2014-11-03T01:23:44.053755+00:00 app[web.1]:     less:server     39ms  ▇▇▇▇▇▇▇ 14%
2014-11-03T01:23:44.054113+00:00 app[web.1]:         [31mAborted due to warnings.[39m
2014-11-03T01:23:42.827242+00:00 app[web.1]: ├── resolve@0.3.1
2014-11-03T01:25:12.443930+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=f322a3e8-419c-42e4-8c98-4eae530833a9 fwd="207.244.77.143" dyno= connect= service= status=503 bytes=
2014-11-03T01:24:43.274715+00:00 heroku[web.1]: Process exited with status 6
2014-11-03T01:28:19+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T01:28:49.928883+00:00 heroku[api]: Deploy 666aa35 by daniel@danielstern.ca
2014-11-03T01:28:50.202851+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T01:28:49.929661+00:00 heroku[api]: Release v23 created by daniel@danielstern.ca
2014-11-03T01:28:50+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T01:28:58.778112+00:00 heroku[web.1]: Starting process with command `npm start`
2014-11-03T01:29:00.311530+00:00 app[web.1]: > node server/app.js
2014-11-03T01:29:01.312508+00:00 app[web.1]: npm ERR! flashforum@0.0.0 start: `node server/app.js`
2014-11-03T01:29:01.323657+00:00 app[web.1]: npm ERR! There is likely additional logging output above.
2014-11-03T01:29:01.312756+00:00 app[web.1]: npm ERR! Exit status 8
2014-11-03T01:29:01.323732+00:00 app[web.1]: npm ERR! System Linux 3.8.11-ec2
2014-11-03T01:29:00.311529+00:00 app[web.1]: > flashforum@0.0.0 start /app
2014-11-03T01:29:00.311532+00:00 app[web.1]: 
2014-11-03T01:29:01.314754+00:00 app[web.1]: npm ERR! This is most likely a problem with the flashforum package,
2014-11-03T01:29:01.324155+00:00 app[web.1]: npm ERR! node -v v0.10.33
2014-11-03T01:29:00.311509+00:00 app[web.1]: 
2014-11-03T01:29:01.323102+00:00 app[web.1]: npm ERR! Tell the author that this fails on your system:
2014-11-03T01:29:01.325839+00:00 app[web.1]: npm ERR! code ELIFECYCLE
2014-11-03T01:29:01.313823+00:00 app[web.1]: npm ERR! Failed at the flashforum@0.0.0 start script.
2014-11-03T01:29:01.324033+00:00 app[web.1]: npm ERR! cwd /app
2014-11-03T01:29:01.290450+00:00 app[web.1]: fs.js:695
2014-11-03T01:29:01.323498+00:00 app[web.1]: npm ERR!     npm owner ls flashforum
2014-11-03T01:29:01.323404+00:00 app[web.1]: npm ERR! You can get their info via:
2014-11-03T01:29:01.323265+00:00 app[web.1]: npm ERR!     node server/app.js
2014-11-03T01:29:01.314869+00:00 app[web.1]: npm ERR! not with npm itself.
2014-11-03T01:29:01.324267+00:00 app[web.1]: npm ERR! npm -v 1.4.28
2014-11-03T01:29:01.313400+00:00 app[web.1]: npm ERR! 
2014-11-03T01:29:01.323855+00:00 app[web.1]: npm ERR! command "/app/vendor/node/bin/node" "/app/vendor/node/bin/npm" "start"
2014-11-03T01:29:02.165942+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T01:29:03.484338+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=2623738e-3ca8-42e7-83bd-9fe854e0cfa7 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:29:02.146510+00:00 heroku[web.1]: Process exited with status 1
2014-11-03T01:29:04.504445+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=9d90ad2f-ddfe-4ed5-bd0c-b209b2461e52 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:29:09.191678+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=b0176f7f-ff07-4baf-be27-e790ef60e6b8 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:29:09.615404+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=0cb552ec-a45a-4ee3-be9f-66d3b6ee3c76 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:29:01.292337+00:00 app[web.1]:     at module.exports (/app/server/config/express.js:44:13)
2014-11-03T01:29:01.292338+00:00 app[web.1]:     at Object.<anonymous> (/app/server/app.js:28:28)
2014-11-03T01:29:01.328163+00:00 app[web.1]: npm ERR! 
2014-11-03T01:29:01.292349+00:00 app[web.1]:     at startup (node.js:119:16)
2014-11-03T01:29:01.292342+00:00 app[web.1]:     at Object.Module._extensions..js (module.js:474:10)
2014-11-03T01:29:01.292340+00:00 app[web.1]:     at Module._compile (module.js:456:26)
2014-11-03T01:29:01.328257+00:00 app[web.1]: npm ERR! Additional logging details can be found in:
2014-11-03T01:29:01.328360+00:00 app[web.1]: npm ERR!     /app/npm-debug.log
2014-11-03T01:29:01.290293+00:00 app[web.1]: 
2014-11-03T01:29:01.290714+00:00 app[web.1]:                  ^
2014-11-03T01:29:01.306072+00:00 app[web.1]: 
2014-11-03T01:29:01.328629+00:00 app[web.1]: npm ERR! not ok code 0
2014-11-03T01:29:01.292330+00:00 app[web.1]: Error: ENOENT, no such file or directory '/app/public/favicon.ico'
2014-11-03T01:29:01.292347+00:00 app[web.1]:     at Function.Module.runMain (module.js:497:10)
2014-11-03T01:29:01.290689+00:00 app[web.1]:   return binding.stat(pathModule._makeLong(path));
2014-11-03T01:29:01.292333+00:00 app[web.1]:     at Object.fs.statSync (fs.js:695:18)
2014-11-03T01:29:01.292335+00:00 app[web.1]:     at favicon (/app/node_modules/serve-favicon/index.js:47:15)
2014-11-03T01:29:01.292343+00:00 app[web.1]:     at Module.load (module.js:356:32)
2014-11-03T01:29:01.292345+00:00 app[web.1]:     at Function.Module._load (module.js:312:12)
2014-11-03T01:30:57.396030+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=cf6842a6-bc3c-4c83-be97-532a40423de0 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
2014-11-03T01:30:58.402622+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=d179cedd-8ed2-4203-92ce-d32748870fe2 fwd="207.244.77.144" dyno= connect= service= status=503 bytes=
