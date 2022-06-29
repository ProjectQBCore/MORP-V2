	Config = {}

-- Dodatkowe printy w konsoli
Config.DebugPrint = true

-- Pozycje mechanika (X, Y, Z, PRACA)
-- Praca == "none" -> możliwość tuningu dla wszystkich
Config.Shops = {
    {x = -336.5906677246, y = -137.515335083, z = 38.297771453858, h = 245.47393798828, job="mecano"},
    {x = -211.91694641114, y = -1324.0732421875, z = 30.122175216674, h = 150.81541442872, job="mecano2"},
}

-- Zniżka ceny przy zakupie części przez pracę mechanika
Config.Discount = 0.7 -- (70% ceny w katalogu)

-- Ustawienia bazy danych
Config.Sql = {
	table = "vehicles", -- tabela z cenami i modelami pojazdów (salon samochodowy)
	model = "model", -- kolumna zawierająca model pojazdu (tekst)
	price = "price", -- kolumna z ceną pojazdu (liczba)
	garage = "owned_vehicles", -- tabela z prywatnymi samochodami
	plate = "plate", -- kolumna z tablicą prywatnego pojazdu
}

-- Zmiana kont dla poszczególnych prac (esx_addonaccount)
Config.Accounts = {
	{
		job = "mecano",
		account = "society_mecano"
	},
	{
		job = "mecano2",
		account = "society_mecano2_money"
	},
}

-- Odległość rysowania markerów
Config.DrawDistance = 55

-- Kolory markerów
Config.Markers = {
	active = {255, 41, 41, 50}, -- aktywny (po wjechaniu w marker)
	inactive = {147, 11, 11, 90} -- nieaktywny (z dala od markera)
}

-- Pozycja menu listy (esx_menu_default)
Config.MenuAlign = "left"

-- Cena pojazdu, jeśli dany model nie jest dostępny w sprzedaży
Config.DefaultCarPrice = 50000

-- Webhook Discord do wyświetlania logów z wykonywanych tuningów
Config.WebHook = "https://discord.com/api/webhooks/796132417492353054/vB1Ttq-9-mdzCQgU_mA41JaXlDVE0XDQ1aIr8ewv6F5imfEEGDe8_Fp6V49Wz6wXOMH1"

-- Event do powiadomień. Możliwość zmiany na własny system
RegisterNetEvent("smx_mecano:clientNotify")
AddEventHandler("smx_mecano:clientNotify", function(data)
	if data ~= nil and data.text ~= nil then
		ESX.ShowNotification(tostring(data.text))
	end
end)

Config.Language = {
	-- Interakcja
	press = "Press",
	openShop = "to open the workshop menu",
	hornPreview = "to try the horn",
	openDoors = "to open all the doors",
	closeDoors = "to close all the doors",
	changeCam = "to switch the camera",
	-- Menu
	yes = "Yes",
	no = "Not",
	price = "Price",
	value = "Cost",
	installPrompt = "Do you want to install the configuration?",
	mainMenu = "Workshop Menu",
	openModsList = "Open directory",
	installMods = "Install modifications",
	leaveGarage = "Do you want to leave the catalog?",
	-- Powiadomienia
	noSavedMods = "This vehicle has no saved configuration!",
	noModsChosen = "The current configuration contains no new modifications!",
	partsSavedJob = "The configuration has been saved. Go to the mechanic to install it in your vehicle",
	partsSavedNoJob = "You have saved the configuration. You can now install it in your vehicle",
	noMoney = "You don't have enough cash!",
	noSocietyMoney = "There is not enough money in the faction account!",
	paid = "Paid",
	paidFor = "for installing the configuration.",
	paidForSociety = "from a faction account in exchange for installing a configuration.",
	-- Części
	stock = "Factory",
	notFoundInCdImages = "Custom part",
	-- Waluta
	currency = "$",
	-- Logi
	discordTitle = "New Tuning",
	tuningBy = "Vehicle tuning by",
	oldParts = "Old configuration",
	newParts = "New configuration",
}