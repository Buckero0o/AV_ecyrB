fx_version 'cerulean'
games { 'gta5' }

author 'Discord = ecyrB#6661 Email = Buckygaming050@gmail.com'
description 'Simple armor script'
version '1.1.0'

client_scripts {
	'config.lua',
	'client/main.lua'
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	'server/main.lua'
}

dependencies {
	'es_extended'
}
