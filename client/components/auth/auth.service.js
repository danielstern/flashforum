'use strict';

angular.module('flashforumApp')
  .factory('Auth', function Auth($location, $rootScope, $http, User, $cookieStore, $q) {
    var currentUser = {};
    if($cookieStore.get('token')) {
      currentUser = User.get();
    }

    return {

      /**
       * Authenticate user and save token
       *
       * @param  {Object}   user     - login info
       * @param  {Function} callback - optional
       * @return {Promise}
       */
      login: function(user, callback) {
        var cb = callback || angular.noop;
        var deferred = $q.defer();

        $http.post('/auth/local', {
          email: user.email,
          password: user.password
        }).
        success(function(data) {
          $cookieStore.put('token', data.token);
          currentUser = User.get();
          deferred.resolve(data);
          return cb();
        }).
        error(function(err) {
          this.logout();
          deferred.reject(err);
          return cb(err);
        }.bind(this));

        return deferred.promise;
      },

      /**
       * Delete access token and user info
       *
       * @param  {Function}
       */
      logout: function() {
        $cookieStore.remove('token');
        currentUser = {};
      },

      /**
       * Create a new user
       *
       * @param  {Object}   user     - user info
       * @param  {Function} callback - optional
       * @return {Promise}
       */
      createUser: function(user, callback) {
        var cb = callback || angular.noop;

        return User.save(user,
          function(data) {
            $cookieStore.put('token', data.token);
            currentUser = User.get();
            return cb(user);
          },
          function(err) {
            this.logout();
            return cb(err);
          }.bind(this)).$promise;
      },

      /**
       * Change password
       *
       * @param  {String}   oldPassword
       * @param  {String}   newPassword
       * @param  {Function} callback    - optional
       * @return {Promise}
       */
      changePassword: function(oldPassword, newPassword, callback) {
        var cb = callback || angular.noop;

        return User.changePassword({ id: currentUser._id }, {
          oldPassword: oldPassword,
          newPassword: newPassword
        }, function(user) {
          return cb(user);
        }, function(err) {
          return cb(err);
        }).$promise;
      },

      /**
       * Gets all available info on authenticated user
       *
       * @return {Object} user
       */
      getCurrentUserOrNewAccount: function() {
        function getDummyUsername() {
          return _.sample(words)+"-"+_.sample(words)+"-"+_.sample(words);
        }
        console.log("Auth or create...",currentUser);
        if (currentUser._id) {
          return currentUser;
        } else {
          var name = getDummyUsername();
          var tempEmail = name+"@"+_.sample(words)+".com";
          var tempName = name;
          var tempPassword = "pass";
          var newUser = {
            name:tempName,
            email:tempEmail,
            password:tempPassword,
          };

          this.createUser(newUser);
          return newUser;
        }
      },
      getCurrentUser: function() {
        return currentUser;
      },

      /**
       * Check if a user is logged in
       *
       * @return {Boolean}
       */
      isLoggedIn: function() {
        return currentUser.hasOwnProperty('role');
      },

      /**
       * Waits for currentUser to resolve before checking if user is logged in
       */
      isLoggedInAsync: function(cb) {
        if(currentUser.hasOwnProperty('$promise')) {
          currentUser.$promise.then(function() {
            cb(true);
          }).catch(function() {
            cb(false);
          });
        } else if(currentUser.hasOwnProperty('role')) {
          cb(true);
        } else {
          cb(false);
        }
      },

      /**
       * Check if a user is an admin
       *
       * @return {Boolean}
       */
      isAdmin: function() {
        return currentUser.role === 'admin';
      },

      /**
       * Get auth token
       */
      getToken: function() {
        return $cookieStore.get('token');
      }
    };
  });

var words = ["consider","minute","accord","evident","practice","intend","concern","commit","issue approach","establish","utter","conduct","engage","obtain","scarce","policy","straight","stock apparent","property","fancy","concept","court","appoint","passage","vain","instance","coast project","commission","constant","circumstances","constitute","level","affect","institute render","appeal","generate","theory","range","campaign","league","labor","confer","grant dwell","entertain","contract","earnest","yield","wander","insist","knight","convince","inspire convention","skill","harry","financial","reflect","novel","furnish","compel","venture","territory temper","bent","intimate","undertake","majority","assert","crew","chamber","humble scheme","keen","liberal","despair","tide","attitude","justify","flag","merit","manifest","notion scale","formal","resource","persist","contempt","tour","plead","weigh","mode","distinction inclined","attribute","exert","oppress","contend","stake","toil","perish","disposition","rail cardinal","boast","advocate","bestow","allege","notwithstanding","lofty","multitude","steep heed","modest","partial","apt","esteem","credible","provoke","tread","ascertain","fare","cede perpetual","decree","contrive","derived","elaborate","substantial","frontier","facile","cite warrant","sob","rider","dense","afflict","flourish","ordain","pious","vex","gravity","suspended conspicuous","retort","jet","bolt","assent","purse","plus","sanction","proceeding","exalt siege","malice","extravagant","wax","throng","venerate","assail","sublime","exploit","exertion kindle","endow","imposed","humiliate","suffrage","ensue","brook","gale","muse","satire intrigue","indication","dispatch","cower","wont","tract","canon","impel","latitude","vacate undertaking","slay","predecessor","delicacy","forsake","beseech","philosophical","grove frustrate","illustrious","device","pomp","entreat","impart","propriety","consecrate","proceeds fathom","objective","clad","partisan","faction","contrived","venerable","restrained","besiege manifestation","rebuke","insurgent","rhetoric","scrupulous","ratify","stump","discreet imposing","wistful","mortify","ripple","premise","subside","adverse","caprice","muster comprehensive","accede","fervent","cohere","tribunal","austere","recovering","stratum conscientious","arbitrary","exasperate","conjure","ominous","edifice","elude","pervade foster","admonish","repeal","retiring","incidental","acquiesce","slew","usurp","sentinel precision","depose","wanton","odium","precept","deference","fray","candid","enduring impertinent","bland","insinuate","nominal","suppliant","languid","rave","monetary headlong","infallible","coax","explicate","gaunt","morbid","ranging","pacify","pastoral dogged","ebb","aide","appease","stipulate","recourse","constrained","bate","aversion conceit","loath","rampart","extort","tarry","perpetrate","decorum","luxuriant","cant","enjoin avarice","edict","disconcert","symmetry","capitulate","arbitrate","cleave","append","visage horde","parable","chastise","foil","veritable","grapple","gentry","pall","maxim","projection prowess","dingy","semblance","tout","fortitude","asunder","rout","staid","beguile","purport deprave","bequeath","enigma","assiduous","vassal","quail","outskirts","bulwark","swerve gird","betrothed","prospective","advert","peremptory","rudiment","deduce","halting ignominy","ideology","pallid","chagrin","obtrude","audacious","construe","ford","repast stint","fresco","dutiful","hew","parity","affable","interminable","pillage","foreboding","rend livelihood","deign","capricious","stupendous","chaff","innate","reverie","wrangle","crevice ostensible","craven","vestige","plumb","reticent","propensity","chide","espouse","raiment intrepid","seemly","allay","fitful","erode","unaffected","canto","docile","patronize","teem estrange","spat","warble","mien","sate","constituency","patrician","parry","practitioner ravel","infest","actuate","surly","convalesce","demoralize","devolve","alacrity","waive unwonted","seethe","scrutinize","diffident","execrate","implacable","pique","mite encumber","uncouth","petulant","expiate","cavalier","banter","bluster","debase","retainer subjugate","extol","fraught","august","fissure","knoll","callous","inculcate","nettle","blanch inscrutable","tenacious","thrall","exigency","disconsolate","impetus","imposition","auspices sonorous","exploitation","bane","dint","ignominious","amicable","onset","conservatory zenith","voluble","yeoman","levity","rapt","sultry","pinion","axiom","descry","retinue functionary","imbibe","diversified","maraud","grudging","partiality","philology","wry caucus","permeate","propitious","salient","propitiate","excise","betoken","palatable upbraid","renegade","hoary","pedantic","coy","troth","encroachment","belie","armada succor","imperturbable","irresolute","knack","unseemly","accentuate","divulge","brawn burnish","palpitate","promiscuous","dissemble","flotilla","invective","hermitage","despoil sully","malevolent","irksome","prattle","subaltern","welt","wreak","tenable","inimitable depredation","amalgamate","immutable","proxy","dote","reactionary","rationalism","endue discriminating","brooch","pert","disembark","aria","trappings","abet","clandestine","distend glib","pucker","rejoinder","spangle","blighted","nicety","aggrieve","vestment","urbane defray","spectral","munificent","dictum","fad","scabbard","adulterate","beleaguer","gripe remission","exorbitant","invocation","cajole","inclusive","interdict","abase","obviate","hurtle unanimity","mettle","interpolate","surreptitious","dissimulate","ruse","specious","revulsion hale","palliate","obtuse","querulous","vagary","incipient","obdurate","grovel","refractory dregs","ascendancy","supercilious","pundit","commiserate","alcove","assay","parochial conjugal","abjure","frieze","ornate","inflammatory","machination","mendicant","meander bullion","diffidence","makeshift","husbandry","podium","dearth","granary","whet imposture","diadem","fallow","hubbub","dispassionate","harrowing","askance","lancet rankle","ramify","gainsay","polity","credence","indemnify","ingratiate","declivity importunate","passe","whittle","repine","flay","larder","threadbare","grisly","untoward idiosyncrasy","quip","blatant","stanch","incongruity","perfidious","platitude","revelry","delve extenuate","polemic","enrapture","virtuoso","glower","mundane","fatuous","incorrigible postulate","gist","vociferous","purvey","baleful","gibe","dyspeptic","prude","luminary amenable","willful","overbearing","dais","automate","enervate","wheedle","gusto","bouillon omniscient","apostate","carrion","emolument","ungainly","impiety","decadence","homily avocation","circumvent","syllogism","collation","haggle","waylay","savant","cohort","unction adjure","acrimony","clarion","turbid","cupidity","disaffected","preternatural","eschew expatiate","didactic","sinuous","rancor","puissant","homespun","embroil","pathological resonant","libretto","flail","bandy","gratis","upshot","aphorism","redoubtable","corpulent benighted","sententious","cabal","paraphernalia","vitiate","adulation","quaff","unassuming libertine","maul","adage","expostulation","tawdry","trite","hireling","ensconce","egregious cogent","incisive","errant","sedulous","incandescent","derelict","entomology","execrable sluice","moot","evanescent","vat","dapper","asperity","flair","mote","circumspect","inimical apropos","gruel","gentility","disapprobation","cameo","gouge","oratorio","inclement scintilla","confluence","squalor","stricture","emblazon","augury","abut","banal","congeal pilfer","malcontent","sublimate","eugenic","lineament","firebrand","fiasco","foolhardy retrench","ulterior","equable","inured","invidious","unmitigated","concomitant","cozen phlegmatic","dormer","pontifical","disport","apologist","abeyance","enclave","improvident disquisition","categorical","placate","redolent","felicitous","gusty","natty","pacifist","buxom heyday","herculean","burgeon","crone","prognosticate","lout","simper","iniquitous","rile sentient","garish","readjustment","erstwhile","aquiline","bilious","vilify","nuance","gawk refectory","palatial","mincing","trenchant","emboss","proletarian","careen","debacle sycophant","crabbed","archetype","cryptic","penchant","bauble","mountebank","fawning hummock","apotheosis","discretionary","pithy","comport","checkered","ambrosia","factious disgorge","filch","wraith","demonstrable","pertinacious","emend","laggard","waffle loquacious","venial","peon","effulgence","lode","fanfare","dilettante","pusillanimous ingrained","quagmire","reprobation","mannered","squeamish","proclivity","miserly","vapid mercurial","perspicuous","nonplus","enamor","hackneyed","spate","pedagogue","acme masticate","sinecure","indite","emetic","temporize","unimpeachable","genesis","mordant smattering","suavity","stentorian","junket","appurtenance","nostrum","immure","astringent unfaltering","tutelage","testator","elysian","fulminate","fractious","pummel","manumit unexceptionable","triumvirate","sybarite","jibe","magisterial","roseate","obloquy","hoodwink striate","arrogate","rarefied","chary","credo","superannuated","impolitic","aspersion abysmal","poignancy","stilted","effete","provender","endemic","jocund","procedural","rakish skittish","peroration","nonentity","abstemious","viscid","doggerel","sleight","rubric plenitude","rebus","wizened","whorl","fracas","iconoclast","saturnine","madrigal discursive","zealot","moribund","modicum","connotation","adventitious","recondite","zephyr countermand","captious","cognate","forebear","cadaverous","foist","dotage","nexus choleric","garble","bucolic","denouement","animus","overweening","tyro","preen","largesse retentive","unconscionable","badinage","insensate","sherbet","beatific","bemuse microcosm","factitious","gestate","traduce","sextant","coiffure","malleable","rococo fructify","nihilist","ellipsis","accolade","codicil","roil","grandiloquent","inconsequential effervescence","stultify","tureen","pellucid","euphony","apocryphal","veracious","pendulous exegesis","effluvium","apposite","viscous","misanthrope","vintner","halcyon anthropomorphic","turgid","malaise","polemical","gadfly","atavism","contusion parsimonious","dulcet","reprise","anodyne","bemused"];