local LDB = LibStub("LibDataBroker-1.1")
local LDBIcon = LibStub("LibDBIcon-1.0")

Emoticons_Settings = {
    --["CHAT_MSG_OFFICER"] = true, -- 1
    ["CHAT_MSG_GUILD"] = true, -- 2
    ["CHAT_MSG_PARTY"] = true, -- 3
    ["CHAT_MSG_PARTY_LEADER"] = true, -- dont count, tie to 3
    ["CHAT_MSG_PARTY_GUIDE"] = true, -- dont count, tie to 3
    ["CHAT_MSG_RAID"] = true, -- 4
    ["CHAT_MSG_RAID_LEADER"] = true, -- dont count, tie to 4
    ["CHAT_MSG_RAID_WARNING"] = true, -- dont count, tie to 4
    ["CHAT_MSG_SAY"] = true, -- 5
    ["CHAT_MSG_YELL"] = true, -- 6
    ["CHAT_MSG_WHISPER"] = true, -- 7
    ["CHAT_MSG_WHISPER_INFORM"] = true, -- dont count, tie to 7
    ["CHAT_MSG_CHANNEL"] = true, -- 8
    ["CHAT_MSG_BN_WHISPER"] = true, -- 9
    ["CHAT_MSG_BN_WHISPER_INFORM"] = true, -- dont count, tie to 9
    ["CHAT_MSG_BN_CONVERSATION"] = true, -- 10
    ["CHAT_MSG_INSTANCE_CHAT"] = true, -- 11
    ["CHAT_MSG_INSTANCE_CHAT_LEADER"] = true, -- dont count, tie to 11
    ["MAIL"] = true,
    ["MINIMAPBUTTON"] = true,
	["MINIMAPDATA"] = {minimapPos=135},
    ["LARGEEMOTES"] = false,
	["CLICKABLEEMOTES"] = true,
    ["CHECKALLFAVOURITES"] = true,
    ["FAVEMOTES"] = {
        true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true
    }
};

local origsettings = {
    --["CHAT_MSG_OFFICER"] = true,
    ["CHAT_MSG_GUILD"] = true,
    ["CHAT_MSG_PARTY"] = true,
    ["CHAT_MSG_PARTY_LEADER"] = true,
    ["CHAT_MSG_PARTY_GUIDE"] = true,
    ["CHAT_MSG_RAID"] = true,
    ["CHAT_MSG_RAID_LEADER"] = true,
    ["CHAT_MSG_RAID_WARNING"] = true,
    ["CHAT_MSG_SAY"] = true,
    ["CHAT_MSG_YELL"] = true,
    ["CHAT_MSG_WHISPER"] = true,
    ["CHAT_MSG_WHISPER_INFORM"] = true,
    ["CHAT_MSG_BN_WHISPER"] = true,
    ["CHAT_MSG_BN_WHISPER_INFORM"] = true,
    ["CHAT_MSG_BN_CONVERSATION"] = true,
    ["CHAT_MSG_CHANNEL"] = true,
    ["CHAT_MSG_INSTANCE_CHAT"] = true,
    ["MAIL"] = true,
    ["MINIMAPBUTTON"] = true,
	["MINIMAPDATA"] = {minimapPos=135},
    ["LARGEEMOTES"] = false,
	["CLICKABLEEMOTES"] = false,
    ["CHECKALLFAVOURITES"] = true,
    ["FAVEMOTES"] = {
        true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true
    }
};

local defaultpack = {
    -- DUCKS
    [":autismusmaximus:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\autismusmaximus.tga:28:28",
    [":bogged:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\bogged.tga:28:28",
    [":cb2077:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\cb2077.tga:28:28",
    [":copium:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\copium.tga:28:28",
    [":coronas:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\coronas.tga:28:28",
    [":damnboy:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\damnboy.tga:28:28",
    [":damnsoi:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\damnsoi.tga:28:28",
    [":db24s:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\db24s.tga:28:28",
    [":db2077:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\db2077.tga:28:28",
    [":dbmad:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\dbmad.tga:28:28",
    [":dbshook:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\dbshook.tga:28:28",
    [":duckemoji1cry:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1cry.tga:28:28",
    [":duckemoji1headangryeyes:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1headangryeyes.tga:28:28",
    [":duckemoji1headduckscared:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1headduckscared.tga:28:28",
    [":duckemoji1headducksstare:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1headducksstare.tga:28:28",
    [":duckemoji1headloveeyes:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1headloveeyes.tga:28:28",
    [":duckemoji1headyeahright:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1headyeahright.tga:28:28",
    [":duckemoji1normal:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\duckemoji1normal.tga:28:28",
    [":fallenlootbanned:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\fallenlootbanned.tga:28:28",
    [":feelsbadman:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\feelsbadman.tga:28:28",
    [":feelskekman:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\feelskekman.tga:28:28",
    [":feelswowman:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\feelswowman.tga:28:28",
    [":fresh:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\fresh.tga:28:28",
    [":gamer:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\gamer.tga:28:28",
    [":gnomedave:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\gnomedave.tga:28:28",
    [":hahaa:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\hahaa.tga:28:28",
    [":isheh2:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\isheh2.tga:28:28",
    [":ishehface:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ishehface.tga:28:28",
    [":jerrywhat:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\jerrywhat.tga:28:28",
    [":KEKc:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\KEKc.tga:28:28",
    [":kekidan:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\kekidan.tga:28:28",
    [":KEKL:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\KEKL.tga:28:28",
    [":kingCool:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\kingCool.tga:28:28",
    [":kingSad:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\kingSad.tga:28:28",
    [":kingW:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\kingW.tga:28:28",
    [":maitozchomp:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\maitozchomp.tga:28:28",
    [":monkachrist:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkachrist.tga:28:28",
    [":monkafinger:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkafinger.tga:28:28",
    [":monkaGiga:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkaGiga.tga:28:28",
    [":monkagun:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkagun.tga:28:28",
    [":monkahmm:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkahmm.tga:28:28",
    [":monkaJuoppo:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkaJuoppo.tga:28:28",
    [":monkas:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkas.tga:28:28",
    [":monkastab:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkastab.tga:28:28",
    [":monkasteer:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkasteer.tga:28:28",
    [":monkaWCB:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\monkaWCB.tga:28:28",
    [":nopers:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\nopers.tga:28:28",
    [":peepoknight:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\peepoknight.tga:28:28",
    [":peepomom:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\peepomom.tga:28:28",
    [":peepoping:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\peepoping.tga:28:28",
    [":pepeAlliance:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepeAlliance.tga:28:28",
    [":pepebait:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepebait.tga:28:28",
    [":pepeboomer:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepeboomer.tga:28:28",
    [":pepebox:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepebox.tga:28:28",
    [":pepecapri:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepecapri.tga:28:28",
    [":pepecheers:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepecheers.tga:28:28",
    [":pepecomfy:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepecomfy.tga:28:28",
    [":pepedruid:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepedruid.tga:28:28",
    [":pepega:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepega.tga:28:28",
    [":pepehands:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepehands.tga:28:28",
    [":pepehappy:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepehappy.tga:28:28",
    [":pepeKnife:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepeKnife.tga:28:28",
    [":pepelove:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepelove.tga:28:28",
    [":pepemageyay:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepemageyay.tga:28:28",
    [":pepemong:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepemong.tga:28:28",
    [":pepeok:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepeok.tga:28:28",
    [":pepeold:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepeold.tga:28:28",
    [":pepepriest:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepepriest.tga:28:28",
    [":pepepurge:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepepurge.tga:28:28",
    [":peperanker:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\peperanker.tga:28:28",
    [":pepesc:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepesc.tga:28:28",
    [":pepescience:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepescience.tga:28:28",
    [":pepetlj:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepetlj.tga:28:28",
    [":pepeyikes:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepeyikes.tga:28:28",
    [":pepoNo:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepoNo.tga:28:28",
    [":pepoYes:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pepoYes.tga:28:28",
    [":pickaUwU:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pickaUwU.tga:28:28",
    [":pogchamp:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\pogchamp.tga:28:28",
    [":richblush:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\richblush.tga:28:28",
    [":ritacor:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritacor.tga:28:28",
    [":ritahands:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritahands.tga:28:28",
    [":ritamega:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritamega.tga:28:28",
    [":ritas:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritas.tga:28:28",
    [":ritasomega:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritasomega.tga:28:28",
    [":ritatont:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritatont.tga:28:28",
    [":ritaw:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ritaw.tga:28:28",
    [":sad_cat:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\sad_cat.tga:28:28",
    [":sadge:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\sadge.tga:28:28",
    [":slavkissface:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\slavkissface.tga:28:28",
    [":tfREEEEEEE:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\tfREEEEEEE.tga:28:28",
    [":THANOS:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\THANOS.tga:28:28",
    [":ummers:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\ummers.tga:28:28",
    [":verynaiz:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\verynaiz.tga:28:28",
    [":waitwhat:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\waitwhat.tga:28:28",
    [":wesmart:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\wesmart.tga:28:28",
    [":xmasblush:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\xmasblush.tga:28:28",
    [":xmasglad:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\xmasglad.tga:28:28",
    [":YEPPEGA:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\YEPPEGA.tga:28:28",
    [":yeppers:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\yeppers.tga:28:28",
    [":zugzug:"] = "Interface\\Addons\\DucksEmotes\\DUCKS\\zugzug.tga:28:28"
};
local emoticons = {
    -- DUCKS
    [":autismusmaximus:"] = ":autismusmaximus:",
    [":bogged:"] = ":bogged:",
    [":cb2077:"] = ":cb2077:",
    [":copium:"] = ":copium:",
    [":coronas:"] = ":coronas:",
    [":damnboy:"] = ":damnboy:",
    [":damnsoi:"] = ":damnsoi:",
    [":db24s:"] = ":db24s:",
    [":db2077:"] = ":db2077:",
    [":dbmad:"] = ":dbmad:",
    [":dbshook:"] = ":dbshook:",
    [":duckemoji1cry:"] = ":duckemoji1cry:",
    [":duckemoji1headangryeyes:"] = ":duckemoji1headangryeyes:",
    [":duckemoji1headduckscared:"] = ":duckemoji1headduckscared:",
    [":duckemoji1headducksstare:"] = ":duckemoji1headducksstare:",
    [":duckemoji1headloveeyes:"] = ":duckemoji1headloveeyes:",
    [":duckemoji1headyeahright:"] = ":duckemoji1headyeahright:",
    [":duckemoji1normal:"] = ":duckemoji1normal:",
    [":fallenlootbanned:"] = ":fallenlootbanned:",
    [":feelsbadman:"] = ":feelsbadman:",
    [":feelskekman:"] = ":feelskekman:",
    [":feelswowman:"] = ":feelswowman:",
    [":fresh:"] = ":fresh:",
    [":gamer:"] = ":gamer:",
    [":gnomedave:"] = ":gnomedave:",
    [":hahaa:"] = ":hahaa:",
    [":isheh2:"] = ":isheh2:",
    [":ishehface:"] = ":ishehface:",
    [":jerrywhat:"] = ":jerrywhat:",
    [":KEKc:"] = ":KEKc:",
    [":kekidan:"] = ":kekidan:",
    [":KEKL:"] = ":KEKL:",
    [":kingCool:"] = ":kingCool:",
    [":kingSad:"] = ":kingSad:",
    [":kingW:"] = ":kingW:",
    [":maitozchomp:"] = ":maitozchomp:",
    [":monkachrist:"] = ":monkachrist:",
    [":monkafinger:"] = ":monkafinger:",
    [":monkaGiga:"] = ":monkaGiga:",
    [":monkagun:"] = ":monkagun:",
    [":monkahmm:"] = ":monkahmm:",
    [":monkaJuoppo:"] = ":monkaJuoppo:",
    [":monkas:"] = ":monkas:",
    [":monkastab:"] = ":monkastab:",
    [":monkasteer:"] = ":monkasteer:",
    [":monkaWCB:"] = ":monkaWCB:",
    [":nopers:"] = ":nopers:",
    [":peepoknight:"] = ":peepoknight:",
    [":peepomom:"] = ":peepomom:",
    [":peepoping:"] = ":peepoping:",
    [":pepeAlliance:"] = ":pepeAlliance:",
    [":pepebait:"] = ":pepebait:",
    [":pepeboomer:"] = ":pepeboomer:",
    [":pepebox:"] = ":pepebox:",
    [":pepecapri:"] = ":pepecapri:",
    [":pepecheers:"] = ":pepecheers:",
    [":pepecomfy:"] = ":pepecomfy:",
    [":pepedruid:"] = ":pepedruid:",
    [":pepega:"] = ":pepega:",
    [":pepehands:"] = ":pepehands:",
    [":pepehappy:"] = ":pepehappy:",
    [":pepeKnife:"] = ":pepeKnife:",
    [":pepelove:"] = ":pepelove:",
    [":pepemageyay:"] = ":pepemageyay:",
    [":pepemong:"] = ":pepemong:",
    [":pepeok:"] = ":pepeok:",
    [":pepeold:"] = ":pepeold:",
    [":pepepriest:"] = ":pepepriest:",
    [":pepepurge:"] = ":pepepurge:",
    [":peperanker:"] = ":peperanker:",
    [":pepesc:"] = ":pepesc:",
    [":pepescience:"] = ":pepescience:",
    [":pepetlj:"] = ":pepetlj:",
    [":pepeyikes:"] = ":pepeyikes:",
    [":pepoNo:"] = ":pepoNo:",
    [":pepoYes:"] = ":pepoYes:",
    [":pickaUwU:"] = ":pickaUwU:",
    [":pogchamp:"] = ":pogchamp:",
    [":richblush:"] = ":richblush:",
    [":ritacor:"] = ":ritacor:",
    [":ritahands:"] = ":ritahands:",
    [":ritamega:"] = ":ritamega:",
    [":ritas:"] = ":ritas:",
    [":ritasomega:"] = ":ritasomega:",
    [":ritatont:"] = ":ritatont:",
    [":ritaw:"] = ":ritaw:",
    [":sad_cat:"] = ":sad_cat:",
    [":sadge:"] = ":sadge:",
    [":slavkissface:"] = ":slavkissface:",
    [":tfREEEEEEE:"] = ":tfREEEEEEE:",
    [":THANOS:"] = ":THANOS:",
    [":ummers:"] = ":ummers:",
    [":verynaiz:"] = ":verynaiz:",
    [":waitwhat:"] = ":waitwhat:",
    [":wesmart:"] = ":wesmart:",
    [":xmasblush:"] = ":xmasblush:",
    [":xmasglad:"] = ":xmasglad:",
    [":YEPPEGA:"] = ":YEPPEGA:",
    [":yeppers:"] = ":yeppers:",
    [":zugzug:"] = ":zugzug:"
};
    -- 45 per menu max
local dropdown_options = {
    [01] = { --41
        ":autismusmaximus:", ":bogged:", ":cb2077:", ":copium:", ":coronas:", ":damnboy:", ":damnsoi:", ":db24s:", ":db2077:", ":dbmad:",
        ":dbshook:", ":duckemoji1cry:", ":duckemoji1headangryeyes:", ":duckemoji1headduckscared:", ":duckemoji1headducksstare:", ":duckemoji1headloveeyes:", ":duckemoji1headyeahright:", ":duckemoji1normal:", ":fallenlootbanned:", ":feelsbadman:", 
        ":feelskekman:", ":feelswowman:", ":fresh:", ":gamer:", ":gnomedave:", ":hahaa:", ":isheh2:", ":ishehface:", ":jerrywhat:", ":KEKc:", ":kekidan:", 
        ":KEKL:", ":kingCool:", ":kingSad:", ":kingW:", ":maitozchomp:", ":monkachrist:", ":monkafinger:", ":monkaGiga:", ":monkagun:", ":monkahmm:", 
        ":monkaJuoppo:", ":monkas:", ":monkastab:", ":monkasteer:", ":monkaWCB:", ":nopers:", ":peepoknight:", ":peepomom:", ":peepoping:", ":pepeAlliance:"
    },
    [02] = { --40
        ":pepebait:", ":pepeboomer:", ":pepebox:", ":pepecapri:", ":pepecheers:", ":pepecomfy:", ":pepedruid:", ":pepega:", ":pepehands:", ":pepehappy:", 
        ":pepeKnife:", ":pepelove:", ":pepemageyay:", ":pepemong:", ":pepeok:", ":pepeold:", ":pepepriest:", ":pepepurge:", ":peperanker:", ":pepesc:", 
        ":pepescience:", ":pepetlj:", ":pepeyikes:", ":pepoNo:", ":pepoYes:", ":pickaUwU:", ":pogchamp:", ":richblush:", ":ritacor:", ":ritahands:", 
        ":ritamega:", ":ritas:", ":ritasomega:", ":ritatont:", ":ritaw:", ":sad_cat:", ":sadge:", ":slavkissface:", ":tfREEEEEEE:", ":THANOS:"

    },
    [03] = { --9
        ":ummers:", ":verynaiz:", ":waitwhat:", ":wesmart:", ":xmasblush:", ":xmasglad:", ":YEPPEGA:", ":yeppers:", ":zugzug:"
    }
};

local ItemTextFrameSetText = ItemTextPageText.SetText;

-- Call this in a mod's initialization to move the minimap button to its saved position (also used in its movement)
-- ** do not call from the mod's OnLoad, VARIABLES_LOADED or later is fine. **
function stripChars(str)
    local tableAccents = {}
    tableAccents["À"] = "A"
    tableAccents["Á"] = "A"
    tableAccents["Â"] = "A"
    tableAccents["Ã"] = "A"
    tableAccents["Ä"] = "A"
    tableAccents["Å"] = "A"
    tableAccents["Æ"] = "AE"
    tableAccents["Ç"] = "C"
    tableAccents["È"] = "E"
    tableAccents["É"] = "E"
    tableAccents["Ê"] = "E"
    tableAccents["Ë"] = "E"
    tableAccents["Ì"] = "I"
    tableAccents["Í"] = "I"
    tableAccents["Î"] = "I"
    tableAccents["Ï"] = "I"
    tableAccents["Ð"] = "D"
    tableAccents["Ñ"] = "N"
    tableAccents["Ò"] = "O"
    tableAccents["Ó"] = "O"
    tableAccents["Ô"] = "O"
    tableAccents["Õ"] = "O"
    tableAccents["Ö"] = "O"
    tableAccents["Ø"] = "O"
    tableAccents["Ù"] = "U"
    tableAccents["Ú"] = "U"
    tableAccents["Û"] = "U"
    tableAccents["Ü"] = "U"
    tableAccents["Ý"] = "Y"
    tableAccents["Þ"] = "P"
    tableAccents["ß"] = "s"
    tableAccents["à"] = "a"
    tableAccents["á"] = "a"
    tableAccents["â"] = "a"
    tableAccents["ã"] = "a"
    tableAccents["ä"] = "a"
    tableAccents["å"] = "a"
    tableAccents["æ"] = "ae"
    tableAccents["ç"] = "c"
    tableAccents["è"] = "e"
    tableAccents["é"] = "e"
    tableAccents["ê"] = "e"
    tableAccents["ë"] = "e"
    tableAccents["ì"] = "i"
    tableAccents["í"] = "i"
    tableAccents["î"] = "i"
    tableAccents["ï"] = "i"
    tableAccents["ð"] = "eth"
    tableAccents["ñ"] = "n"
    tableAccents["ò"] = "o"
    tableAccents["ó"] = "o"
    tableAccents["ô"] = "o"
    tableAccents["õ"] = "o"
    tableAccents["ö"] = "o"
    tableAccents["ø"] = "o"
    tableAccents["ù"] = "u"
    tableAccents["ú"] = "u"
    tableAccents["û"] = "u"
    tableAccents["ü"] = "u"
    tableAccents["ý"] = "y"
    tableAccents["þ"] = "p"
    tableAccents["ÿ"] = "y"
    local normalisedString = ''
    local normalisedString = str:gsub("[%z\1-\127\194-\244][\128-\191]*",
                                      tableAccents)
    return normalisedString
end

local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")

-- Put your code that you want on a minimap button click here.  arg1="LeftButton", "RightButton", etc
function DucksEmotes_MinimapButton_OnClick()
    LibDD:ToggleDropDownMenu(1, nil, EmoticonMiniMapDropDown,
                           "cursor", 0, 0);
end

function ItemTextPageText.SetText(self, msg, ...)
    if (Emoticons_Settings["MAIL"] and msg ~= nil) then
        msg = Emoticons_RunReplacement(msg);
    end
    ItemTextFrameSetText(self, msg, ...);
end

local OpenMailBodyTextSetText = OpenMailBodyText.SetText;
function OpenMailBodyText.SetText(self, msg, ...)
    if (Emoticons_Settings["MAIL"] and msg ~= nil) then
        msg = Emoticons_RunReplacement(msg);
    end
    OpenMailBodyTextSetText(self, msg, ...);
end

function Emoticons_LoadMiniMapDropdown(self, level, menuList)
    local info = LibDD:UIDropDownMenu_CreateInfo();
    info.isNotRadio = true;
    info.notCheckable = true;
    info.notClickable = false;
    if (level or 1) == 1 then
        for k, v in ipairs(dropdown_options) do
            if (Emoticons_Settings["FAVEMOTES"][k]) then
                info.hasArrow = true;
                info.text = v[1];
                info.value = false;
                info.menuList = k;
                LibDD:UIDropDownMenu_AddButton(info);
            end
        end
    else
        first = true;
        for ke, va in ipairs(dropdown_options[menuList]) do
            if (first) then
                first = false;
            else
                -- print(ke.." "..va);
                info.text = "|T" .. defaultpack[va] .. "|t " .. va;
                info.value = va;
                info.func = Emoticons_Dropdown_OnClick;
                LibDD:UIDropDownMenu_AddButton(info, level);
            end
        end
    end
end

function Emoticons_Dropdown_OnClick(self, arg1, arg2, arg3)
    if (ACTIVE_CHAT_EDIT_BOX ~= nil) then
        ACTIVE_CHAT_EDIT_BOX:Insert(self.value);
    end
end

local sm = SendMail;
function SendMail(recipient, subject, msg, ...)
    if Emoticons_Settings["CLICKABLEEMOTES"] then
		msg = Message_StripEscapes(msg) 
	end
    sm(recipient, subject, msg, ...);
end

local scm = SendChatMessage;
function SendChatMessage(msg, ...)
	if Emoticons_Settings["CLICKABLEEMOTES"] then
		msg = Message_StripEscapes(msg) 
	end
    scm(msg, ...);
end

local bnsw = BNSendWhisper;
function BNSendWhisper(id, msg, ...)
	if Emoticons_Settings["CLICKABLEEMOTES"] then
		msg = Message_StripEscapes(msg) 
	end
    bnsw(id, msg, ...);
end

-- Strip the twitch emote link and texture escapes from the message before sending.
-- (to allow for shift-clicking emotes, we are not allowed to send messages with a '|T' sequence in it)
function Message_StripEscapes(msg)

	--find a twitch emote link in the message
	for str in string.gmatch(msg, "(|Htel:.-|h.-|h)") do
		--find the emote string in the twitch emote link
		for emotestr in string.gmatch(str, "|Htel:(.-)|h.-|h") do
			msg = msg:gsub(str, " " .. emotestr .. " "); -- Replace the link and texture with the plain emote key (and a space)
			break;
		end
	end
		
	return msg
end

function Emoticons_UpdateChatFilters()
    for k, v in pairs(Emoticons_Settings) do
        if k ~= "MAIL" then
            if (v) then
                ChatFrame_AddMessageEventFilter(k, Emoticons_MessageFilter)
            else
                ChatFrame_RemoveMessageEventFilter(k, Emoticons_MessageFilter);
            end
        end
    end
end

function Emoticons_MessageFilter(self, event, msg, ...)
    msg = Emoticons_RunReplacement(msg);

    return false, msg, ...
end



local iconregistered = false
local Broker_DucksEmotes
function Emoticons_OnEvent(self, event, ...)
    if (event == "ADDON_LOADED" and select(1, ...) == "DucksEmotes") then
        for k, v in pairs(origsettings) do
            if (Emoticons_Settings[k] == nil) then
                Emoticons_Settings[k] = v;
            end
        end

        Emoticons_UpdateChatFilters();
        Emoticons_SetLargeEmotes(Emoticons_Settings["LARGEEMOTES"]);
        Emoticons_SetClickableEmotes(Emoticons_Settings["CLICKABLEEMOTES"]);
        
        Broker_DucksEmotes = LDB:NewDataObject("DucksEmotes", {
            type = "launcher",
            text = "DucksEmotes",
            icon = "Interface\\AddOns\\DucksEmotes\\1337.tga",
            OnClick = DucksEmotes_MinimapButton_OnClick
        })
        
        if(Emoticons_Settings["MINIMAPBUTTON"]) then
            LDBIcon:Register("DucksEmotes", Broker_DucksEmotes, Emoticons_Settings["MINIMAPDATA"])
            iconregistered = true
        end
        
        Emoticons_SetMinimapButton(Emoticons_Settings["MINIMAPBUTTON"])
    end
end

function Emoticons_OptionsWindow_OnShow(self)
    for k, v in pairs(Emoticons_Settings) do
        local cb = getglobal("EmoticonsOptionsControlsPanel" .. k);

        if (cb ~= nil) then cb:SetChecked(Emoticons_Settings[k]); end
    end

    if Emoticons_Settings["MINIMAPBUTTON"] then
        getglobal("$showMinimapButtonButton"):SetChecked(true);
    end

    if Emoticons_Settings["LARGEEMOTES"] then
        getglobal("$showLargeEmotesButton"):SetChecked(true);
	end

    if Emoticons_Settings["CLICKABLEEMOTES"] then
        getglobal("$showClickableEmotesButton"):SetChecked(true);
    end

    favall = CreateFrame("CheckButton", "favall_GlobalName",
                         EmoticonsOptionsControlsPanel, "UIRadioButtonTemplate");
    if Emoticons_Settings["CHECKALLFAVOURITES"] then
        getglobal("favall_GlobalName"):SetChecked(true);
        for n, m in ipairs(Emoticons_Settings["FAVEMOTES"]) do
            Emoticons_Settings["FAVEMOTES"][n] = true;
        end
    else
        getglobal("favall_GlobalName"):SetChecked(false);
    end
    favall:SetPoint("TOPLEFT", 17, -240);
    getglobal(favall:GetName() .. "Text"):SetText("Check all");
    favall.tooltip = "Check all boxes below.";
    getglobal("favall_GlobalName"):SetScript("OnClick", function(self)
        if (self:GetChecked()) then
            if getglobal("favnone_GlobalName"):GetChecked() then
                getglobal("favnone_GlobalName"):SetChecked(false);
            end
            self:SetChecked(true);
            for n, m in ipairs(Emoticons_Settings["FAVEMOTES"]) do
                Emoticons_Settings["FAVEMOTES"][n] = true;
                if not getglobal("favCheckButton_" .. dropdown_options[n][1]):GetChecked() then
                    getglobal("favCheckButton_" .. dropdown_options[n][1]):SetChecked(true);
                end
            end
            Emoticons_Settings["CHECKALLFAVOURITES"] = true;
        else
            -- Emoticons_Settings["FAVEMOTES"][a] = false;
        end
    end);

    favnone = CreateFrame("CheckButton", "favnone_GlobalName",
                          favall_GlobalName, "UIRadioButtonTemplate");
    if not Emoticons_Settings["CHECKALLFAVOURITES"] then
        getglobal("favnone_GlobalName"):SetChecked(true);
        for n, m in ipairs(Emoticons_Settings["FAVEMOTES"]) do
            Emoticons_Settings["FAVEMOTES"][n] = false;
        end
    else
        getglobal("favnone_GlobalName"):SetChecked(false);
    end
    favnone:SetPoint("TOPLEFT", 110, 0);
    getglobal(favnone:GetName() .. "Text"):SetText("Uncheck all");
    favnone.tooltip = "Uncheck all boxes below.";
    getglobal("favnone_GlobalName"):SetScript("OnClick", function(self)
        if (self:GetChecked()) then
            if (getglobal("favall_GlobalName"):GetChecked() == true) then
                getglobal("favall_GlobalName"):SetChecked(false);
            end
            self:SetChecked(true);
            for n, m in ipairs(Emoticons_Settings["FAVEMOTES"]) do
                Emoticons_Settings["FAVEMOTES"][n] = false;
                if getglobal("favCheckButton_" .. dropdown_options[n][1]):GetChecked() then
                    getglobal("favCheckButton_" .. dropdown_options[n][1]):SetChecked(false);
                end
            end
            Emoticons_Settings["CHECKALLFAVOURITES"] = false;
        else
            -- Emoticons_Settings["FAVEMOTES"][a] = false;
        end
    end);

    favframe = CreateFrame("Frame", "favframe_GlobalName", favall_GlobalName);
    favframe:SetPoint("TOPLEFT", 0, -24);
    favframe:SetSize(590, 175);

    first = true;
    itemcnt = 0
    for a, c in ipairs(dropdown_options) do

        if first then
            favCheckButton = CreateFrame("CheckButton",
                                         "favCheckButton_" .. c[1],
                                         favframe_GlobalName,
                                         "ChatConfigCheckButtonTemplate");
            first = false;
            favCheckButton:SetPoint("TOPLEFT", 0, 0);
        else
            -- favbuttonlist=loadstring("favCheckButton_"..anchor);

            favCheckButton = CreateFrame("CheckButton",
                                         "favCheckButton_" .. c[1],
                                         favframe_GlobalName,
                                         "ChatConfigCheckButtonTemplate");
            favCheckButton:SetParent("favCheckButton_" .. anchor);
            if ((itemcnt % 10) ~= 0) then
                favCheckButton:SetPoint("TOPLEFT", 0, -16);
            else
                favCheckButton:SetPoint("TOPLEFT", 110, 9 * 16);
            end
        end
        itemcnt = itemcnt + 1;
        anchor = c[1];

        -- code=[[print("favCheckButton_"..b[1]..":SetText(b[1])")]];

        getglobal(favCheckButton:GetName() .. "Text"):SetText(c[1]);
        if (getglobal("favCheckButton_" .. c[1]):GetChecked() ~=
            Emoticons_Settings["FAVEMOTES"][a]) then
            getglobal("favCheckButton_" .. c[1]):SetChecked(
                Emoticons_Settings["FAVEMOTES"][a]);
        end
        favCheckButton.tooltip = "Checked boxes will show in the dropdownlist.";
        favCheckButton:SetScript("OnClick", function(self)
            if (self:GetChecked()) then
                Emoticons_Settings["FAVEMOTES"][a] = true;
            else
                Emoticons_Settings["FAVEMOTES"][a] = false;
            end
        end);

    end
end

function Emoticons_RunReplacement(msg)
    -- remember to watch out for |H|h|h's

    local outstr = "";
    local origlen = string.len(msg);
    local startpos = 1;
    local endpos;

    while (startpos <= origlen) do
        endpos = origlen;
        local pos = string.find(msg, "|H", startpos, true);
        if (pos ~= nil) then endpos = pos; end
        outstr = outstr ..
                     Emoticons_InsertEmoticons(string.sub(msg, startpos, endpos)); -- run replacement on this bit
        startpos = endpos + 1;
        if (pos ~= nil) then
            endpos = string.find(msg, "|h", startpos, true);
            if (endpos == nil) then endpos = origlen; end
            if (startpos < endpos) then
                outstr = outstr .. string.sub(msg, startpos, endpos); -- don't run replacement on this bit
                startpos = endpos + 1;
            end
        end
    end

    return outstr;
end

function Emoticons_SetMinimapButton(state)
    Emoticons_Settings["MINIMAPBUTTON"] = state;
    
    if (state) then
        if not iconregistered then
            LDBIcon:Register("DucksEmotes", Broker_DucksEmotes, Emoticons_Settings["MINIMAPDATA"])
            iconregistered = true
        end
        LDBIcon:Show("DucksEmotes");
    else
        LDBIcon:Hide("DucksEmotes");
    end
end

function Emoticons_SetLargeEmotes(state)
    Emoticons_Settings["LARGEEMOTES"] = state;
end

function Emoticons_SetClickableEmotes(state)
    Emoticons_Settings["CLICKABLEEMOTES"] = state;
end

function Emoticons_InsertEmoticons(msg)
    local normal = '28:28'
    local large = '64:64'
    local xlarge = '128:128'
    local xxlarge = '256:256'
    local delimiters = "%s,%s'%s<%s>%s-%.!"

    for word in string.gmatch(msg, "[^" .. delimiters .. "]+") do
        local emote = emoticons[word]

        if emote ~= nil then
            -- Get the size of the emote, if not a standard size
            size = string.match(defaultpack[emote], ":(.*)")

            -- Make a copy of the file path so we don't modify the original value
            path_and_size = defaultpack[emote]

            -- Check if the user has large emotes enabled. 
            -- If not, replace the size with the standard size of 28:28,
            -- else set it to the standard large size of 64:64
            if not Emoticons_Settings["LARGEEMOTES"] then
                if ( size == 'LARGE' or size == 'XLARGE' or size == 'XXLARGE' ) then
                    path_and_size = string.gsub(defaultpack[emote], size, normal)
                end
            else
                if ( size == 'LARGE' ) then
                    path_and_size = string.gsub(defaultpack[emote], size, large)
                elseif ( size == 'XLARGE' ) then
                    path_and_size = string.gsub(defaultpack[emote], size, xlarge)
                elseif ( size == 'XXLARGE') then
                    path_and_size = string.gsub(defaultpack[emote], size, xxlarge)
                end
            end

            local wrapPattern = "([" .. delimiters .. "]+)"

            if Emoticons_Settings["CLICKABLEEMOTES"] then
				msg = string.gsub(msg, wrapPattern .. word .. wrapPattern, 
				"%1|Htel:".. word .. "|h|T" .. path_and_size .. "|t|h%2");
				msg = string.gsub(msg, wrapPattern .. word .. "$", 
				"%1|Htel:".. word .. "|h|T" .. path_and_size .. "|t|h");
				msg = string.gsub(msg, "^" .. word .. wrapPattern, 
				"|Htel:".. word .. "|h|T" .. path_and_size .. "|t|h%1");
				msg = string.gsub(msg, "^" .. word .. "$", 
				"|Htel:".. word .. "|h|T" .. path_and_size .. "|t|h");
				msg = string.gsub(msg, wrapPattern .. word .. "(%c)", 
				"%1|Htel:".. word .. "|h|T" .. path_and_size .. "|t|h%2");
				msg = string.gsub(msg, wrapPattern .. word .. wrapPattern, 
				"%1|Htel:".. word .. "|h|T" .. path_and_size .. "|t|h%2");
			else
				msg = string.gsub(msg, wrapPattern .. word .. wrapPattern, "%1|T" .. path_and_size .. "|t%2");
				msg = string.gsub(msg, wrapPattern .. word .. "$", "%1|T" .. path_and_size .. "|t");
				msg = string.gsub(msg, "^" .. word .. wrapPattern, "|T" .. path_and_size .. "|t%1");
				msg = string.gsub(msg, "^" .. word .. "$", "|T" .. path_and_size .. "|t");
				msg = string.gsub(msg, wrapPattern .. word .. "(%c)", "%1|T" .. path_and_size .. "|t%2");
				msg = string.gsub(msg, wrapPattern .. word .. wrapPattern, "%1|T" .. path_and_size .. "|t%2");
			end
        end
    end

    return msg;
end

local oldsethyperlink = ItemRefTooltip.SetHyperlink
function ItemRefTooltip:SetHyperlink(link)
	if (string.sub(link, 1, 3) == "tel") then
		-- Capture the 'tel' link clicks (we show a tooltip on hover, so no click handeling is needed)
	else
		oldsethyperlink(self, link)
	end
end

function Emoticons_SetType(chattype, state)
    if (state) then
        state = true;
    else
        state = false;
    end
    if (chattype == "CHAT_MSG_RAID") then
        Emoticons_Settings["CHAT_MSG_RAID_LEADER"] = state;
        Emoticons_Settings["CHAT_MSG_RAID_WARNING"] = state;
    end
    if (chattype == "CHAT_MSG_PARTY") then
        Emoticons_Settings["CHAT_MSG_PARTY_LEADER"] = state;
        Emoticons_Settings["CHAT_MSG_PARTY_GUIDE"] = state;
    end
    if (chattype == "CHAT_MSG_WHISPER") then
        Emoticons_Settings["CHAT_MSG_WHISPER_INFORM"] = state;
    end
    if (chattype == "CHAT_MSG_INSTANCE_CHAT") then
        Emoticons_Settings["CHAT_MSG_INSTANCE_CHAT_LEADER"] = state;
    end
    if (chattype == "CHAT_MSG_BN_WHISPER") then
        Emoticons_Settings["CHAT_MSG_BN_WHISPER_INFORM"] = state;
    end

    Emoticons_Settings[chattype] = state;
    Emoticons_UpdateChatFilters();
end

b = CreateFrame("Button", "TestButton", ChatFrame1, "UIPanelButtonTemplate");

function Emoticons_RegisterPack(name, newEmoticons, pack)
    for k, v in pairs(newEmoticons) do
        emoticons[k] = v
    end

    for k, v in pairs(pack) do
        defaultpack[k] = v
    end
end

-- Dec's Synergy Twitch Emotes support

DucksEmotes = {};

function DucksEmotes:AddCategory(name, emotes)
    -- Initialise the category data (starting with the name)
    local category = {name};

    -- Insert our emotes into the category data
    for _, emote in ipairs(emotes) do
        table.insert(category, emote);
    end

    -- Get the next index in our dropdown options
    local nextCategoryIndex = (#dropdown_options + 1);

    -- Add to the dropdown list
    dropdown_options[nextCategoryIndex] = category;

    -- Ensure it shows up in the list in regards to the favourite filtering
    Emoticons_Settings["FAVEMOTES"][nextCategoryIndex] = true;
end

function DucksEmotes:AddEmote(id, name, path)
    -- Add to the emote store
    defaultpack[id] = path;

    -- Add to the message replacement list
    emoticons[name] = id;
end

local origEnter, origLeave = {}, {}
local GameTooltip = GameTooltip

local function OnHyperlinkEnter(frame, link, ...)
	local linkType, linkContent = link:match("^([^:]+):(.+)")
	if (linkType) then
		if (linkType == "tel") then
			GameTooltip:SetOwner(frame, "ANCHOR_CURSOR");
			GameTooltip:SetText(linkContent, 255, 210, 0);
			GameTooltip:Show();
		end
	end

	if origEnter[frame] then return origEnter[frame](frame, link, ...) end
end

local function OnHyperlinkLeave(frame, ...)
	GameTooltip:Hide()
	
	if origLeave[frame] then return origLeave[frame](frame, ...) end
end

local _G = getfenv(0)

for i=1, NUM_CHAT_WINDOWS do
	local frame = _G["ChatFrame"..i]
	origEnter[frame] = frame:GetScript("OnHyperlinkEnter")
	frame:SetScript("OnHyperlinkEnter", OnHyperlinkEnter)

	origLeave[frame] = frame:GetScript("OnHyperlinkLeave")
	frame:SetScript("OnHyperlinkLeave", OnHyperlinkLeave)
end