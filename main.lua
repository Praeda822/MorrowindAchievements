local sb_achievements = require("sb_achievements.interop")
local pData = require("MAC.playerData")

local function init()
    local iconPath = "Icons\\MAC\\"

    local cats = {
        main = sb_achievements.registerCategory("Main Quest"),
        side = sb_achievements.registerCategory("Side"),
        faction = sb_achievements.registerCategory("Faction"),
        misc = sb_achievements.registerCategory("Miscellaneous")
    }

    --Any Achievements noted with "SB" were created by SafetyBox and were part of The Achievement Framework Example code
    --Main Quest
    --SB
    sb_achievements.registerAchievement {
        id        = "A1_1_1",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "A1_1_FindSpymaster" } >= 1
        end,
        icon      = iconPath .. "icn_A1_1_1.dds",
        colour    = pData.colours.bronze,
        title     = "Ah Yes, We've Been Expecting You", desc = "Complete the character generation.",
    }
    --SB
    sb_achievements.registerAchievement {
        id        = "A1_1_14",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "A1_1_FindSpymaster" } >= 14
        end,
        icon      = iconPath .. "icn_A1_1_14.dds",
        colour    = pData.colours.bronze,
        title     = "By The Emperor", desc = "Begin the main quest.",
    }
    --SB
    sb_achievements.registerAchievement {
        id        = "A2_1_60",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "A2_1_MeetSulMatuul" } >= 60
        end,
        icon      = iconPath .. "icn_A2_1_60.dds",
        colour    = pData.colours.bronze,
        title     = "Nerevar Rising", desc = "Get confirmation that you are not (yet) the Nerevarine.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    --SB
    sb_achievements.registerAchievement {
        id        = "A2_2_50",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "A2_2_6thHouse" } >= 50
        end,
        icon      = iconPath .. "icn_A2_2_50.dds",
        colour    = pData.colours.bronze,
        title     = "Tribe Unmourned", desc = "Learn about the existence of House Dagoth, the former sixth house.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    --SB
    sb_achievements.registerAchievement {
        id        = "A2_3_40",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "A2_3_CorprusCure" } >= 40
        end,
        icon      = iconPath .. "icn_A2_3_40.dds",
        colour    = pData.colours.bronze,
        title     = "The Endling", desc = "Meet Yagrum Bagarn, the last of the Dwemer.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    --SB slightly modified. New Icon and conditions changed so you have to be hort of all three instead of any of the three
    sb_achievements.registerAchievement {
        id        = "B_Hortator",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "B5_RedoranHort" } >= 50 and tes3.getJournalIndex { id = "B6_HlaaluHort" } >= 50 and tes3.getJournalIndex { id = "B7_TelvanniHort" } >= 50
        end,
        icon      = iconPath .. "icn_Hort.dds",
        colour    = pData.colours.bronze,
        title     = "House Father", desc = "Become Hortator of House Redoran, House Hlaalu, and House Telvanni.",
        configDesc = sb_achievements.configDesc.groupHidden
    }

    --SB slightly modified. Conditions changed so you have to be Nerevarine of all three instead of any of the three
    sb_achievements.registerAchievement {
        id        = "B_Nerevarine",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "B1_UnifyUrshilaku" } >= 50 and tes3.getJournalIndex { id = "B2_AhemmusaSafe" } >= 50 and tes3.getJournalIndex { id = "B3_ZainabBride" } >= 50 and tes3.getJournalIndex {id = "B4_KillWarLovers"} >= 55
        end,
        icon      = iconPath .. "icn_B_Nerevarine.dds",
        colour    = pData.colours.bronze,
        title     = "Folk Hero", desc = "Be recognized as the Nerevarine by the Urshilaku, the Ahemmusa, the Zainab, and the Erabenimsun.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    --SB
    sb_achievements.registerAchievement {
        id        = "B8_MeetVivec_34",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "B8_MeetVivec" } >= 34
        end,
        icon      = iconPath .. "icn_B8_MeetVivec_34.dds",
        colour    = pData.colours.bronze,
        title     = "The Warrior Poet", desc = "Meet Vivec, head of the Tribunal.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    sb_achievements.registerAchievement {
        id        = "Tools",
        category  = cats.main,
        configDesc = sb_achievements.configDesc.groupHidden,
        condition = function()
            local myData = pData.getData()
            return tes3.getJournalIndex {id = "C0_Act_C"} == 15 and (tes3.getJournalIndex {id = "B8_MeetVivec"} >= 50 or tes3.getJournalIndex {id = "CX_BackPath"} >= 50) and pData.gotKeening()
        end,
        icon      = iconPath .. "icn_Tools.dds",
        colour    = pData.colours.silver,
        title     = "The Tools Of Godhood", desc = "Collect Wraithguard, Sunder, and Keening."
    }
    sb_achievements.registerAchievement {
        id        = "SecretPath",
        category  = cats.main,
        configDesc = sb_achievements.configDesc.groupHidden,
        condition = function()
                return tes3.getJournalIndex {id = "CX_BackPath"} >= 50 and tes3.getJournalIndex {id = "C3_DestroyDagoth"} >= 20
        end,
        icon      = iconPath .. "icn_SecretPath.dds",
        colour    = pData.colours.plat,
        title     = "Doing It The Hard Way", desc = "Defeat Dagoth Ur using the Jury-Rigged Wraithguard."
    }
    --SB
    sb_achievements.registerAchievement {
        id        = "C3_DestroyDagoth_20",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex { id = "C3_DestroyDagoth" } >= 20
        end,
        icon      = iconPath .. "icn_C3_DestroyDagoth_20.dds",
        colour    = pData.colours.gold,
        title     = "Prophecy Fulfilled", desc = "Defeat Dagoth Ur, and destroy the Heart of Lorkhan.",
        configDesc = sb_achievements.configDesc.groupHidden
    }

    -- TRIBUNAL
    sb_achievements.registerAchievement {
        id        = "ToMournhold",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex {id = "TR_DBAttack"} >= 60
        end,
        icon      = iconPath .. "icn_ToMournhold.dds",
        colour    = pData.colours.bronze,
        title     = "City of Light, City of Magic", desc = "Travel to Mournhold on Morrowind's mainland."
    }
    sb_achievements.registerAchievement {
        id        = "HuntDB",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex {id = "TR_DBHunt"} >= 60
        end,
        icon      = iconPath .. "icn_HuntDB.dds",
        colour    = pData.colours.bronze,
        title     = "Hunted To Hunter", desc = "Find the clue that points to who hired the Dark Brotherhood.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    sb_achievements.registerAchievement {
        id        = "MHAttack",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex {id = "TR_MHAttack"} >= 110
        end,
        icon      = iconPath .. "icn_MHAttack.dds",
        colour    = pData.colours.bronze,
        title     = "Attack On Mournhold", desc = "Rid the Plaza of the strange creatures.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    sb_achievements.registerAchievement {
        id        = "TRBlade",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex {id = "TR_Blade"} >= 100
        end,
        icon      = iconPath .. "icn_TRBlade.dds",
        colour    = pData.colours.silver,
        title     = "Trueflame", desc = "Reforge the ancient blade of Indoril Nerevar.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    sb_achievements.registerAchievement {
        id        = "TRAlmaEnd",
        category  = cats.main,
        condition = function()
            return tes3.getJournalIndex {id = "TR_SothaSil"} >= 100
        end,
        icon      = iconPath .. "icn_TRAlmaEnd.dds",
        colour    = pData.colours.gold,
        title     = "Almalexia's End", desc = "End Almalexia's madness.",
        configDesc = sb_achievements.configDesc.groupHidden
    }

    -- SIDE QUESTS
    -- SB
    sb_achievements.registerAchievement {
        id = "MS_FargothRing",
        category = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "MS_FargothRing" } >= 100
        end,
        icon = iconPath .. "icn_FargothsRing.tga",
        colour = sb_achievements.colours.blue,
        title = "Thank You, Stranger", desc = "Return Fargoth's ring.",
        configDesc = sb_achievements.configDesc.groupHidden
    }

    sb_achievements.registerAchievement {
        id        = "Pilgrimages",
        category  = cats.side,
        condition = function()
            if (tes3.getJournalIndex { id = "TT_fieldsKummu" } >= 100 and tes3.getJournalIndex { id = "TT_StopMoon" } >= 100 and tes3.getJournalIndex { id = "TT_PalaceVivec" } >= 100 and tes3.getJournalIndex { id = "TT_PuzzleCanal" } >= 100 and tes3.getJournalIndex { id = "TT_MaskVivec" } >= 100 and tes3.getJournalIndex { id = "TT_RuddyMan" } >= 100 and tes3.getJournalIndex { id = "TT_GhostGate" } >= 100) then
                return true
            end
        end,
        icon      = iconPath .. "icn_Pilgrimages.dds",
        colour    = pData.colours.bronze,
        title     = "Pilgrim", desc = "Complete the Pilgrimages of the Seven Graces.",
    }
    sb_achievements.registerAchievement {
        id        = "MHActorQuest",
        category  = cats.side,
        condition = function()
            for npc in tes3.player.cell:iterateReferences(tes3.objectType.npc) do
                if (npc.baseObject.id == "meryn othralas") then
                    local Mcontext = npc.context
                    if (tes3.getJournalIndex { id = "MS_Performers" } == 120 and Mcontext.missCounter == 0.0 ) then
                        return true
                    end
                end
            end
        end,
        icon      = iconPath .. "icn_MHActorQuest.dds",
        colour    = pData.colours.silver,
        title     = "Thespian?", desc = "Flawlessly stand in for an ill actor.",
    }
    sb_achievements.registerAchievement {
        id        = "MHBBquest",
        category  = cats.side,
        condition = function()
            for npc in tes3.player.cell:iterateReferences(tes3.objectType.npc) do
                if (npc.baseObject.id == "ignatius_flaccus") then
                    local Mcontext = npc.context
                    if (tes3.getJournalIndex { id = "MS_BattleBots1" } == 80 and Mcontext.PCBotBet == 1000 ) then
                        return true
                    end
                end
            end
        end,
        icon      = iconPath .. "icn_MHBBquest.dds",
        colour    = pData.colours.silver,
        title     = "No Risk No Reward", desc = "Bet, and win, the maximum amount at the Robot Arena.",
    }

    sb_achievements.registerAchievement {
        id        = "ThirskChief",
        category  = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "BM_MeadHall" } == 100 and tes3.getJournalIndex { id = "BM_MeadHall_b" } == 20 and tes3.getJournalIndex { id = "BM_MeadHall_c" } == 20
        end,
        icon      = iconPath .. "icn_ThirskChief.dds",
        colour    = sb_achievements.colours.blue,
        title     = "Bring Me More Mead!", desc = "Complete all Thirsk Mead Hall business as it's Chieftain.",
    }
    sb_achievements.registerAchievement {
        id        = "NakedNords",
        category  = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "MV_AbusedHealer" } >= 75 and tes3.getJournalIndex { id = "MV_RecoverWidowmaker" } >= 70 and tes3.getJournalIndex { id = "MV_ParalyzedBarbarian" } >= 100
        end,
        icon      = iconPath .. "icn_NakedNords.dds",
        colour    = pData.colours.bronze,
        title     = "Why Are You Naked?", desc = "Complete the stories of Vvardenfell's naked Nords.",
    }
    sb_achievements.registerAchievement {
        id        = "GlimpseFuture",
        category  = cats.side,
        configDesc = sb_achievements.configDesc.groupHidden,
        condition = function()
            return tes3.getJournalIndex { id = "BM_SadSeer" } == 110
        end,
        icon      = iconPath .. "icn_GlimpseFuture.dds",
        colour    = pData.colours.silver,
        title     = "A Glimpse Of The Future", desc = "Hear of the coming Oblivion Crisis."
    }
    sb_achievements.registerAchievement {
        id        = "CureWere",
        category  = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "BM_WolfGiver" } >= 120 or tes3.getJournalIndex { id = "BM_WolfGiver_a" } >= 20
        end,
        icon      = iconPath .. "icn_CureWere.dds",
        colour    = pData.colours.silver,
        title     = "A Cure For Lycanthropy", desc = "Cure yourself of the werewolf disease.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    sb_achievements.registerAchievement {
        id        = "Lovers",
        category  = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "EB_Unrequited" } >= 110 and tes3.getJournalIndex { id = "MS_MatchMaker" } == 120 and tes3.getJournalIndex { id = "MV_MissingCompanion" } == 60 and (tes3.getJournalIndex { id = "MV_VictimRomance" } == 100 or tes3.getJournalIndex { id = "MV_VictimRomance" } == 105)
        end,
        icon      = iconPath .. "icn_lovers.dds",
        colour    = pData.colours.bronze,
        title     = "Softy At Heart", desc = "Help the residents of Morrowind find love.",
    }
    sb_achievements.registerAchievement {
        id        = "Daedrashrines",
        category  = cats.side,
        condition = function()
            return tes3.getJournalIndex { id = "DA_Azura" } >= 40 and tes3.getJournalIndex { id = "DA_Boethiah" } >= 70 and tes3.getJournalIndex { id = "DA_Malacath" } >= 70 and tes3.getJournalIndex { id = "DA_Mehrunes" } >= 40 and tes3.getJournalIndex { id = "DA_Mephala" } == 60 and tes3.getJournalIndex { id = "DA_MolagBal" } == 30 and tes3.getJournalIndex { id = "DA_Sheogorath" } == 70
        end,
        icon      = iconPath .. "icn_Daedrashrines.dds",
        colour    = pData.colours.bronze,
        title     = "Servant Of Oblivion", desc = "Complete the tasks of all the Daedra Princes of Morrowind.",
        configDesc = sb_achievements.configDesc.groupHidden
    }
    sb_achievements.registerAchievement {
        id        = "VampQuests",
        category  = cats.side,
        condition = function()
            return (tes3.getJournalIndex { id = "VA_VampChild" } >= 40 and tes3.getJournalIndex { id = "VA_VampHunter" } >= 70) or (tes3.getJournalIndex { id = "VA_VampBlood" } >= 70 and tes3.getJournalIndex { id = "VA_VampCountess" } >= 40) or (tes3.getJournalIndex { id = "VA_VampCult" } == 60 and tes3.getJournalIndex { id = "VA_VampAmulet" } == 30)
        end,
        icon      = iconPath .. "icn_VampQuests.dds",
        colour    = pData.colours.bronze,
        title     = "Clan Vampire", desc = "Complete your clan specific Vampire quests.",
        configDesc = sb_achievements.configDesc.groupHidden
    }

    sb_achievements.registerAchievement {
        id = "MudcrabMerchant",
        category = cats.misc,
        condition = function()
            local mobileList = tes3.findActorsInProximity { reference = tes3.player, range = 512 }
            for _, mobile in ipairs(mobileList) do
                if (mobile.object.baseObject.id == "mudcrab_unique") then
                    return true
                end
            end
            return false
        end,
        icon = iconPath .. "icn_MudcrabMerchant.tga",
        colour = sb_achievements.colours.violet,
        title = "Talking. Mudcrab. Merchant.", desc = "Meet the mudcrab merchant.",
        configDesc = sb_achievements.configDesc.hideDesc,
        lockedDesc = sb_achievements.lockedMessage.psHidden
    }

    sb_achievements.registerAchievement {
        id = "CreeperMerchant",
        category = cats.misc,
        condition = function()
            local mobileList = tes3.findActorsInProximity { reference = tes3.player, range = 512 }
            for _, mobile in ipairs(mobileList) do
                if (mobile.object.baseObject.id == "scamp_creeper") then
                    return true
                end
            end
            return false
        end,
        icon = iconPath .. "icn_Creeper.tga",
        colour = sb_achievements.colours.violet,
        title = "What's a scamp gotta do?", desc = "Meet Creeper.",
        configDesc = sb_achievements.configDesc.hideDesc,
        lockedDesc = sb_achievements.lockedMessage.psHidden
    }
end

local function initializedCallback(e)
    init()
end
event.register("initialized", initializedCallback, { priority = sb_achievements.priority + 1 })
