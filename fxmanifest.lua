shared_script '@FGAC/shared_fg-obfuscated.lua'
shared_script '@FGAC/ai_module_fg-obfuscated.lua'
fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
lua54 'yes'

author "Fancazista"
github "https://github.com/Fancazista/"
docs "https://docs.fanca.live/"
discord "https://discord.gg/2JTRHrMs4m/"
tebex "https://fanca.tebex.io/"

name "FANCA Jail"
description "Custom script made for @sjaakvaak and @patrickwajong"
version '1.1.1'

dependencies {
	'oxmysql',
	'ox_lib',
	'es_extended',
}

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua',
	'shared.lua',
	'config.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua',
}

client_scripts {
	'client/*.lua',
}
