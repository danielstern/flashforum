2014-11-03T00:02:20.257239+00:00 app[web.1]: grunt-cli: The grunt command line interface. (v0.1.13)
2014-11-03T00:02:20.062392+00:00 app[web.1]: grunt-cli@0.1.13 /app/vendor/node/lib/node_modules/grunt-cli
2014-11-03T00:02:20.062399+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-03T00:02:20.062402+00:00 app[web.1]: ├── resolve@0.3.1
2014-11-03T00:02:20.062404+00:00 app[web.1]: └── findup-sync@0.1.3 (glob@3.2.11, lodash@2.4.1)
2014-11-03T00:02:20.257779+00:00 app[web.1]: hasn't been installed locally to your project. For more information about
2014-11-03T00:02:20.257837+00:00 app[web.1]: http://gruntjs.com/getting-started
2014-11-03T00:02:20.257583+00:00 app[web.1]: 
2014-11-03T00:02:20.257648+00:00 app[web.1]: Fatal error: Unable to find local grunt.
2014-11-03T00:02:20.257669+00:00 app[web.1]: 
2014-11-03T00:02:20.257750+00:00 app[web.1]: If you're seeing this message, either a Gruntfile wasn't found or grunt
2014-11-03T00:02:20.257800+00:00 app[web.1]: installing and configuring grunt, please see the Getting Started guide:
2014-11-03T00:02:20.257819+00:00 app[web.1]: 
2014-11-03T00:02:21.003049+00:00 heroku[web.1]: Process exited with status 99
2014-11-03T00:02:21.016695+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T00:02:34.853180+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=12190c4f-39b3-4d44-be92-c7c6105fa6f9 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-03T00:02:35.520602+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=4ebf864f-782c-4e28-bb97-612828d5a07d fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-03T00:03:33+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-03T00:07:50+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-03T00:07:50.081002+00:00 heroku[api]: Deploy 28e8213 by daniel@danielstern.ca
2014-11-03T00:07:50.081002+00:00 heroku[api]: Release v20 created by daniel@danielstern.ca
2014-11-03T00:07:50.340405+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-03T00:07:57.385563+00:00 heroku[web.1]: Starting process with command `npm install; npm install grunt -g; npm install grunt-cli -g; grunt serve;`
2014-11-03T00:07:59.137000+00:00 app[web.1]: npm WARN package.json karma-chrome-launcher@0.1.5 No README data
2014-11-03T00:07:59.143210+00:00 app[web.1]: npm WARN package.json karma-phantomjs-launcher@0.1.4 No README data
2014-11-03T00:07:59.137977+00:00 app[web.1]: npm WARN package.json karma-coffee-preprocessor@0.2.1 No README data
2014-11-03T00:07:59.147803+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-03T00:08:05.893688+00:00 app[web.1]: grunt-build-control@0.1.3 node_modules/grunt-build-control
2014-11-03T00:08:05.893694+00:00 app[web.1]: └── shelljs@0.2.6
2014-11-03T00:08:12.936614+00:00 app[web.1]: ├── getobject@0.1.0
2014-11-03T00:08:12.936622+00:00 app[web.1]: ├── hooker@0.2.3
2014-11-03T00:08:12.936627+00:00 app[web.1]: ├── glob@3.1.21 (inherits@1.0.0, graceful-fs@1.2.3)
2014-11-03T00:08:12.936616+00:00 app[web.1]: ├── rimraf@2.2.8
2014-11-03T00:08:12.936633+00:00 app[web.1]: ├── iconv-lite@0.2.11
2014-11-03T00:08:12.936623+00:00 app[web.1]: ├── exit@0.1.2
2014-11-03T00:08:12.936629+00:00 app[web.1]: ├── lodash@0.9.2
2014-11-03T00:08:12.936630+00:00 app[web.1]: ├── underscore.string@2.2.1
2014-11-03T00:08:12.936617+00:00 app[web.1]: ├── colors@0.6.2
2014-11-03T00:08:12.936638+00:00 app[web.1]: └── findup-sync@0.1.3 (lodash@2.4.1, glob@3.2.11)
2014-11-03T00:08:12.936613+00:00 app[web.1]: ├── eventemitter2@0.4.14
2014-11-03T00:08:12.936619+00:00 app[web.1]: ├── async@0.1.22
2014-11-03T00:08:12.936634+00:00 app[web.1]: ├── js-yaml@2.0.5 (esprima@1.0.4, argparse@0.1.15)
2014-11-03T00:08:12.936601+00:00 app[web.1]: grunt@0.4.5 /app/vendor/node/lib/node_modules/grunt
2014-11-03T00:08:12.936625+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-03T00:08:12.936620+00:00 app[web.1]: ├── grunt-legacy-util@0.2.0
2014-11-03T00:08:12.936626+00:00 app[web.1]: ├── minimatch@0.2.14 (lru-cache@2.5.0, sigmund@1.0.0)
2014-11-03T00:08:12.936609+00:00 app[web.1]: ├── dateformat@1.0.2-1.2.3
2014-11-03T00:08:12.936636+00:00 app[web.1]: ├── grunt-legacy-log@0.1.1 (underscore.string@2.3.3, lodash@2.4.1)
2014-11-03T00:08:12.936611+00:00 app[web.1]: ├── which@1.0.5
2014-11-03T00:08:12.936632+00:00 app[web.1]: ├── coffee-script@1.3.3
2014-11-03T00:08:15.333204+00:00 app[web.1]: /app/vendor/node/bin/grunt -> /app/vendor/node/lib/node_modules/grunt-cli/bin/grunt
2014-11-03T00:08:15.778211+00:00 app[web.1]: grunt-cli@0.1.13 /app/vendor/node/lib/node_modules/grunt-cli
2014-11-03T00:08:15.778223+00:00 app[web.1]: └── findup-sync@0.1.3 (lodash@2.4.1, glob@3.2.11)
2014-11-03T00:08:15.778219+00:00 app[web.1]: ├── resolve@0.3.1
2014-11-03T00:08:15.778221+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-03T00:08:16.313124+00:00 app[web.1]: [4mRunning "serve" task[24m
2014-11-03T00:08:16.324009+00:00 app[web.1]: 
2014-11-03T00:08:16.368942+00:00 app[web.1]: Injecting [32mless[39m files [90m(4 files)[39m
2014-11-03T00:08:16.369155+00:00 app[web.1]: [32m>> [39mNothing changed
2014-11-03T00:08:16.378125+00:00 app[web.1]: 
2014-11-03T00:08:16.378157+00:00 app[web.1]: [4mRunning "concurrent:server" (concurrent) task[24m
2014-11-03T00:08:16.358836+00:00 app[web.1]: [90mMissing option `template`, using `dest` as template instead[39m
2014-11-03T00:08:16.324081+00:00 app[web.1]: [4mRunning "clean:server" (clean) task[24m
2014-11-03T00:08:16.351192+00:00 app[web.1]: 
2014-11-03T00:08:16.351221+00:00 app[web.1]: [4mRunning "env:all" (env) task[24m
2014-11-03T00:08:16.355783+00:00 app[web.1]: 
2014-11-03T00:08:16.355822+00:00 app[web.1]: [4mRunning "injector:less" (injector) task[24m
2014-11-03T00:08:17.164646+00:00 app[web.1]:         
2014-11-03T00:08:17.164913+00:00 app[web.1]:         [31mAborted due to warnings.[39m
2014-11-03T00:08:17.164344+00:00 app[web.1]:     
2014-11-03T00:08:17.164346+00:00 app[web.1]:     [31mAborted due to warnings.[39m
2014-11-03T00:08:17.164329+00:00 app[web.1]:     [33mWarning: [4mRunning "less:server" (less) task[24m
2014-11-03T00:08:17.164336+00:00 app[web.1]:     [31m>> [39mFileError: 'bootstrap/less/bootstrap.less' wasn't found in client/app/app.less on line 1, column 1:[31m
2014-11-03T00:08:17.164338+00:00 app[web.1]:     >> [39m1 @import 'bootstrap/less/bootstrap.less';[31m
2014-11-03T00:08:17.164340+00:00 app[web.1]:     >> [39m2 @import 'font-awesome/less/font-awesome.less';
2014-11-03T00:08:17.164347+00:00 app[web.1]:     
2014-11-03T00:08:17.164342+00:00 app[web.1]:     [33mWarning: Error compiling client/app/app.less Use --force to continue.[39m
2014-11-03T00:08:17.164348+00:00 app[web.1]:     
2014-11-03T00:08:17.164350+00:00 app[web.1]:     Execution Time (2014-11-03 00:08:16 UTC)
2014-11-03T00:08:17.164352+00:00 app[web.1]:     loading tasks  253ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 83%
2014-11-03T00:08:17.164355+00:00 app[web.1]:     Total 306ms Use --force to continue.[39m
2014-11-03T00:08:17.164353+00:00 app[web.1]:     less:server     53ms  ▇▇▇▇▇▇▇▇▇ 17%
2014-11-03T00:08:17.166491+00:00 app[web.1]:     
2014-11-03T00:08:17.166494+00:00 app[web.1]: 
2014-11-03T00:08:17.166496+00:00 app[web.1]: Execution Time (2014-11-03 00:08:16 UTC)
2014-11-03T00:08:17.179077+00:00 app[web.1]: loading tasks      131ms  ▇▇▇▇▇▇ 13%
2014-11-03T00:08:17.179089+00:00 app[web.1]: concurrent:server  787ms  ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇ 80%
2014-11-03T00:08:17.179084+00:00 app[web.1]: serve               11ms  ▇ 1%
2014-11-03T00:08:17.179086+00:00 app[web.1]: clean:server        28ms  ▇▇ 3%
2014-11-03T00:08:17.179088+00:00 app[web.1]: injector:less       23ms  ▇▇ 2%
2014-11-03T00:08:17.179091+00:00 app[web.1]: Total 985ms
2014-11-03T00:08:17.179093+00:00 app[web.1]: 
2014-11-03T00:08:18.074187+00:00 heroku[web.1]: Process exited with status 6
2014-11-03T00:08:18.082029+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-03T00:08:19.536218+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=19a7ff25-6f3e-4437-8fba-740d9a2959be fwd="207.244.78.11" dyno= connect= service= status=503 bytes=
2014-11-03T00:08:19.889985+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=b2f71fdf-1c7c-4a90-975e-bafcb812abe3 fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-03T00:08:19.712681+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=c31f588d-cb66-4873-b492-cd5f803aa91d fwd="207.244.78.11" dyno= connect= service= status=503 bytes=
2014-11-03T00:08:20.206610+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=c20795ee-8fc7-4bd2-b33d-9cd9b77ad562 fwd="207.244.78.11" dyno= connect= service= status=503 bytes=
2014-11-03T00:08:20.563415+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=8b7f3829-db16-407f-8ea9-b0ee79d0a185 fwd="207.244.78.11" dyno= connect= service= status=503 bytes=
2014-11-03T00:08:22.764175+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=bcf85777-6f1a-4203-b9f0-45f080680e40 fwd="207.244.78.11" dyno= connect= service= status=503 bytes=
2014-11-03T00:08:23.172583+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=6bae0108-50fd-4fe9-bd86-8d377f73f7f3 fwd="207.244.78.11" dyno= connect= service= status=503 bytes=
