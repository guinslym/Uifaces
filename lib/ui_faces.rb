#require "ui_faces/version"
require 'net/http'
require 'json'

module UiFaces
	
	USERNAME= ['brad_frost', 'iflendra', 'kastov_yury', 'vladabazhan', 'csswizardry', 'eduardo_olv', 
	'vladarbatov', 'mizko', 'kurafire', 'shalt0ni', 'sachagreif', 'dancounsell', 
	'adhamdannaway', 'peterlandt', 'chadengle', 'pixeliris', 'whale', 'kerem', 'ateneupopular', 
	'boheme', 'cemshid', 'thrivesolo', 'enda', 'jollynutlet', 'adellecharles', 'peterme', 'mghoz', 
	'flamekaizar', 'jina', 'dustinlamont', 'idiot', 'joshhemsley', 'mlane', 'nexy_dre', 'sindresorhus', 
	'sillyleo', 'motherfuton', 'tomaslau', 'arminophen', 'guiiipontes', 'c_southam', 
	'mrjohnwalker', 'iconfinder', 'glif', '_hartjeg', 'soffes', 'teleject', 'brynn', 
	'rssems', 'felipenogs', 'gt', 'mattchevy', 'jaredfitch', 'andrewaashen', 'ladylexy', 
	'brandclay', 'abecherian', 'ManikRathee', 'vista', 'leemunroe', 'dingyi', 'putorti', 
	'dakshbhagya', 'dannpetty', 'teclaro', '_shahedk', 'kfriedson', 'kevin_granger', 'fffabs', 
	'pinceladasdaweb', 'suprb', '9lessons', 'itsjonq', 'aaroni', '_everaldo',"canrec", "carloscrvntsg",
	"reetajayendra", "pbaranco", "likewings", "delanicete", "joshkennedy", "xadusx", "nadezdaneverova",
	"i_ganin", "derekcramer", "raphaelnikson", "zombieoummy", "shiienurm", "sunnsit", "jonathanchrisp",
	"joelcannon", "bangherisetiawn", "pburjanec", "hilanimal", "massfocus", "c_southam", 
	"noammorrissey", "davidsasda", "_eyev_", "j04ntoh", "vm_f", "shaan360", "gmourier", 
	"rikitanone", "akmur", "moaazsidat", "bernieaho", "grysnsmth", "timoliverau", "rowancavanagh",
	"damirdurmo", "meecasso", "hathawaystephen", "craftbynick", "dland", "pjnes", "balintorosz",
	"903886562", "roskin_m", "trucy", "albertaugustin", "yalozhkin", "codysanfilippo", "dutchnadia",
	"kilperic", "pequelord", "hoangloi", "islamgaraev_tim", "superoutman", "shiienurm", "josue", 
	"joelcannon", "glauberamos", "jayvisavadia", "karalek", "embrcecreations", "amoslanka", 
	"damirdurmo", "alemasferrer", "willrax", "jehnglynn", "masterhopia316", "glauberamos", 
	"rasagy", "fireupman", "ravikumar8", "kimberlygs_", "lososina", "n2kza", "bagawarman", 
	"andyfang98", "viktor_dotsenko", "irfansami2", "timbalabuch", "monicaczarny", "moae84", 
	"autobanshaq", "marissamcpeak", "carlosblanco_eu", "ddddrew", "htmlstream", "tofslie", 
	"amlinarev", "saarabpreet", "svenphan", "scottfister", "funwatercat", "ya_zl01", 
	"pauljakobwhite", "areus", "cookingeasycom", "kirangopal", "grantharr_s", "rpatey",
	"aaronstump", "dfhdesign", "hejallan", "pf_creative", "rikas", "spacewood_", "sava2500", "sebygarilli", 
	"dustintheweb", "colynb", "linkinf88k", "wilsonnma", "lettershoppe", "vipinsanker", "spencerortega", 
	"soh3il", "he_jinsheng", "tomgreever", "meisso_jarno", "lukaszklis", "robturlinckx", "looneydoodle", 
	"alxleroydeval", "mizhgan", "kimberlygs_", "vista", "raresloth", "ntfblog", "j1tang", "jefffis", "jehnglynn", 
	"tgormtx", "dan_malarkey", "amoslanka", "mrmartineau", "kaibrach", "skylark64", "antjanus", "kirillgreen", 
	"brenton_clarke", "matejlatin", "froidz", "nickyzoid", "dreierdominic", "skogberg", "joelcipriano", 
	"inspiringbg", "donschnelly", "thimo_cz", "russell_baylis", "mashaaaaal", "areskub", "csteib", "petebernardo", 
	"ilya101010", "jckieangel", "jjsiii", "onkaar", "jbcordina", "lalalaura922", "heyllowlab", "nadya_lex", "suprb", 
	"pinceladasdaweb", "edwin_de_jongh", "francortz", "indigo90", "vishal19801", "jozh123", "anton0kurilov", 
	"originalgoatee", "chendahang", "alestart", "jningtho", "antongenkin", "turkutuuli", "razlagutt", "nepdud", 
	"snowshade", "nate_designer", "peachananr", "shuangshuangli", "quisif", "mrgnw", "devineninaresh", 
	"nathansimpsongd", "bruno1fernando", "mrxloka", "arpad05", "gunjanraik", "mangosango", "adellecharles", 
	"rikyushinichi", "ramdreamers", "victinx", "lingeswaran", "codydmd", "chexee", "sorenschroder", "zeppeppers", 
	"cotegrunenwald", "leelkennedy", "abujahed19", "dahparra", "borryshasian", "leogono", "ianlopshire", 
	"marciotoledo", "didpopcom", "fidelthomet", "ahmedelgabri", "andrewofficer", "ceekaytweet", "shanya_o", 
	"aarondgilmore", "herrhaase", "sikeane", "creativebrainbe", "jrxmember", "limpa123", "rbaassi", "haydn_woods", 
	"puzik", "i_makethings", "olgary", "arminophen", "and_zmei", "mkosterich", "suggeelson", "ektadary", 
	"nansysweet2", "tristandenyer", "aluisio_azevedo", "areandacom", "allenjordan", "hichamazhairi", "sachingawas", 
	"thekennythegame", "vashokk", "cattsmall", "elliotnolten", "tyagoneres", "mikewilliam1982", "n_tassone", 
	"rok_samsa", "eitarafa", "lucassimons1987", "maks_akmal", "007aasim", "phaistonian", "georgedyjr", 
	"gcmorley", "azizarsl", "flobota", "adamkirkwood", "creative_px", "sannigraphics", "kurtinc", "superhankai", 
	"strelov_d", "paladinstudio", "richwild", "rv_atom", "vlysergin", "mostafahawary", "gavr1l0", "umairulhaque", 
	"typografil", "spacekid", "seomarlboro", "chinagrimace", "deedubs", "marcosnwp", "hollymdewolf", "boundbystars", 
	"mrjohnwalker", "seantremaine", "jghyllebert", "the_frug", "solid_color", "pampersdry", "elcardoson", 
	"lisakey1986", "michaelcomiskey", "gordo", "olivermonschau", "davidmerrique", "plbabin", "mattdetails", 
	"michaelbrooksjr", "ariona_rian", "davidvb", "gokhunguneyhan", "brad_frost", "islamgaraev_tim", "kennyadr", 
	"ahmed_sa3ied", "simply_simpy", "bwagert", "gearoidorourke", "evgeny_ryabcev", "zackeeler", "ooomz", 
	"richcsmith", "raydeguzmanto", "jemmoudimed", "asna_farid", "davidhemphill", "joshuarule", "dreizle", "dannegm", 
	"majksner", "fgin69", "_zm", "motionthinks", "ShaneHelm", "bgiardelli", "ntnth", "avnagaraj", "stephenmdixon", 
	"jolliver", "osmond", "matthewkay_", "powerpointsuper", "itsselvam", "alexanderkirov", "brandon_arnold", 
	"julesholleboom", "laksgandikota", "kristoffintosh", "prheemo", "sconzen", "tazmattar", "mobfrank", 
	"alek_djuric", "normanbox", "konvictedofsin", "boheme", "aeon56", "gofrasdesign", "andresenfredrik", "upslon", 
	"jonpyefinch", "itsjaymem", "vamseekrishnain", "dsaltaren", "bbergher", "jackiesaik", "cheezonbread", 
	"onlymagugz", "kokikillara", "pavelbuben", "babojan", "thaoalpha1501", "lososina", "michaelcecetka", 
	"zensenmobile", "thramp", "Chakintosh", "jiceb", "aviddayentonbay", "depaulawagner", "sweetdelisa", 
	"kadri1914", "tomreinhoudt", "fionaosaurusrex", "robergd", "bbuecherl", "nicoleglynn", "hellofeverrrr", 
	"jasonkempers", "sterlingrules", "anysmechkar", "loresrockstar", "victorabrantes", "ilucasramos", "bartjo", 
	"motamarad", "deluzino", "jay_wilburn", "lpzilva", "migl40d", "_iamnyasha", "vitorleal", "edhenderson", 
	"akmalfikri"]

	WOMEN = ["jina", "ladylexy", "adellecharles", "kfriedson", "brynn", "pixeliris", "nisaanjani"]

	MEN = ["brad_frost", "csswizardry", "guiiipontes", "kurafire", "tomaslau", "cemshid", "dancounsell",
	"abecherian", "mlane", "peterme", "suprb", "dingyi", "shalt0ni", "vista", "arminophen",
	"kevin_granger", "rssems", "adhamdannaway", "nexy_dre", "teleject", "9lessons", "dakshbhagya",
	"_shahedk", "itsjonq", "joshhemsley", "enda", "leemunroe", "vladarbatov", "c_southam", "felipenogs",
	"kerem", "ManikRathee", "chadengle", "peterlandt", "jaredfitch", "mattchevy", "soffes", "sindresorhus",
	"motherfuton", "mrjohnwalker", "putorti", "teclaro", "andrewaashen", "aaroni", "boheme", "dustinlamont"]

	BASE_LINK = "https://s3.amazonaws.com/uifaces/faces/twitter/"

  def self.face(network=false, username='random', format="epic")
  	#return a image link from uifaces
  	#to make it faster.... network should be false

  	if(username != 'random')
  		link = "http://uifaces.com/api/v1/user/"
  	else
  		link = '/api/v1/random'
  	end

  	unless network
  		#if you don't want to use internet to retrieve an image link
  		#than it will return a custom image link built from the USERNAME array
  		return local_random(format)
  	else
  		#I'll try to use the network
  		begin 
	  		response = Net::HTTP.get_response("uifaces.com", link + username)
	  	rescue SocketError
	  		return local_random(format)
	  	end
	  	#checking the response code 200 || 400
	  	if response.code.eql?'200'
	  		 hash = JSON.parse(response.body)
	  		 return hash['image_urls'][format]
	  	else
	  		#the username that you are looking for doesn't exist
	  		## response.code == 404
	  		return local_random(format)
	  	end
	  end#unless

  end#self.face

  def self.faces(network=false, username='random', format='epic')
  	#return a hash of links
  	#puts faces['bigger']
  	link = self.face(network, username, format)
  	username = link.split("/")[-2]
  	return faces = {:bigger => BASE_LINK + username + "/73.jpg",
  						 :normal => BASE_LINK + username + "/48.jpg",
  						 :epic   => BASE_LINK + username + "/128.jpg",
  						 :mini   => BASE_LINK + username + "/24.jpg"
  						}
  end

  #Only one parameter
  def self.woman(format="epic")
  	return self.retrieve_a_link(format, WOMEN)
  end

  def self.man(format="epic")
  	return self.retrieve_a_link(format, MEN)
  end

  def self.sex(genre="male", format="epic")
  	if ( genre.eql?("female") or (genre.eql?("woman")))
  		return self.retrieve_a_link(format, WOMEN)
  	else
  		return self.retrieve_a_link(format, MEN)
  	end
  end

  def self.local_random(format="epic")
  	return self.retrieve_a_link(format, USERNAME)
  end
 

	def self.retrieve_a_link(format="epic", object_name=USERNAME)
		return BASE_LINK + object_name.sample + "/" + self.width(format) + ".jpg"
	end


  def self.width(format)
  	if(format.eql?"bigger")
  		'73'
  	elsif (format.eql?"normal")
  		'48'
  	elsif (format.eql?"mini")
  		'24'
  	else
  		'128'
  	end
	end



end
	
