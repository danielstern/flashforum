2014-11-02T23:49:39.160291+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:49:40.780225+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=56a2658d-1aed-48c0-be81-6f8fc0946dd9 fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:49:56.494678+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=34dd0766-1a7c-4501-80f8-ed5dce4d23ae fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:49:57.009191+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=271a0121-495b-4fb8-b401-57e89700a537 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:51:18+00:00 heroku[slug-compiler]: Slug compilation started
2014-11-02T23:51:27+00:00 heroku[slug-compiler]: Slug compilation finished
2014-11-02T23:51:27.656716+00:00 heroku[api]: Deploy d64e4f9 by daniel@danielstern.ca
2014-11-02T23:51:27.656788+00:00 heroku[api]: Release v14 created by daniel@danielstern.ca
2014-11-02T23:51:28.779230+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:51:30.753796+00:00 heroku[web.1]: Starting process with command `npm install; npm install grunt -g; npm install grunt-cli -g; grunt serve;`
2014-11-02T23:51:32.295732+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:51:36.550958+00:00 app[web.1]: ├── which@1.0.5
2014-11-02T23:51:36.550949+00:00 app[web.1]: grunt@0.4.5 /app/vendor/node/lib/node_modules/grunt
2014-11-02T23:51:36.551001+00:00 app[web.1]: ├── async@0.1.22
2014-11-02T23:51:36.550956+00:00 app[web.1]: ├── dateformat@1.0.2-1.2.3
2014-11-02T23:51:36.551002+00:00 app[web.1]: ├── hooker@0.2.3
2014-11-02T23:51:36.550959+00:00 app[web.1]: ├── eventemitter2@0.4.14
2014-11-02T23:51:36.550996+00:00 app[web.1]: ├── getobject@0.1.0
2014-11-02T23:51:36.550998+00:00 app[web.1]: ├── rimraf@2.2.8
2014-11-02T23:51:36.551000+00:00 app[web.1]: ├── colors@0.6.2
2014-11-02T23:51:36.551005+00:00 app[web.1]: ├── exit@0.1.2
2014-11-02T23:51:36.551012+00:00 app[web.1]: ├── coffee-script@1.3.3
2014-11-02T23:51:36.551018+00:00 app[web.1]: ├── grunt-legacy-log@0.1.1 (underscore.string@2.3.3, lodash@2.4.1)
2014-11-02T23:51:36.551020+00:00 app[web.1]: └── js-yaml@2.0.5 (esprima@1.0.4, argparse@0.1.15)
2014-11-02T23:51:36.551014+00:00 app[web.1]: ├── underscore.string@2.2.1
2014-11-02T23:51:36.551015+00:00 app[web.1]: ├── iconv-lite@0.2.11
2014-11-02T23:51:36.551016+00:00 app[web.1]: ├── findup-sync@0.1.3 (glob@3.2.11, lodash@2.4.1)
2014-11-02T23:51:36.551007+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-02T23:51:36.551009+00:00 app[web.1]: ├── minimatch@0.2.14 (sigmund@1.0.0, lru-cache@2.5.0)
2014-11-02T23:51:36.551004+00:00 app[web.1]: ├── grunt-legacy-util@0.2.0
2014-11-02T23:51:36.551008+00:00 app[web.1]: ├── lodash@0.9.2
2014-11-02T23:51:36.551011+00:00 app[web.1]: ├── glob@3.1.21 (inherits@1.0.0, graceful-fs@1.2.3)
2014-11-02T23:51:38.082919+00:00 app[web.1]: /app/vendor/node/bin/grunt -> /app/vendor/node/lib/node_modules/grunt-cli/bin/grunt
2014-11-02T23:51:38.488777+00:00 app[web.1]: grunt-cli@0.1.13 /app/vendor/node/lib/node_modules/grunt-cli
2014-11-02T23:51:38.633227+00:00 app[web.1]: hasn't been installed locally to your project. For more information about
2014-11-02T23:51:38.633109+00:00 app[web.1]: 
2014-11-02T23:51:38.633086+00:00 app[web.1]: Fatal error: Unable to find local grunt.
2014-11-02T23:51:38.633248+00:00 app[web.1]: installing and configuring grunt, please see the Getting Started guide:
2014-11-02T23:51:38.633286+00:00 app[web.1]: http://gruntjs.com/getting-started
2014-11-02T23:51:38.633271+00:00 app[web.1]: 
2014-11-02T23:51:38.633029+00:00 app[web.1]: 
2014-11-02T23:51:38.488784+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-02T23:51:38.488786+00:00 app[web.1]: ├── resolve@0.3.1
2014-11-02T23:51:38.632699+00:00 app[web.1]: grunt-cli: The grunt command line interface. (v0.1.13)
2014-11-02T23:51:38.488787+00:00 app[web.1]: └── findup-sync@0.1.3 (glob@3.2.11, lodash@2.4.1)
2014-11-02T23:51:38.633195+00:00 app[web.1]: If you're seeing this message, either a Gruntfile wasn't found or grunt
2014-11-02T23:51:39.453266+00:00 heroku[web.1]: Process exited with status 99
2014-11-02T23:51:39.458689+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:51:40.458737+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=2c423edd-b7c2-436b-ac2a-b47e9ad17d3f fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:51:40.400498+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=9b3e59a3-b54b-4ae1-b716-5e122290d88e fwd="54.82.54.5" dyno= connect= service= status=503 bytes=
2014-11-02T23:51:40.612507+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=8a8da259-73c5-4ebb-af4f-526749016906 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:51:40.924075+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=a13fdf56-c40b-4f26-8dc9-3a49c9f75075 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:51:45.850821+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=1ece6d9b-b5e8-4571-818e-2a8105ad05f5 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:51:46.291817+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=61951bc0-e98e-4f61-b013-e5f99bfe0866 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:53:04.577927+00:00 heroku[api]: Set BUILDPACK_URL config vars by daniel@danielstern.ca
2014-11-02T23:53:04.578006+00:00 heroku[api]: Release v15 created by daniel@danielstern.ca
2014-11-02T23:53:04.676465+00:00 heroku[web.1]: State changed from crashed to starting
2014-11-02T23:53:07.018193+00:00 heroku[web.1]: Starting process with command `npm install; npm install grunt -g; npm install grunt-cli -g; grunt serve;`
2014-11-02T23:53:08.920088+00:00 app[web.1]: npm WARN package.json passport-local@0.1.6 No README data
2014-11-02T23:53:17.831053+00:00 app[web.1]: ├── hooker@0.2.3
2014-11-02T23:53:17.831070+00:00 app[web.1]: └── grunt-legacy-log@0.1.1 (underscore.string@2.3.3, lodash@2.4.1)
2014-11-02T23:53:17.831044+00:00 app[web.1]: ├── eventemitter2@0.4.14
2014-11-02T23:53:17.831064+00:00 app[web.1]: ├── underscore.string@2.2.1
2014-11-02T23:53:17.831047+00:00 app[web.1]: ├── rimraf@2.2.8
2014-11-02T23:53:17.831068+00:00 app[web.1]: ├── js-yaml@2.0.5 (esprima@1.0.4, argparse@0.1.15)
2014-11-02T23:53:17.831045+00:00 app[web.1]: ├── getobject@0.1.0
2014-11-02T23:53:17.831066+00:00 app[web.1]: ├── findup-sync@0.1.3 (glob@3.2.11, lodash@2.4.1)
2014-11-02T23:53:17.831048+00:00 app[web.1]: ├── colors@0.6.2
2014-11-02T23:53:17.831065+00:00 app[web.1]: ├── iconv-lite@0.2.11
2014-11-02T23:53:17.831050+00:00 app[web.1]: ├── async@0.1.22
2014-11-02T23:53:17.831052+00:00 app[web.1]: ├── grunt-legacy-util@0.2.0
2014-11-02T23:53:17.831059+00:00 app[web.1]: ├── glob@3.1.21 (inherits@1.0.0, graceful-fs@1.2.3)
2014-11-02T23:53:17.831033+00:00 app[web.1]: grunt@0.4.5 /app/vendor/node/lib/node_modules/grunt
2014-11-02T23:53:17.831054+00:00 app[web.1]: ├── exit@0.1.2
2014-11-02T23:53:17.831056+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-02T23:53:17.831058+00:00 app[web.1]: ├── minimatch@0.2.14 (sigmund@1.0.0, lru-cache@2.5.0)
2014-11-02T23:53:17.831041+00:00 app[web.1]: ├── dateformat@1.0.2-1.2.3
2014-11-02T23:53:17.831061+00:00 app[web.1]: ├── lodash@0.9.2
2014-11-02T23:53:17.831042+00:00 app[web.1]: ├── which@1.0.5
2014-11-02T23:53:17.831062+00:00 app[web.1]: ├── coffee-script@1.3.3
2014-11-02T23:53:20.429285+00:00 app[web.1]: /app/vendor/node/bin/grunt -> /app/vendor/node/lib/node_modules/grunt-cli/bin/grunt
2014-11-02T23:53:21.555706+00:00 app[web.1]: Fatal error: Unable to find local grunt.
2014-11-02T23:53:21.555731+00:00 app[web.1]: 
2014-11-02T23:53:21.555858+00:00 app[web.1]: If you're seeing this message, either a Gruntfile wasn't found or grunt
2014-11-02T23:53:21.555892+00:00 app[web.1]: hasn't been installed locally to your project. For more information about
2014-11-02T23:53:21.555919+00:00 app[web.1]: installing and configuring grunt, please see the Getting Started guide:
2014-11-02T23:53:21.381542+00:00 app[web.1]: grunt-cli@0.1.13 /app/vendor/node/lib/node_modules/grunt-cli
2014-11-02T23:53:21.555965+00:00 app[web.1]: http://gruntjs.com/getting-started
2014-11-02T23:53:21.555944+00:00 app[web.1]: 
2014-11-02T23:53:21.381548+00:00 app[web.1]: ├── nopt@1.0.10 (abbrev@1.0.5)
2014-11-02T23:53:21.381550+00:00 app[web.1]: ├── resolve@0.3.1
2014-11-02T23:53:21.381551+00:00 app[web.1]: └── findup-sync@0.1.3 (glob@3.2.11, lodash@2.4.1)
2014-11-02T23:53:21.555228+00:00 app[web.1]: grunt-cli: The grunt command line interface. (v0.1.13)
2014-11-02T23:53:21.555630+00:00 app[web.1]: 
2014-11-02T23:53:22.358276+00:00 heroku[web.1]: Process exited with status 99
2014-11-02T23:53:22.371481+00:00 heroku[web.1]: State changed from starting to crashed
2014-11-02T23:53:23.152617+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=7f5d5730-b865-481a-b4cd-48c4000d0fd8 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:53:23.508380+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=f31f0d68-8947-4911-a772-68472a126889 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:53:23.692506+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=bcccd0e2-63f2-41b5-9a33-28fdc9b3c6e7 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:53:25.411660+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/" host=flashforum.herokuapp.com request_id=bbc4db0c-3103-4ab0-8618-a416d7050e3e fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
2014-11-02T23:53:25.911391+00:00 heroku[router]: at=error code=H10 desc="App crashed" method=GET path="/favicon.ico" host=flashforum.herokuapp.com request_id=cd53ba47-a578-43b2-90d6-e596711a7053 fwd="207.244.77.139" dyno= connect= service= status=503 bytes=
