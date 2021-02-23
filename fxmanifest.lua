-- created by RexshackGaming : Discord : https://discord.gg/AmdXaFvC5v
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA
-- github : https://github.com/RexShack

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

server_scripts {
    'server/server.lua',
	'@mysql-async/lib/MySQL.lua'
}

client_scripts {
	'client/client.lua',
	'client/config.lua'
}

dependency 'redem_roleplay'
dependency 'redemrp_inventory'
dependency 'redemrp_notification'
dependency 'redm_moonshine_interiors'