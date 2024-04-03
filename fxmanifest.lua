fx_version 'adamant'
game 'gta5'
version '1.0.0'
author 'MilyonJames'

client_scripts {
	"locales/*",
	'config.lua',
	'client/*',
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"locales/*",
	'config.lua',
	'server/*',
}