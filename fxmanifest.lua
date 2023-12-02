-- FX Information --
fx_version   'cerulean'
lua54        'yes'
use_fxv2_oal 'yes'
games        { 'rdr3', 'gta5' }

-- Resource Information --
version '1.0.0'
name         'mrlutin_demo'
author       'MrLutin'
repository   "https://github.com/MrLutin/mrlutin_demo"
description  'A demo, made to show some functionality of mrlutin_lib'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

-- Manifest --
dependencies {
    '/onesync',
    'mrlutin_lib',
}

shared_scripts {
    '@mrlutin_lib/imports.lua',
    'config.lua',
}

client_script 'client/main.lua'

server_script 'server/main.lua'