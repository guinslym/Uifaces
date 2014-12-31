require "ui_faces/version"
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
		"pauljakobwhite", "areus", "cookingeasycom", "kirangopal", "grantharr_s", "rpatey"
						]

  def self.face(stream=true, username='random', format="epic")
  	#return a url 

  	if(username != 'random')
  		link = "http://uifaces.com/api/v1/user/:"
  	else
  		link = '/api/v1/random'
  	end

  	unless stream
  		#if you don't want to use internet to access the image link
  		return "https://s3.amazonaws.com/uifaces/faces/twitter/" + USERNAME.sample + "/" + self.width(format) + ".jpg"
  	else
	  	response = Net::HTTP.get_response("uifaces.com", link+username)
	  	if response.code.eql?'200'
	  		 hash = JSON.parse(response.body)
	  		 return hash['image_urls'][format]
	  	else
	  		false
	  	end
	  end#unless
  end#def self.face

  ############################################PRIVATE
  private
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
	