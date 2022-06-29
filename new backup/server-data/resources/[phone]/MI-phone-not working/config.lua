Config = {}

Config.RepeatTimeout = 2000
Config.CallRepeats = 10
Config.OpenPhone = 288
Config.Language = 'en'

-- Jobs
Config.LawyersJob = 'lawyer'
Config.UseESXLicense = true
Config.AmbulanceJob = 'ambulance'
Config.policeJob = 'police'
Config.cardealerJob = 'cardealer'
Config.mechanicJob = 'mechanic'
Config.UseESXBilling = true

Config.Languages = {
    ['en'] = {
        ["NO_VEHICLE"] = "No vehicles nearby!",
        ["NO_ONE"] = "Nobody Around!",
        ["ALLFIELDS"] = "You must fill in all fields!",

        ["RACE_TITLE"] = "RACE",

        ["WHATSAPP_TITLE"] = "Whatsapp",
        ["WHATSAPP_NEW_MESSAGE"] = "New message from",
        ["WHATSAPP_MESSAGE_TOYOU"] = "You can not send messages to yourself",
        ["WHATSAPP_LOCATION_SET"] = "Location Sent!",
        ["WHATSAPP_SHARED_LOCATION"] = "Shared Location",
        ["WHATSAPP_BLANK_MSG"] = "You can not send a blank message or message with invalid characters!",

        ["MAIL_TITLE"] = "Email",
        ["MAIL_NEW"] = "You have received new mail from",

        ["ADVERTISEMENT_TITLE"] = "Ads",
        ["ADVERTISEMENT_NEW"] = "New ad posted by",
        ["ADVERTISEMENT_EMPY"] = "You can not post an empty ad!",

       ["TWITTER_TITLE"] = "Twitter",
        ["TWITTER_NEW"] = "New Tweet",
        ["TWITTER_POSTED"] = "Tweet posted!",
        ["TWITTER_GETMENTIONED"] = "You mentioned in a tweet!",
        ["MENTION_YOURSELF"] = "You can not mention yourself!",
        ["TWITTER_ENTER_MSG"] = "Please enter a message!",

        ["PHONE_DONT_HAVE"] = "You do not have a phone",
        ["PHONE_TITLE"] = "Phone",
        ["PHONE_CALL_END"] = "Call ended",
        ["PHONE_NOINCOMING"] = "You have no incoming calls!",
        ["PHONE_STARTED_ANON"] = "You initiated an anonymous call!",
        ["PHONE_BUSY"] = "You are already busy!",
        ["PHONE_PERSON_TALKING"] = "This person is talking!",
        ["PHONE_PERSON_UNAVAILABLE"] = "This person is not available!",
        ["PHONE_YOUR_NUMBER"] = "You can not call your number!",
        ["PHONE_MSG_YOURSELF"] = "You can not send text messages yourself!",

        ["CONTACTS_REMOVED"] = "Remove this contact!",
        ["CONTACTS_NEWSUGGESTED"] = "You have a new suggested contact!",
        ["CONTACTS_EDIT_TITLE"] = "Edit Contact",
        ["CONTACTS_ADD_TITLE"] = "Add Contact",
        ["CONTACTS_ADD_TITLE"] = "Add Contact",

        ["BANK_TITLE"] = 'BANK',
        ["BANK_DONT_ENOUGH"] = 'You do not have enough money!',
        ["BANK_NOIBAN"] = "There is no IBAN associated with this contact!",

        ["CRYPTO_TITLE"] = "Crypto",

        ["GPS_SET"] = "GPS location is set to:",

        ["NUI_SYSTEM"] = 'System',
        ["NUI_NOT_AVAILABLE"] = 'Not Available!',
        ["NUI_MYPHONE"] = 'Phone Number',
        ["NUI_INFO"] = 'Info',

        ["SETTINGS_TITLE"] = 'Settings',
        ["PROFILE_SET"] = 'Profile profile!',
        ["POFILE_DEFAULT"] = 'Default profile picture!',
        ["BACKGROUND_SET"] = 'Background Set!',

        ["RACING_TITLE"] = "RACING_TITLE",
        ["RACING_CHOSEN_TRACK"] = "You have not selected a route.",
        ["RACING_ALREADY_ACTIVE"] = "You already have an active race.",
        ["RACING_ENTER_ROUNDS"] = "Enter a number of rounds.",
        ["RACING_CANT_THIS_TIME"] = "Racing is not currently available.",
        ["RACING_ALREADY_STARTED"] = "The race has already started.",
        ["RACING_ALREADY_INRACE"] = "You are already in the race.",
        ["RACING_ALREADY_CREATED"] = "You are already creating a track.",
        ["RACING_INEDITOR"] = "You are in the editor.",
        ["RACING_INRACE"] = "You are in a race.",
        ["RACING_CANTSTART"] = "You do not have permission to create racetracks.",
        ["RACING_CANTTHISNAME"] = "This name is not available.",
        ["RACING_ENTER_TRACK"] = "You must enter a route name.",

        ["MEOS_TITLE"] = "MEOS",
        ["MEOS_CLEARED"] = "All messages have been removed!",
        ["MEOS_GPS"] = "This message has no GPS location!",
        ["MEOS_NORESULT"] = "It does not appear!",
	},
	
	['he'] = {
        ["NO_VEHICLE"] = "אין רכב בסביבה",
        ["NO_ONE"] = "אף אחד לא בסביבה",
        ["ALLFIELDS"] = "מלא את כל השדות",

        ["RACE_TITLE"] = "Racing",

        ["WHATSAPP_TITLE"] = "Whatsapp",
        ["WHATSAPP_NEW_MESSAGE"] = "הודעה חדשה מאת",
        ["WHATSAPP_MESSAGE_TOYOU"] = "למה אתה שולח הודעות לעצמך",
        ["WHATSAPP_LOCATION_SET"] = "המיקום הוגדר",
        ["WHATSAPP_SHARED_LOCATION"] = "המיקום שותף",
        ["WHATSAPP_BLANK_MSG"] = "אינך יכול לשלוח הודעה ריקה",

        ["MAIL_TITLE"] = "Mail",
        ["MAIL_NEW"] = "קיבלת דואר חדש מאת",

        ["ADVERTISEMENT_TITLE"] = "Advertisement",
        ["ADVERTISEMENT_NEW"] = "מודעה חדשה פורסמה על ידי",
        ["ADVERTISEMENT_EMPY"] = "אינך יכול לפרסם מודעה ריקה",

        ["TWITTER_TITLE"] = "Twitter",
        ["TWITTER_NEW"] = "ציוץ חדש",
        ["TWITTER_POSTED"] = "הציוץ פורסם",
        ["TWITTER_GETMENTIONED"] = "אתה מוזכר בציוץ",
        ["MENTION_YOURSELF"] = "אתה לא יכול להזכיר את עצמך",
        ["TWITTER_ENTER_MSG"] = "הזן הודעה",

        ["PHONE_DONT_HAVE"] = "אין לך טלפון",
        ["PHONE_TITLE"] = "Phone",
        ["PHONE_CALL_END"] = "השיחה הסתיימה",
        ["PHONE_NOINCOMING"] = "אין לך שיחה נכנסת",
        ["PHONE_STARTED_ANON"] = "התחלת שיחה אנונימית",
        ["PHONE_BUSY"] = "אתה כבר עסוק",
        ["PHONE_PERSON_TALKING"] = "האדם הזה מדבר",
        ["PHONE_PERSON_UNAVAILABLE"] = "אדם זה אינו זמין",
        ["PHONE_YOUR_NUMBER"] = "אינך יכול להתקשר למספר שלך",
        ["PHONE_MSG_YOURSELF"] = "אתה לא יכול לסמס לעצמך",

        ["CONTACTS_REMOVED"] = "הסרת איש קשר",
        ["CONTACTS_NEWSUGGESTED"] = "יש לך איש קשר חדש שהוצע",
        ["CONTACTS_EDIT_TITLE"] = "עריכה",
        ["CONTACTS_ADD_TITLE"] = "הוסף איש קשר",
        ["CONTACTS_ADD_TITLE"] = "הוסף איש קשר",

        ["BANK_TITLE"] = 'Bank',
        ["BANK_DONT_ENOUGH"] = 'אין לך מספיק כסף בחשבון',
        ["BANK_NOIBAN"] = "לאיש קשר זה אין מספר חשבון בנק מחובר",

        ["CRYPTO_TITLE"] = "Crypto",

        ["GPS_SET"] = " :מיקום הוגדר",

        ["NUI_SYSTEM"] = 'System',
        ["NUI_NOT_AVAILABLE"] = 'לא זמין',
        ["NUI_MYPHONE"] = 'מספר טלפון',
        ["NUI_INFO"] = 'מידע',

        ["SETTINGS_TITLE"] = 'Settings',
        ["PROFILE_SET"] = 'תמונת פרופיל הוגדרה',
        ["POFILE_DEFAULT"] = 'תמונת פרופיל רגילה הוגדרה',
		["BACKGROUND_SET"] = 'רקע הוגדר',
		
        ["RACING_TITLE"] = "Racing",
        ["RACING_CHOSEN_TRACK"] = "לא בחרת מסלול",
        ["RACING_ALREADY_ACTIVE"] = "יש לך כבר מירוץ פעיל",
        ["RACING_ENTER_ROUNDS"] = "הזן את כמות הסיבובים",
        ["RACING_CANT_THIS_TIME"] = "בשלב זה לא ניתן לבצע מירוצים",
        ["RACING_ALREADY_STARTED"] = "המירוץ כבר התחיל",
        ["RACING_ALREADY_INRACE"] = "אתה כבר במירוץ",
        ["RACING_ALREADY_CREATED"] = "אתה כבר יוצר מסלול",
        ["RACING_INEDITOR"] = "אתה בעורך",
        ["RACING_INRACE"] = "אתה במירוץ",
        ["RACING_CANTSTART"] = "אין לך זכויות ליצור מסלולי מירוץ",
        ["RACING_CANTTHISNAME"] = "שם זה אינו זמין",
		["RACING_ENTER_TRACK"] = "עליך להזין שם מסלול",
		
        ["MEOS_TITLE"] = "MEOS",
        ["MEOS_CLEARED"] = "כל ההודעות הוסרו",
        ["MEOS_GPS"] = "GPS להודעה זו אין מיקום",
		["MEOS_NORESULT"] = "אין תוצאה",
	},

	['fr'] = {
        ["NO_VEHICLE"] = "Aucun véhicule aux alentours!",
        ["NO_ONE"] = "Personne aux alentours!",
        ["ALLFIELDS"] = "Remplissez tous les champs!",

        ["RACE_TITLE"] = "Racing",

        ["WHATSAPP_TITLE"] = "Whatsapp",
        ["WHATSAPP_NEW_MESSAGE"] = "Nouveau message de",
        ["WHATSAPP_MESSAGE_TOYOU"] = "Pourquoi vous envoyez-vous des messages?",
        ["WHATSAPP_LOCATION_SET"] = "L'emplacement est défini!",
        ["WHATSAPP_SHARED_LOCATION"] = "Emplacement partagé",
        ["WHATSAPP_BLANK_MSG"] = "Vous ne pouvez pas envoyer de message vide!",

        ["MAIL_TITLE"] = "Mail",
        ["MAIL_NEW"] = "Vous avez reçu un nouveau courrier de",

        ["ADVERTISEMENT_TITLE"] = "Advertisement",
        ["ADVERTISEMENT_NEW"] = "Une nouvelle annonce a été publiée par",
        ["ADVERTISEMENT_EMPY"] = "Vous ne pouvez pas placer une annonce vide!",

        ["TWITTER_TITLE"] = "Twitter",
        ["TWITTER_NEW"] = "Nouveau tweet",
        ["TWITTER_POSTED"] = "Le tweet a été posté!",
        ["TWITTER_GETMENTIONED"] = "Vous êtes mentionné dans un Tweet!",
        ["MENTION_YOURSELF"] = "Vous ne pouvez pas vous mentionner!",
        ["TWITTER_ENTER_MSG"] = "Entrez un message!",

        ["PHONE_DONT_HAVE"] = "Tu n'as pas de téléphone",
        ["PHONE_TITLE"] = "Phone",
        ["PHONE_CALL_END"] = "L'appel est terminé",
        ["PHONE_NOINCOMING"] = "Vous n'avez aucun appel entrant!",
        ["PHONE_STARTED_ANON"] = "Vous avez lancé un appel anonyme!",
        ["PHONE_BUSY"] = "Vous êtes déjà occupé!",
        ["PHONE_PERSON_TALKING"] = "Cette personne parle!",
        ["PHONE_PERSON_UNAVAILABLE"] = "Cette personne n'est pas disponible!",
        ["PHONE_YOUR_NUMBER"] = "Vous ne pouvez pas appeler votre propre numéro!",
        ["PHONE_MSG_YOURSELF"] = "Vous ne pouvez pas vous envoyer de SMS",

        ["CONTACTS_REMOVED"] = "Vous avez supprimé le contact!",
        ["CONTACTS_NEWSUGGESTED"] = "Vous avez un nouveau contact suggéré!",
        ["CONTACTS_EDIT_TITLE"] = "Contact Modifier",
        ["CONTACTS_ADD_TITLE"] = "Ajouter le contact",
        ["CONTACTS_ADD_TITLE"] = "Ajouter le contact",

        ["BANK_TITLE"] = 'Bank',
        ["BANK_DONT_ENOUGH"] = 'Vous n\'avez pas assez d\'équilibre!',
        ["BANK_NOIBAN"] = "Il n'y a pas d'IBAN lié à ce contact!",

        ["CRYPTO_TITLE"] = "Crypto",

        ["GPS_SET"] = "Position GPS définie: ",

        ["NUI_SYSTEM"] = 'System',
        ["NUI_NOT_AVAILABLE"] = 'n\'est pas disponible!',
        ["NUI_MYPHONE"] = 'Numéro de téléphone',
        ["NUI_INFO"] = 'Informatie',

        ["SETTINGS_TITLE"] = 'Settings',
        ["PROFILE_SET"] = 'Propre ensemble de photos de profil!',
        ["POFILE_DEFAULT"] = 'L\'image de profil par défaut est définie!',
        ["BACKGROUND_SET"] = 'Propre ensemble de fond!',

        ["RACING_TITLE"] = "Racing",
        ["RACING_CHOSEN_TRACK"] = "Vous n'avez pas choisi de piste.",
        ["RACING_ALREADY_ACTIVE"] = "Vous avez déjà une course active.",
        ["RACING_ENTER_ROUNDS"] = "Entrez un nombre de tours.",
        ["RACING_CANT_THIS_TIME"] = "Aucune course ne peut être faite pour le moment.",
        ["RACING_ALREADY_STARTED"] = "La course a déjà commencé.",
        ["RACING_ALREADY_INRACE"] = "Vous êtes déjà dans une course.",
        ["RACING_ALREADY_CREATED"] = "Vous créez déjà une piste.",
        ["RACING_INEDITOR"] = "Vous êtes dans un éditeur.",
        ["RACING_INRACE"] = "Vous êtes dans une course.",
        ["RACING_CANTSTART"] = "Vous n'avez aucun droit pour créer des circuits de course.",
        ["RACING_CANTTHISNAME"] = "Ce nom n'est pas disponible.",
        ["RACING_ENTER_TRACK"] = "Vous devez entrer un nom de piste.",

        ["MEOS_TITLE"] = "MEOS",
        ["MEOS_CLEARED"] = "Toutes les notifications ont été supprimées!",
        ["MEOS_GPS"] = "Ce message n'a pas de localisation GPS!",
        ["MEOS_NORESULT"] = "Il n'y a pas de résultat!",

	},

	['tr'] = {
        ["NO_VEHICLE"] = "Etrafta araç yok!",
        ["NO_ONE"] = "Etrafta kimse yok!",
        ["ALLFIELDS"] = "Tüm alanları doldurun!",

        ["RACE_TITLE"] = "Racing",

        ["WHATSAPP_TITLE"] = "Whatsapp",
        ["WHATSAPP_NEW_MESSAGE"] = "Adlı kişiden yeni mesaj",
        ["WHATSAPP_MESSAGE_TOYOU"] = "Neden kendine mesaj gönderiyorsun",
        ["WHATSAPP_LOCATION_SET"] = "Konum ayarlandı!",
        ["WHATSAPP_SHARED_LOCATION"] = "Paylaşılan Konum",
        ["WHATSAPP_BLANK_MSG"] = "Boş mesaj gönderemezsiniz!",

        ["MAIL_TITLE"] = "Mail",
        ["MAIL_NEW"] = "Adresinden yeni bir Posta aldınız",

        ["ADVERTISEMENT_TITLE"] = "Advertisement",
        ["ADVERTISEMENT_NEW"] = "Tarafından yeni bir ilan yayınlandı",
        ["ADVERTISEMENT_EMPY"] = "Boş bir AD yerleştiremezsiniz!",

        ["TWITTER_TITLE"] = "Twitter",
        ["TWITTER_NEW"] = "Yeni tweet",
        ["TWITTER_POSTED"] = "Tweet gönderildi!",
        ["TWITTER_GETMENTIONED"] = "Bir Tweette bahsediliyorsunuz!",
        ["MENTION_YOURSELF"] = "Kendinden bahsedemezsin!",
        ["TWITTER_ENTER_MSG"] = "Bir mesaj girin!",

        ["PHONE_DONT_HAVE"] = "Telefonun yok",
        ["PHONE_TITLE"] = "Phone",
        ["PHONE_CALL_END"] = "Çağrı sona erdi",
        ["PHONE_NOINCOMING"] = "Gelen aramanız yok!",
        ["PHONE_STARTED_ANON"] = "İsimsiz bir arama başlattınız!",
        ["PHONE_BUSY"] = "Zaten meşgulsün!",
        ["PHONE_PERSON_TALKING"] = "Bu kişi konuşuyor!",
        ["PHONE_PERSON_UNAVAILABLE"] = "Bu kişi müsait değil!",
        ["PHONE_YOUR_NUMBER"] = "Kendi numaranızı arayamazsınız!",
        ["PHONE_MSG_YOURSELF"] = "Kendine mesaj atamazsın, hüzünlü herif!",

        ["CONTACTS_REMOVED"] = "Kişiyi kaldırdınız!",
        ["CONTACTS_NEWSUGGESTED"] = "Yeni bir önerilen kişiniz var!",
        ["CONTACTS_EDIT_TITLE"] = "Kişi Düzenleme",
        ["CONTACTS_ADD_TITLE"] = "Kişi ekle",
        ["CONTACTS_ADD_TITLE"] = "Kişi ekle",

        ["BANK_TITLE"] = 'Bank',
        ["BANK_DONT_ENOUGH"] = 'Yeterli bakiyeniz yok!',
        ["BANK_NOIBAN"] = "Bu kişiye bağlı IBAN yok!",

        ["CRYPTO_TITLE"] = "Crypto",

        ["GPS_SET"] = "GPS Konumu ayarlandı: ",

        ["NUI_SYSTEM"] = 'System',
        ["NUI_NOT_AVAILABLE"] = 'mevcut değil!',
        ["NUI_MYPHONE"] = 'Telefon numarası',
        ["NUI_INFO"] = 'Bilişim',

        ["SETTINGS_TITLE"] = 'Settings',
        ["PROFILE_SET"] = 'Kendi profil resmi seti!',
        ["POFILE_DEFAULT"] = 'Varsayılan profil resmi ayarlandı!',
        ["BACKGROUND_SET"] = 'Kendi arka plan seti!',

        ["RACING_TITLE"] = "Racing",
        ["RACING_CHOSEN_TRACK"] = "Bir Parça seçmediniz.",
        ["RACING_ALREADY_ACTIVE"] = "Zaten aktif bir yarışınız var.",
        ["RACING_ENTER_ROUNDS"] = "Bir miktar tur girin.",
        ["RACING_CANT_THIS_TIME"] = "Şu anda yarış yapılamaz.",
        ["RACING_ALREADY_STARTED"] = "Yarış çoktan başladı.",
        ["RACING_ALREADY_INRACE"] = "Zaten bir yarış içindesin.",
        ["RACING_ALREADY_CREATED"] = "Zaten bir Parça oluşturuyorsunuz.",
        ["RACING_INEDITOR"] = "Bir editördesin.",
        ["RACING_INRACE"] = "Bir yarıştasın.",
        ["RACING_CANTSTART"] = "Yarış Pistleri oluşturma hakkınız yok.",
        ["RACING_CANTTHISNAME"] = "Bu isim uygun değil.",
        ["RACING_ENTER_TRACK"] = "Bir Parça adı girmelisiniz.",

        ["MEOS_TITLE"] = "MEOS",
        ["MEOS_CLEARED"] = "Tüm bildirimler kaldırıldı!",
        ["MEOS_GPS"] = "Bu mesajda GPS Konumu yok!",
        ["MEOS_NORESULT"] = "Sonuç yok!",

	}
}


Config.PhoneApplications = {
    ["phone"] = {
        app = "phone",
        color = "#04b543",
        icon = "fa fa-phone-alt",
        tooltipText = "Phone",
        tooltipPos = "top",
        job = false,
        blockedjobs = {},
        slot = 1,
        Alerts = 0,
    },
    
    ["whatsapp"] = {
        app = "whatsapp",
        color = "#25d366",
        icon = "fab fa-whatsapp",
        tooltipText = "Whatsapp",
        tooltipPos = "top",
        style = "font-size: 2.8vh";
        job = false,
        blockedjobs = {},
        slot = 2,
        Alerts = 0,
    },

    ["settings"] = {
        app = "settings",
        color = "#636e72",
        icon = "fa fa-cog",
        tooltipText = "Settings",
        tooltipPos = "top",
        style = "padding-right: .08vh; font-size: 2.3vh";
        job = false,
        blockedjobs = {},
        slot = 3,
        Alerts = 0,
    },

    ["twitter"] = {
        app = "twitter",
        color = "#1da1f2",
        icon = "fab fa-twitter",
        tooltipText = "Twitter",
        tooltipPos = "top",
        job = false,
        blockedjobs = {},
        slot = 4,
        Alerts = 0,
    },

    ["garage"] = {
        app = "garage",
        color = "#575fcf",
        icon = "fas fa-warehouse",
        tooltipText = "Garage",
        tooltipPos = "top",
        job = false,
        blockedjobs = {},
        slot = 5,
        Alerts = 0,
    },

    ["advert"] = {
        app = "advert",
        color = "#ff8f1a",
        icon = "fas fa-ad",
        tooltipText = "Yellow Pages",
        tooltipPos = "top",
        job = false,
        blockedjobs = {},
        slot = 7,
        Alerts = 0,
    },

    ["bank"] = {
        app = "bank",
        color = "#9c88ff",
        icon = "fas fa-university",
        tooltipText = "IPlay Bank",
        tooltipPos = "top",
        job = false,
        blockedjobs = {},
        slot = 8,
        Alerts = 0,
    },

    --[[
    ["lawyers"] = {
        app = "lawyers",
        color = "#353b48",
        icon = "fas fa-user-tie",
        tooltipText = "Lawyers",
        tooltipPos = "right",
        job = false,
        blockedjobs = {},
        slot = 9,
        Alerts = 0,
    },
    --]]

    ["racing"] = {
        app = "racing",
        color = "#353b48",
        icon = "fas fa-flag-checkered",
        tooltipText = "Racing",
        job = false,
        blockedjobs = {
            "police"
        },
        slot = 9,
        Alerts = 0,
    },
	
	["houses"] = {
        app = "houses",
        color = "#27ae60",
        icon = "fas fa-home",
        tooltipText = "Huizen",
        job = false,
        blockedjobs = {},
        slot = 10,
        Alerts = 0,
    },
	
	
	
	["medic"] = {
        app = "medic",
        color = "#FF0000",
        icon = "fas fa-hand-holding-medical",
        tooltipText = "Medic",
        tooltipPos = "right",
        job = false,
        blockedjobs = {},
        slot = 11,
        Alerts = 0,
    },
	["police"] = {
        app = "police",
        color = "#004682",
        icon = "fas fa-atom",
        tooltipText = "Police",
        tooltipPos = "right",
        job = false,
        blockedjobs = {},
        slot = 12,
        Alerts = 0,
    },
	["cardealer"] = {
        app = "cardealer",
        color = "#995c00",
        icon = "fas fa-car",
        tooltipText = "Cardealer",
        tooltipPos = "right",
        job = false,
        blockedjobs = {},
        slot = 13,
        Alerts = 0,
    },
	
	["mechanic"] = {
        app = "mechanic",
        color = "#b30077",
        icon = "fas fa-truck-monster",
        tooltipText = "Mechanic",
        tooltipPos = "right",
        job = false,
        blockedjobs = {},
        slot = 14,
        Alerts = 0,
    },
    
  --[[
    ["meos"] = {
        app = "meos",
        color = "#004682",
        icon = "fas fa-ad",
        tooltipText = "MEOS",
        job = "police",
        blockedjobs = {},
        slot = 9,
        Alerts = 0,
    },
    --]]
}