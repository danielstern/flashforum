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
          return _.sample(words)+"-"+_.sample(words);
        }
        // console.log("Auth or create...",currentUser);
        if (currentUser._id) {
          return currentUser;
        } else {
          var name = getDummyUsername().replace(" ","-");
          var tempEmail = name+"@"+_.sample(words)+".com";
          var tempName = name;
          var tempPassword = _.sample(words);
          var newUser = {
            name:tempName,
            email:tempEmail,
            password:tempPassword,
          };

          this.createUser(newUser);
          alert("Your temporary email address is " + tempEmail + "\nYour temporary password is " + tempPassword + '\nUpdate them as soon as possible please!');
          // .then(function(){
            // newUser.id = currentUser.id;
          // })
          return currentUser;
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

var words=["consider","minute","accord","evident","practice","intend","concern","commit","issueapproach","establish","utter","conduct","engage","obtain","scarce","policy","straight","stockapparent","property","fancy","concept","court","appoint","passage","vain","instance","coastproject","commission","constant","circumstances","constitute","level","affect","instituterender","appeal","generate","theory","range","campaign","league","labor","confer","grantdwell","entertain","contract","earnest","yield","wander","insist","knight","convince","inspireconvention","skill","harry","financial","reflect","novel","furnish","compel","venture","territorytemper","bent","intimate","undertake","majority","assert","crew","chamber","humblescheme","keen","liberal","despair","tide","attitude","justify","flag","merit","manifest","notionscale","formal","resource","persist","contempt","tour","plead","weigh","mode","distinctioninclined","attribute","exert","oppress","contend","stake","toil","perish","disposition","railcardinal","boast","advocate","bestow","allege","notwithstanding","lofty","multitude","steepheed","modest","partial","apt","esteem","credible","provoke","tread","ascertain","fare","cedeperpetual","decree","contrive","derived","elaborate","substantial","frontier","facile","citewarrant","sob","rider","dense","afflict","flourish","ordain","pious","vex","gravity","suspendedconspicuous","retort","jet","bolt","assent","purse","plus","sanction","proceeding","exaltsiege","malice","extravagant","wax","throng","venerate","assail","sublime","exploit","exertionkindle","endow","imposed","humiliate","suffrage","ensue","brook","gale","muse","satireintrigue","indication","dispatch","cower","wont","tract","canon","impel","latitude","vacateundertaking","slay","predecessor","delicacy","forsake","beseech","philosophical","grovefrustrate","illustrious","device","pomp","entreat","impart","propriety","consecrate","proceedsfathom","objective","clad","partisan","faction","contrived","venerable","restrained","besiegemanifestation","rebuke","insurgent","rhetoric","scrupulous","ratify","stump","discreetimposing","wistful","mortify","ripple","premise","subside","adverse","caprice","mustercomprehensive","accede","fervent","cohere","tribunal","austere","recovering","stratumconscientious","arbitrary","exasperate","conjure","ominous","edifice","elude","pervadefoster","admonish","repeal","retiring","incidental","acquiesce","slew","usurp","sentinelprecision","depose","wanton","odium","precept","deference","fray","candid","enduringimpertinent","bland","insinuate","nominal","suppliant","languid","rave","monetaryheadlong","infallible","coax","explicate","gaunt","morbid","ranging","pacify","pastoraldogged","ebb","aide","appease","stipulate","recourse","constrained","bate","aversionconceit","loath","rampart","extort","tarry","perpetrate","decorum","luxuriant","cant","enjoinavarice","edict","disconcert","symmetry","capitulate","arbitrate","cleave","append","visagehorde","parable","chastise","foil","veritable","grapple","gentry","pall","maxim","projectionprowess","dingy","semblance","tout","fortitude","asunder","rout","staid","beguile","purportdeprave","bequeath","enigma","assiduous","vassal","quail","outskirts","bulwark","swervegird","betrothed","prospective","advert","peremptory","rudiment","deduce","haltingignominy","ideology","pallid","chagrin","obtrude","audacious","construe","ford","repaststint","fresco","dutiful","hew","parity","affable","interminable","pillage","foreboding","rendlivelihood","deign","capricious","stupendous","chaff","innate","reverie","wrangle","creviceostensible","craven","vestige","plumb","reticent","propensity","chide","espouse","raimentintrepid","seemly","allay","fitful","erode","unaffected","canto","docile","patronize","teemestrange","spat","warble","mien","sate","constituency","patrician","parry","practitionerravel","infest","actuate","surly","convalesce","demoralize","devolve","alacrity","waiveunwonted","seethe","scrutinize","diffident","execrate","implacable","pique","miteencumber","uncouth","petulant","expiate","cavalier","banter","bluster","debase","retainersubjugate","extol","fraught","august","fissure","knoll","callous","inculcate","nettle","blanchinscrutable","tenacious","thrall","exigency","disconsolate","impetus","imposition","auspicessonorous","exploitation","bane","dint","ignominious","amicable","onset","conservatoryzenith","voluble","yeoman","levity","rapt","sultry","pinion","axiom","descry","retinuefunctionary","imbibe","diversified","maraud","grudging","partiality","philology","wrycaucus","permeate","propitious","salient","propitiate","excise","betoken","palatableupbraid","renegade","hoary","pedantic","coy","troth","encroachment","belie","armadasuccor","imperturbable","irresolute","knack","unseemly","accentuate","divulge","brawnburnish","palpitate","promiscuous","dissemble","flotilla","invective","hermitage","despoilsully","malevolent","irksome","prattle","subaltern","welt","wreak","tenable","inimitabledepredation","amalgamate","immutable","proxy","dote","reactionary","rationalism","enduediscriminating","brooch","pert","disembark","aria","trappings","abet","clandestine","distendglib","pucker","rejoinder","spangle","blighted","nicety","aggrieve","vestment","urbanedefray","spectral","munificent","dictum","fad","scabbard","adulterate","beleaguer","griperemission","exorbitant","invocation","cajole","inclusive","interdict","abase","obviate","hurtleunanimity","mettle","interpolate","surreptitious","dissimulate","ruse","specious","revulsionhale","palliate","obtuse","querulous","vagary","incipient","obdurate","grovel","refractorydregs","ascendancy","supercilious","pundit","commiserate","alcove","assay","parochialconjugal","abjure","frieze","ornate","inflammatory","machination","mendicant","meanderbullion","diffidence","makeshift","husbandry","podium","dearth","granary","whetimposture","diadem","fallow","hubbub","dispassionate","harrowing","askance","lancetrankle","ramify","gainsay","polity","credence","indemnify","ingratiate","declivityimportunate","passe","whittle","repine","flay","larder","threadbare","grisly","untowardidiosyncrasy","quip","blatant","stanch","incongruity","perfidious","platitude","revelry","delveextenuate","polemic","enrapture","virtuoso","glower","mundane","fatuous","incorrigiblepostulate","gist","vociferous","purvey","baleful","gibe","dyspeptic","prude","luminaryamenable","willful","overbearing","dais","automate","enervate","wheedle","gusto","bouillonomniscient","apostate","carrion","emolument","ungainly","impiety","decadence","homilyavocation","circumvent","syllogism","collation","haggle","waylay","savant","cohort","unctionadjure","acrimony","clarion","turbid","cupidity","disaffected","preternatural","eschewexpatiate","didactic","sinuous","rancor","puissant","homespun","embroil","pathologicalresonant","libretto","flail","bandy","gratis","upshot","aphorism","redoubtable","corpulentbenighted","sententious","cabal","paraphernalia","vitiate","adulation","quaff","unassuminglibertine","maul","adage","expostulation","tawdry","trite","hireling","ensconce","egregiouscogent","incisive","errant","sedulous","incandescent","derelict","entomology","execrablesluice","moot","evanescent","vat","dapper","asperity","flair","mote","circumspect","inimicalapropos","gruel","gentility","disapprobation","cameo","gouge","oratorio","inclementscintilla","confluence","squalor","stricture","emblazon","augury","abut","banal","congealpilfer","malcontent","sublimate","eugenic","lineament","firebrand","fiasco","foolhardyretrench","ulterior","equable","inured","invidious","unmitigated","concomitant","cozenphlegmatic","dormer","pontifical","disport","apologist","abeyance","enclave","improvidentdisquisition","categorical","placate","redolent","felicitous","gusty","natty","pacifist","buxomheyday","herculean","burgeon","crone","prognosticate","lout","simper","iniquitous","rilesentient","garish","readjustment","erstwhile","aquiline","bilious","vilify","nuance","gawkrefectory","palatial","mincing","trenchant","emboss","proletarian","careen","debaclesycophant","crabbed","archetype","cryptic","penchant","bauble","mountebank","fawninghummock","apotheosis","discretionary","pithy","comport","checkered","ambrosia","factiousdisgorge","filch","wraith","demonstrable","pertinacious","emend","laggard","waffleloquacious","venial","peon","effulgence","lode","fanfare","dilettante","pusillanimousingrained","quagmire","reprobation","mannered","squeamish","proclivity","miserly","vapidmercurial","perspicuous","nonplus","enamor","hackneyed","spate","pedagogue","acmemasticate","sinecure","indite","emetic","temporize","unimpeachable","genesis","mordantsmattering","suavity","stentorian","junket","appurtenance","nostrum","immure","astringentunfaltering","tutelage","testator","elysian","fulminate","fractious","pummel","manumitunexceptionable","triumvirate","sybarite","jibe","magisterial","roseate","obloquy","hoodwinkstriate","arrogate","rarefied","chary","credo","superannuated","impolitic","aspersionabysmal","poignancy","stilted","effete","provender","endemic","jocund","procedural","rakishskittish","peroration","nonentity","abstemious","viscid","doggerel","sleight","rubricplenitude","rebus","wizened","whorl","fracas","iconoclast","saturnine","madrigaldiscursive","zealot","moribund","modicum","connotation","adventitious","recondite","zephyrcountermand","captious","cognate","forebear","cadaverous","foist","dotage","nexuscholeric","garble","bucolic","denouement","animus","overweening","tyro","preen","largesseretentive","unconscionable","badinage","insensate","sherbet","beatific","bemusemicrocosm","factitious","gestate","traduce","sextant","coiffure","malleable","rococofructify","nihilist","ellipsis","accolade","codicil","roil","grandiloquent","inconsequentialeffervescence","stultify","tureen","pellucid","euphony","apocryphal","veracious","pendulousexegesis","effluvium","apposite","viscous","misanthrope","vintner","halcyonanthropomorphic","turgid","malaise","polemical","gadfly","atavism","contusionparsimonious","dulcet","reprise","anodyne","bemused"];