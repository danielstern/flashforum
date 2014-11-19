"use strict";angular.module("flashforumApp",["ngCookies","ngResource","ngSanitize","btford.socket-io","ui.router","ui.bootstrap"]).config(["$stateProvider","$urlRouterProvider","$locationProvider","$httpProvider",function(a,b,c,d){b.otherwise("/"),c.html5Mode(!0),d.interceptors.push("authInterceptor")}]).factory("authInterceptor",["$rootScope","$q","$cookieStore","$location",function(a,b,c,d){return{request:function(a){return a.headers=a.headers||{},c.get("token")&&(a.headers.Authorization="Bearer "+c.get("token")),a},responseError:function(a){return 401===a.status?(d.path("/login"),c.remove("token"),b.reject(a)):b.reject(a)}}}]).run(["$rootScope","$location","Auth",function(a,b,c){a.Auth=c,a.$on("$stateChangeStart",function(a,d){c.isLoggedInAsync(function(a){d.authenticate&&!a&&b.path("/login")})})}]),angular.module("flashforumApp").config(["$stateProvider",function(a){a.state("login",{url:"/login",templateUrl:"app/account/login/login.html",controller:"LoginCtrl"}).state("signup",{url:"/signup",templateUrl:"app/account/signup/signup.html",controller:"SignupCtrl"}).state("settings",{url:"/settings",templateUrl:"app/account/settings/settings.html",controller:"SettingsCtrl",authenticate:!0}).state("password",{url:"/send-password",template:"Your password has been reset and a temporary password has been sent to your email address.",controller:["Auth","$http",function(a,b){b.post("api/users/resetPassword",a.getCurrentUser())}],authenticate:!0})}]),angular.module("flashforumApp").controller("LoginCtrl",["$scope","Auth","$location","$window",function(a,b,c,d){a.user={},a.errors={},a.login=function(d){a.submitted=!0,d.$valid&&b.login({email:a.user.email,password:a.user.password}).then(function(){c.path("/")}).catch(function(b){a.errors.other=b.message})},a.loginOauth=function(a){d.location.href="/auth/"+a}}]),angular.module("flashforumApp").controller("SettingsCtrl",["$scope","User","Auth","SocketBase",function(a,b,c,d){a.errors={},a.user=angular.copy(c.getCurrentUser()),a.updateUser=function(a){var b=new d("api/users/");b.publish(a),alert("Your info has been updated"),window.location.reload()},a.changePassword=function(b){a.submitted=!0,b.$valid&&c.changePassword(a.user.oldPassword,a.user.newPassword).then(function(){a.message="Password successfully changed."}).catch(function(){b.password.$setValidity("mongoose",!1),a.errors.other="Incorrect password",a.message=""})}}]),angular.module("flashforumApp").controller("SignupCtrl",["$scope","Auth","$location","$window",function(a,b,c,d){a.user={},a.errors={},a.register=function(d){a.submitted=!0,d.$valid&&b.createUser({name:a.user.name,email:a.user.email,password:a.user.password}).then(function(){c.path("/")}).catch(function(b){b=b.data,a.errors={},angular.forEach(b.errors,function(b,c){d[c].$setValidity("mongoose",!1),a.errors[c]=b.message})})},a.loginOauth=function(a){d.location.href="/auth/"+a}}]),angular.module("flashforumApp").controller("AdminCtrl",["$scope","$http","Auth","User",function(a,b,c,d){a.users=d.query(),a.delete=function(b){d.remove({id:b._id}),angular.forEach(a.users,function(c,d){c===b&&a.users.splice(d,1)})}}]),angular.module("flashforumApp").config(["$stateProvider",function(a){a.state("admin",{url:"/admin",templateUrl:"app/admin/admin.html",controller:"AdminCtrl"})}]),angular.module("flashforumApp").controller("MainCtrl",["$scope","$http","socket","Auth","$state",function(a,b,c,d,e){a.awesomeThings=[],b.get("/api/threads").success(function(b){a.threads=b,c.syncUpdates("thread",a.threads)}),a.addThread=function(){a.thread.name&&(a.thread.shortname=a.thread.name.toLowerCase().replace(/[\s_]/g,"-").replace(/[\?\!\(\)\@\$]/g,""),b.post("/api/threads",{name:a.thread.name,shortname:a.thread.shortname,owner:d.getCurrentUserOrNewAccount()}),e.go("thread",{name:a.thread.shortname}))},a.deleteThread=function(a){b.delete("/api/threads/"+a._id)},a.$on("$destroy",function(){c.unsyncUpdates("thread")})}]),angular.module("flashforumApp").config(["$stateProvider",function(a){a.state("main",{url:"/",templateUrl:"app/main/main.html",controller:"MainCtrl"})}]),angular.module("flashforumApp").controller("ThreadCtrl",["$scope","$http","socket","Auth","$state","$stateParams","SocketBase",function(a,b,c,d,e,f,g){b.get("/api/posts/thread/"+f.name).success(function(b){a.posts=b,c.syncUpdates("post",a.posts)}),b.get("api/threads/shortname/"+f.name).success(function(b){a.threads=b,console.log("Threads?",b,f),c.syncUpdates("thread",a.threads)}),a.$watch("threads",function(b){console.log("Threads update..."),b&&(a.thread=a.threads[0])},!0),a.updateThread=function(){var b=new g("api/threads/"+a.thread._id);b.publish(a.thread)},a.$watch("thread",function(b){b&&a.updateThread()},!0),a.addPost=function(){""!==a.newThing&&(b.post("/api/posts",{name:a.newThing,owner:d.getCurrentUserOrNewAccount(),thread:a.thread}),a.newThing="")},a.deletePost=function(a){b.delete("/api/posts/"+a._id)},a.$on("$destroy",function(){c.unsyncUpdates("post")})}]),angular.module("flashforumApp").config(["$stateProvider",function(a){a.state("thread",{url:"/:name",templateUrl:"app/thread/thread.html",controller:"ThreadCtrl"})}]),angular.module("flashforumApp").factory("Auth",["$location","$rootScope","$http","User","$cookieStore","$q",function(a,b,c,d,e,f){var g={};return e.get("token")&&(g=d.get()),{login:function(a,b){var h=b||angular.noop,i=f.defer();return c.post("/auth/local",{email:a.email,password:a.password}).success(function(a){return e.put("token",a.token),g=d.get(),i.resolve(a),h()}).error(function(a){return this.logout(),i.reject(a),h(a)}.bind(this)),i.promise},logout:function(){e.remove("token"),g={}},createUser:function(a,b){var c=b||angular.noop;return d.save(a,function(b){return e.put("token",b.token),g=d.get(),c(a)},function(a){return this.logout(),c(a)}.bind(this)).$promise},changePassword:function(a,b,c){var e=c||angular.noop;return d.changePassword({id:g._id},{oldPassword:a,newPassword:b},function(a){return e(a)},function(a){return e(a)}).$promise},getCurrentUserOrNewAccount:function(){function a(){return _.sample(words)+"-"+_.sample(words)}if(g._id)return g;var b=a().replace(" ","-"),c=b+"@"+_.sample(words)+".com",d=b,e=_.sample(words),f={name:d,email:c,password:e,id:a()+a()};return this.createUser(f),alert("Your temporary email address is "+c+"\nYour temporary password is "+e+"\nUpdate them as soon as possible please!"),angular.extend(g,f)},getCurrentUser:function(){return g},isLoggedIn:function(){return g.hasOwnProperty("role")},isLoggedInAsync:function(a){g.hasOwnProperty("$promise")?g.$promise.then(function(){a(!0)}).catch(function(){a(!1)}):a(g.hasOwnProperty("role")?!0:!1)},isAdmin:function(){return"admin"===g.role},getToken:function(){return e.get("token")}}}]);var words=["consider","minute","accord","evident","practice","intend","concern","commit","issueapproach","establish","utter","conduct","engage","obtain","scarce","policy","straight","stockapparent","property","fancy","concept","court","appoint","passage","vain","instance","coastproject","commission","constant","circumstances","constitute","level","affect","instituterender","appeal","generate","theory","range","campaign","league","labor","confer","grantdwell","entertain","contract","earnest","yield","wander","insist","knight","convince","inspireconvention","skill","harry","financial","reflect","novel","furnish","compel","venture","territorytemper","bent","intimate","undertake","majority","assert","crew","chamber","humblescheme","keen","liberal","despair","tide","attitude","justify","flag","merit","manifest","notionscale","formal","resource","persist","contempt","tour","plead","weigh","mode","distinctioninclined","attribute","exert","oppress","contend","stake","toil","perish","disposition","railcardinal","boast","advocate","bestow","allege","notwithstanding","lofty","multitude","steepheed","modest","partial","apt","esteem","credible","provoke","tread","ascertain","fare","cedeperpetual","decree","contrive","derived","elaborate","substantial","frontier","facile","citewarrant","sob","rider","dense","afflict","flourish","ordain","pious","vex","gravity","suspendedconspicuous","retort","jet","bolt","assent","purse","plus","sanction","proceeding","exaltsiege","malice","extravagant","wax","throng","venerate","assail","sublime","exploit","exertionkindle","endow","imposed","humiliate","suffrage","ensue","brook","gale","muse","satireintrigue","indication","dispatch","cower","wont","tract","canon","impel","latitude","vacateundertaking","slay","predecessor","delicacy","forsake","beseech","philosophical","grovefrustrate","illustrious","device","pomp","entreat","impart","propriety","consecrate","proceedsfathom","objective","clad","partisan","faction","contrived","venerable","restrained","besiegemanifestation","rebuke","insurgent","rhetoric","scrupulous","ratify","stump","discreetimposing","wistful","mortify","ripple","premise","subside","adverse","caprice","mustercomprehensive","accede","fervent","cohere","tribunal","austere","recovering","stratumconscientious","arbitrary","exasperate","conjure","ominous","edifice","elude","pervadefoster","admonish","repeal","retiring","incidental","acquiesce","slew","usurp","sentinelprecision","depose","wanton","odium","precept","deference","fray","candid","enduringimpertinent","bland","insinuate","nominal","suppliant","languid","rave","monetaryheadlong","infallible","coax","explicate","gaunt","morbid","ranging","pacify","pastoraldogged","ebb","aide","appease","stipulate","recourse","constrained","bate","aversionconceit","loath","rampart","extort","tarry","perpetrate","decorum","luxuriant","cant","enjoinavarice","edict","disconcert","symmetry","capitulate","arbitrate","cleave","append","visagehorde","parable","chastise","foil","veritable","grapple","gentry","pall","maxim","projectionprowess","dingy","semblance","tout","fortitude","asunder","rout","staid","beguile","purportdeprave","bequeath","enigma","assiduous","vassal","quail","outskirts","bulwark","swervegird","betrothed","prospective","advert","peremptory","rudiment","deduce","haltingignominy","ideology","pallid","chagrin","obtrude","audacious","construe","ford","repaststint","fresco","dutiful","hew","parity","affable","interminable","pillage","foreboding","rendlivelihood","deign","capricious","stupendous","chaff","innate","reverie","wrangle","creviceostensible","craven","vestige","plumb","reticent","propensity","chide","espouse","raimentintrepid","seemly","allay","fitful","erode","unaffected","canto","docile","patronize","teemestrange","spat","warble","mien","sate","constituency","patrician","parry","practitionerravel","infest","actuate","surly","convalesce","demoralize","devolve","alacrity","waiveunwonted","seethe","scrutinize","diffident","execrate","implacable","pique","miteencumber","uncouth","petulant","expiate","cavalier","banter","bluster","debase","retainersubjugate","extol","fraught","august","fissure","knoll","callous","inculcate","nettle","blanchinscrutable","tenacious","thrall","exigency","disconsolate","impetus","imposition","auspicessonorous","exploitation","bane","dint","ignominious","amicable","onset","conservatoryzenith","voluble","yeoman","levity","rapt","sultry","pinion","axiom","descry","retinuefunctionary","imbibe","diversified","maraud","grudging","partiality","philology","wrycaucus","permeate","propitious","salient","propitiate","excise","betoken","palatableupbraid","renegade","hoary","pedantic","coy","troth","encroachment","belie","armadasuccor","imperturbable","irresolute","knack","unseemly","accentuate","divulge","brawnburnish","palpitate","promiscuous","dissemble","flotilla","invective","hermitage","despoilsully","malevolent","irksome","prattle","subaltern","welt","wreak","tenable","inimitabledepredation","amalgamate","immutable","proxy","dote","reactionary","rationalism","enduediscriminating","brooch","pert","disembark","aria","trappings","abet","clandestine","distendglib","pucker","rejoinder","spangle","blighted","nicety","aggrieve","vestment","urbanedefray","spectral","munificent","dictum","fad","scabbard","adulterate","beleaguer","griperemission","exorbitant","invocation","cajole","inclusive","interdict","abase","obviate","hurtleunanimity","mettle","interpolate","surreptitious","dissimulate","ruse","specious","revulsionhale","palliate","obtuse","querulous","vagary","incipient","obdurate","grovel","refractorydregs","ascendancy","supercilious","pundit","commiserate","alcove","assay","parochialconjugal","abjure","frieze","ornate","inflammatory","machination","mendicant","meanderbullion","diffidence","makeshift","husbandry","podium","dearth","granary","whetimposture","diadem","fallow","hubbub","dispassionate","harrowing","askance","lancetrankle","ramify","gainsay","polity","credence","indemnify","ingratiate","declivityimportunate","passe","whittle","repine","flay","larder","threadbare","grisly","untowardidiosyncrasy","quip","blatant","stanch","incongruity","perfidious","platitude","revelry","delveextenuate","polemic","enrapture","virtuoso","glower","mundane","fatuous","incorrigiblepostulate","gist","vociferous","purvey","baleful","gibe","dyspeptic","prude","luminaryamenable","willful","overbearing","dais","automate","enervate","wheedle","gusto","bouillonomniscient","apostate","carrion","emolument","ungainly","impiety","decadence","homilyavocation","circumvent","syllogism","collation","haggle","waylay","savant","cohort","unctionadjure","acrimony","clarion","turbid","cupidity","disaffected","preternatural","eschewexpatiate","didactic","sinuous","rancor","puissant","homespun","embroil","pathologicalresonant","libretto","flail","bandy","gratis","upshot","aphorism","redoubtable","corpulentbenighted","sententious","cabal","paraphernalia","vitiate","adulation","quaff","unassuminglibertine","maul","adage","expostulation","tawdry","trite","hireling","ensconce","egregiouscogent","incisive","errant","sedulous","incandescent","derelict","entomology","execrablesluice","moot","evanescent","vat","dapper","asperity","flair","mote","circumspect","inimicalapropos","gruel","gentility","disapprobation","cameo","gouge","oratorio","inclementscintilla","confluence","squalor","stricture","emblazon","augury","abut","banal","congealpilfer","malcontent","sublimate","eugenic","lineament","firebrand","fiasco","foolhardyretrench","ulterior","equable","inured","invidious","unmitigated","concomitant","cozenphlegmatic","dormer","pontifical","disport","apologist","abeyance","enclave","improvidentdisquisition","categorical","placate","redolent","felicitous","gusty","natty","pacifist","buxomheyday","herculean","burgeon","crone","prognosticate","lout","simper","iniquitous","rilesentient","garish","readjustment","erstwhile","aquiline","bilious","vilify","nuance","gawkrefectory","palatial","mincing","trenchant","emboss","proletarian","careen","debaclesycophant","crabbed","archetype","cryptic","penchant","bauble","mountebank","fawninghummock","apotheosis","discretionary","pithy","comport","checkered","ambrosia","factiousdisgorge","filch","wraith","demonstrable","pertinacious","emend","laggard","waffleloquacious","venial","peon","effulgence","lode","fanfare","dilettante","pusillanimousingrained","quagmire","reprobation","mannered","squeamish","proclivity","miserly","vapidmercurial","perspicuous","nonplus","enamor","hackneyed","spate","pedagogue","acmemasticate","sinecure","indite","emetic","temporize","unimpeachable","genesis","mordantsmattering","suavity","stentorian","junket","appurtenance","nostrum","immure","astringentunfaltering","tutelage","testator","elysian","fulminate","fractious","pummel","manumitunexceptionable","triumvirate","sybarite","jibe","magisterial","roseate","obloquy","hoodwinkstriate","arrogate","rarefied","chary","credo","superannuated","impolitic","aspersionabysmal","poignancy","stilted","effete","provender","endemic","jocund","procedural","rakishskittish","peroration","nonentity","abstemious","viscid","doggerel","sleight","rubricplenitude","rebus","wizened","whorl","fracas","iconoclast","saturnine","madrigaldiscursive","zealot","moribund","modicum","connotation","adventitious","recondite","zephyrcountermand","captious","cognate","forebear","cadaverous","foist","dotage","nexuscholeric","garble","bucolic","denouement","animus","overweening","tyro","preen","largesseretentive","unconscionable","badinage","insensate","sherbet","beatific","bemusemicrocosm","factitious","gestate","traduce","sextant","coiffure","malleable","rococofructify","nihilist","ellipsis","accolade","codicil","roil","grandiloquent","inconsequentialeffervescence","stultify","tureen","pellucid","euphony","apocryphal","veracious","pendulousexegesis","effluvium","apposite","viscous","misanthrope","vintner","halcyonanthropomorphic","turgid","malaise","polemical","gadfly","atavism","contusionparsimonious","dulcet","reprise","anodyne","bemused"];angular.module("flashforumApp").factory("User",["$resource",function(a){return a("/api/users/:id/:controller",{id:"@_id"},{changePassword:{method:"PUT",params:{controller:"password"}},get:{method:"GET",params:{id:"me"}}})}]),angular.module("flashforumApp").factory("Modal",["$rootScope","$modal",function(a,b){function c(c,d){var e=a.$new();return c=c||{},d=d||"modal-default",angular.extend(e,c),b.open({templateUrl:"components/modal/modal.html",windowClass:d,scope:e})}return{confirm:{"delete":function(a){return a=a||angular.noop,function(){var b,d=Array.prototype.slice.call(arguments),e=d.shift();b=c({modal:{dismissable:!0,title:"Confirm Delete",html:"<p>Are you sure you want to delete <strong>"+e+"</strong> ?</p>",buttons:[{classes:"btn-danger",text:"Delete",click:function(a){b.close(a)}},{classes:"btn-default",text:"Cancel",click:function(a){b.dismiss(a)}}]}},"modal-danger"),b.result.then(function(b){a.apply(b,d)})}}}}}]),angular.module("flashforumApp").directive("mongooseError",function(){return{restrict:"A",require:"ngModel",link:function(a,b,c,d){b.on("keydown",function(){return d.$setValidity("mongoose",!0)})}}}),angular.module("flashforumApp").controller("NavbarCtrl",["$scope","$location","Auth",function(a,b,c){a.menu=[{title:"Home",link:"/"}],a.isCollapsed=!0,a.isLoggedIn=c.isLoggedIn,a.isAdmin=c.isAdmin,a.getCurrentUser=c.getCurrentUser,a.logout=function(){c.logout(),b.path("/")},a.isActive=function(a){return a===b.path()}}]),angular.module("flashforumApp").factory("socket",["socketFactory",function(a){var b=io("",{path:"/socket.io-client"}),c=a({ioSocket:b});return{socket:c,syncUpdates:function(a,b,d){d=d||angular.noop,c.on(a+":save",function(a){var c=_.find(b,{_id:a._id}),e=b.indexOf(c),f="created";c?(b.splice(e,1,a),f="updated"):b.push(a),d(f,a,b)}),c.on(a+":remove",function(a){var c="deleted";_.remove(b,{_id:a._id}),d(c,a,b)})},unsyncUpdates:function(a){c.removeAllListeners(a+":save"),c.removeAllListeners(a+":remove")}}}]).service("SocketBase",["$http",function(a){return function(b){this.publish=function(c){console.log("You're updating with socketbase"),a.patch(b,c)},this.subscribe=function(){console.log("Youre listning with socketbase.")}}}]),angular.module("flashforumApp").run(["$templateCache",function(a){a.put("app/account/login/login.html",'<div ng-include=&quot;components/navbar/navbar.html&quot;></div><div class=container><div class=row><div class=col-sm-12><h1>Login</h1><p>Accounts are reset on server restart from<code>server/config/seed.js</code>. Default account is<code>test@test.com</code>/<code>test</code></p><p>Admin account is<code>admin@admin.com</code>/<code>admin</code></p></div><div class=col-sm-12><form name=form ng-submit=login(form) novalidate class=form><div class=form-group><label>Email</label><input name=email ng-model=user.email class="form-control"></div><div class=form-group><label>Password</label><input type=password name=password ng-model=user.password class="form-control"></div><div class="form-group has-error"><p ng-show="form.email.$error.required &amp;&amp; form.password.$error.required &amp;&amp; submitted" class=help-block>Please enter your email and password.</p><p class=help-block>{{ errors.other }}</p></div><div><button type=submit class="btn btn-inverse btn-lg btn-login">Login</button> <a href=/signup class="btn btn-default btn-lg btn-register">Register</a></div><hr><div><a href="" ng-click=loginOauth(&quot;facebook&quot;) class="btn btn-facebook"><i class="fa fa-facebook"></i> Connect with Facebook</a> <a href="" ng-click=loginOauth(&quot;google&quot;) class="btn btn-google-plus"><i class="fa fa-google-plus"></i> Connect with Google+</a> <a href="" ng-click=loginOauth(&quot;twitter&quot;) class="btn btn-twitter"><i class="fa fa-twitter"></i> Connect with Twitter</a></div></form></div></div><hr></div>'),a.put("app/account/settings/settings.html",'<div ng-include=&quot;components/navbar/navbar.html&quot;></div><div class=container><div class=row><div class=col-sm-12><h2>Flash Forum Settings</h2><h3>Update User Info</h3><p class=help-block>{{ message }}</p><form name=form ng-submit=updateUser(user) novalidate class=form><div class=form-group><label>Name<input name=username ng-model=user.name class="form-control"></label></div><div class=form-group><label>Email<input name=email ng-model=user.email class="form-control"></label></div><button type=submit class="btn btn-lg btn-primary">Update my Info</button></form></div><div class=col-sm-12><form name=form ng-submit=changePassword(form) novalidate class=form><div class=form-group><label>Current Password<input type=password name=password ng-model=user.oldPassword mongoose-error="" class="form-control"><p ng-show=form.password.$error.mongoose class=help-block>{{ errors.other }}</p></label></div><div class=form-group><label>New Password<input type=password name=newPassword ng-model=user.newPassword ng-minlength=3 required class="form-control"><p ng-show="(form.newPassword.$error.minlength || form.newPassword.$error.required) &amp;&amp; (form.newPassword.$dirty || submitted)" class=help-block>Password must be at least 3 characters.</p></label></div><button type=submit class="btn btn-lg btn-primary">Change Password</button></form></div></div></div>'),a.put("app/account/signup/signup.html",'<div ng-include=&quot;components/navbar/navbar.html&quot;></div><div class=container><div class=row><div class=col-sm-12><h1>Sign up</h1></div><div class=col-sm-12><form name=form ng-submit=register(form) novalidate class=form><div ng-class="{ &quot;has-success&quot;: form.name.$valid &amp;&amp; submitted,        &quot;has-error&quot;: form.name.$invalid &amp;&amp; submitted }" class=form-group><label>Name</label><input name=name ng-model=user.name required class="form-control"><p ng-show="form.name.$error.required &amp;&amp; submitted" class=help-block>A name is required</p></div><div ng-class="{ &quot;has-success&quot;: form.email.$valid &amp;&amp; submitted,        &quot;has-error&quot;: form.email.$invalid &amp;&amp; submitted }" class=form-group><label>Email</label><input type=email name=email ng-model=user.email required mongoose-error="" class="form-control"><p ng-show="form.email.$error.email &amp;&amp; submitted" class=help-block>Doesn\'t look like a valid email.</p><p ng-show="form.email.$error.required &amp;&amp; submitted" class=help-block>What\'s your email address?</p><p ng-show=form.email.$error.mongoose class=help-block>{{ errors.email }}</p></div><div ng-class="{ &quot;has-success&quot;: form.password.$valid &amp;&amp; submitted,        &quot;has-error&quot;: form.password.$invalid &amp;&amp; submitted }" class=form-group><label>Password</label><input type=password name=password ng-model=user.password ng-minlength=3 required mongoose-error="" class="form-control"><p ng-show="(form.password.$error.minlength || form.password.$error.required) &amp;&amp; submitted" class=help-block>Password must be at least 3 characters.</p><p ng-show=form.password.$error.mongoose class=help-block>{{ errors.password }}</p></div><div><button type=submit class="btn btn-inverse btn-lg btn-login">Sign up</button> <a href=/login class="btn btn-default btn-lg btn-register">Login</a></div><hr><div><a href="" ng-click=loginOauth(&quot;facebook&quot;) class="btn btn-facebook"><i class="fa fa-facebook"></i> Connect with Facebook</a> <a href="" ng-click=loginOauth(&quot;google&quot;) class="btn btn-google-plus"><i class="fa fa-google-plus"></i> Connect with Google+</a> <a href="" ng-click=loginOauth(&quot;twitter&quot;) class="btn btn-twitter"><i class="fa fa-twitter"></i> Connect with Twitter</a></div></form></div></div><hr></div>'),a.put("app/admin/admin.html",'<div ng-include=&quot;components/navbar/navbar.html&quot;></div><div class=container><p>The delete user and user index api routes are restricted to users with the \'admin\' role.</p><ul class=list-group><li ng-repeat="user in users" class=list-group-item><strong>{{user.name}}</strong><br><span class=text-muted>{{user.email}}</span><a ng-click=delete(user) class=trash><span class="glyphicon glyphicon-trash pull-right"></span></a></li></ul></div>'),a.put("app/main/main.html",'<div ng-include=&quot;components/navbar/navbar.html&quot;></div><header id=banner class=hero-unit><div class=container><h1>Flash Forum</h1><p>Stupid Fast Forum</p><img src=http://www.apres.co.uk/ebay/img/badges/mrt/mrT_2.jpg width=100 alt="STUPID fast"><form class=new-forum-post><label></label><p class=input-group><input placeholder="Name your new thread!" ng-model=thread.name class="input-large form-control"><span class=input-group-btn><button type=submit ng-click=addThread() class="btn btn-success">New Thread</button></span></p></form></div></header><div class=container><div class=row><div class=col-sm-8><h2 class=page-header>latest threads</h2><div ng-repeat="thread in threads" class=media-element><div><a ui-sref=thread({name:thread.shortname})><h2>{{thread.name}}</h2></a><h3>{{thread.tagline}}</h3><h5>{{thread.owner.name}}</h5><p>{{thread.description}}</p><button type=button ng-click=deleteThread(thread) ng-if="getCurrentUser().id == thread.owner.id || Auth.isAdmin()" class="btn btn-danger delete">×</button></div></div></div></div></div><footer class=footer><div class=container><p>Flash Forum 0.1</p></div></footer>'),a.put("app/thread/thread.html",'<div ng-include=&quot;components/navbar/navbar.html&quot;></div><header id=banner class=hero-unit><div class=container><h1>{{thread.name}}</h1><h2>{{thread.tagline}}</h2></div></header><div class=container><div class=row><div class=col-sm-8><h1 class=page-header>{{thread.name}}</h1><p>{{thread.description}}</p><div ng-repeat="post in posts" class=media-element><p><div><a ui-sref=user({id:post.owner.name})>{{post.owner.name}} ></a>{{post.name}}</div><button type=button ng-click=deletePost(post) class=close>×</button></p></div><form class=thing-form><label>Your Thoughts</label><p class=input-group><input placeholder="Add a new thing here." ng-model=newThing class="form-control"><span class=input-group-btn><button type=submit ng-click=addPost() class="btn btn-primary">Post</button></span></p></form></div><div ng-if="thread.owner.id === Auth.getCurrentUser().id" class=col-sm-4><h3>Edit</h3><div><h4>Name</h4><input disabled ng-model=thread.name class="form-control"><h4>Tagline</h4><input ng-model=thread.tagline class="form-control"><h4>What is your story / question / topic?</h4><textarea ng-model=thread.description class=form-control></textarea><button ng-click=updateThread() class="btn btn-default">Update</button></div></div></div></div><footer class=footer><div class=container><p>Flash Forum 0.1</p></div></footer>'),a.put("components/modal/modal.html",'<div class=modal-header><button ng-if=modal.dismissable type=button ng-click=$dismiss() class=close>&times;</button><h4 ng-if=modal.title ng-bind=modal.title class=modal-title></h4></div><div class=modal-body><p ng-if=modal.text ng-bind=modal.text></p><div ng-if=modal.html ng-bind-html=modal.html></div></div><div class=modal-footer><button ng-repeat="button in modal.buttons" ng-class=button.classes ng-click=button.click($event) ng-bind=button.text class=btn></button></div>'),a.put("components/navbar/navbar.html",'<div ng-controller=NavbarCtrl class="navbar navbar-default navbar-static-top"><div class=container><div class=navbar-header><button type=button ng-click="isCollapsed = !isCollapsed" class=navbar-toggle><span class=sr-only>Toggle navigation</span><span class=icon-bar></span><span class=icon-bar></span><span class=icon-bar></span></button><a href="/" class=navbar-brand>flashforum</a></div><div id=navbar-main collapse=isCollapsed class="navbar-collapse collapse"><ul class="nav navbar-nav"><li ng-repeat="item in menu" ng-class="{active: isActive(item.link)}"><a ng-href={{item.link}}>{{item.title}}</a></li><li ng-show=isAdmin() ng-class="{active: isActive(&quot;/admin&quot;)}"><a href=/admin>Admin</a></li></ul><ul class="nav navbar-nav navbar-right"><li ng-hide=isLoggedIn() ng-class="{active: isActive(&quot;/signup&quot;)}"><a href=/signup>Sign up</a></li><li ng-hide=isLoggedIn() ng-class="{active: isActive(&quot;/login&quot;)}"><a href=/login>Login</a></li><li ng-show=isLoggedIn()><p class=navbar-text>Hello {{ getCurrentUser().name }}</p></li><li ng-show=isLoggedIn() ng-class="{active: isActive(&quot;/settings&quot;)}"><a href=/settings><span class="glyphicon glyphicon-cog"></span></a></li><li ng-show=isLoggedIn() ng-class="{active: isActive(&quot;/logout&quot;)}"><a href="" ng-click=logout()>Logout</a></li></ul></div></div></div>')}]);