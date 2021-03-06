class AppConfig

    # page id
    PAGE_PROJECTS       : 'projects'
    PAGE_TAGS           : 'tags'
    PAGE_STREAM         : 'stream'
    PAGE_ABOUT          : 'about'
    PAGE_DEFAULT        : null


    # google docs spreadsheet url
    URL_GDOCS_SS        : 'http://spreadsheets.google.com/feeds/list/{KEY}/{WORKSHEET}/public/values?alt=json-in-script&callback=?'
    
    # google docs key
    KEY_LABELS                  : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    KEY_BRANDS                  : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    KEY_PROFILES                : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    KEY_EXPERIENCES             : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    KEY_EXPERIENCE_GROUPS       : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    #KEY_TAGS                    : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    #KEY_TAG_GROUPS              : '0AuMegPFV2btJdGFIMWE1V0VvOUFuUlVpWXp3UXlwQ1E'
    #KEY_PROJECTS                : 'TODO'
 
    # google docs worksheet
    WORKSHEET_LABELS            : 'od9'
    WORKSHEET_BRANDS            : 'od6'
    WORKSHEET_PROFILES          : 'od7'
    WORKSHEET_EXPERIENCES       : 'od8'
    WORKSHEET_EXPERIENCE_GROUPS : 'odb'
    #WORKSHEET_TAGS              : 'od4'
    #WORKSHEET_TAG_GROUPS        : 'od5'
    #WORKSHEET_PROJECTS          : 'TODO'


    # portfolio collection url
    URL_LABELS            : null
    URL_BRANDS            : null
    URL_PROFILES          : null
    URL_EXPERIENCES       : null
    URL_EXPERIENCE_GROUPS : null
    URL_PROJECTS          : 'data/projects.json'
    URL_TAGS              : 'data/tags.json'

    # stream collection url
    URL_YOUTUBE         : 'http://gdata.youtube.com/feeds/api/videos?alt=json-in-script&author={USER_ID}&orderby=published&start-index=1&max-results={MAX_RESULTS}&callback=?'
    URL_TWITTER         : 'https://api.twitter.com/1/statuses/user_timeline.json?include_entities=false&include_rts=false&exclude_replies=true&trim_user=false&contributor_details=false&screen_name={USER_ID}&count={MAX_RESULTS}&callback=?'
    URL_GITHUB          : 'https://github.com/{USER_ID}.json?&callback=?'
    URL_FLICKR          : 'http://api.flickr.com/services/feeds/photos_public.gne?id={USER_ID}&lang=en-us&format=json&callback=?'
    URL_BLOG            : 'xml-proxy.php?url=http://blog.grifo.tv/feed/'

    # stream user id
    USER_ID_YOUTUBE     : 'grifotvmobile'
    USER_ID_TWITTER     : 'grifotv'
    USER_ID_GITHUB      : 'grifotv'
    USER_ID_FLICKR      : '41688283@N07'

    # stream max result
    MAX_RESULTS_YOUTUBE : 12 # 10
    MAX_RESULTS_TWITTER : 6 # 10
    MAX_RESULTS_GITHUB  : 6 # 10
    MAX_RESULTS_FLICKR  : 10
    MAX_RESULTS_BLOG    : 6 # 10

    # share
    SHARE_URL_FACEBOOK  : 'http://www.facebook.com/sharer.php?u={URL}'
    SHARE_URL_TWITTER   : 'http://twitter.com/home?status={TEXT}'

    SNAP_Y_HEADER       : 120
    SNAP_Y_HEADER_BG    : 155


    constructor : ->

        # set default page
        @PAGE_DEFAULT        = @PAGE_PROJECTS


        # set google docs properties
        @URL_LABELS            = @URL_GDOCS_SS.replace          '{KEY}' , @KEY_LABELS
        @URL_BRANDS            = @URL_GDOCS_SS.replace          '{KEY}' , @KEY_BRANDS
        @URL_PROFILES          = @URL_GDOCS_SS.replace          '{KEY}' , @KEY_PROFILES
        @URL_EXPERIENCES       = @URL_GDOCS_SS.replace          '{KEY}' , @KEY_EXPERIENCES
        @URL_EXPERIENCE_GROUPS = @URL_GDOCS_SS.replace          '{KEY}' , @KEY_EXPERIENCE_GROUPS
        @URL_LABELS            = @URL_LABELS.replace            '{WORKSHEET}' , @WORKSHEET_LABELS  
        @URL_BRANDS            = @URL_BRANDS.replace            '{WORKSHEET}' , @WORKSHEET_BRANDS  
        @URL_PROFILES          = @URL_PROFILES.replace          '{WORKSHEET}' , @WORKSHEET_PROFILES  
        @URL_EXPERIENCES       = @URL_EXPERIENCES.replace       '{WORKSHEET}' , @WORKSHEET_EXPERIENCES 
        @URL_EXPERIENCE_GROUPS = @URL_EXPERIENCE_GROUPS.replace '{WORKSHEET}' , @WORKSHEET_EXPERIENCE_GROUPS  


        # set stream user id
        @URL_YOUTUBE         = @URL_YOUTUBE.replace '{USER_ID}' , @USER_ID_YOUTUBE
        @URL_TWITTER         = @URL_TWITTER.replace '{USER_ID}' , @USER_ID_TWITTER
        @URL_GITHUB          = @URL_GITHUB.replace  '{USER_ID}' , @USER_ID_GITHUB
        @URL_FLICKR          = @URL_FLICKR.replace  '{USER_ID}' , @USER_ID_FLICKR

        # set stream max result
        @URL_YOUTUBE         = @URL_YOUTUBE.replace '{MAX_RESULTS}' , @MAX_RESULTS_YOUTUBE
        @URL_TWITTER         = @URL_TWITTER.replace '{MAX_RESULTS}' , @MAX_RESULTS_TWITTER
        