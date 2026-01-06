# Milepost Mediator

- Quest Giver: Roadling Fen — Whisperline Milepost Shade
- Recommended Level: 7
- Prerequisites: Completion of Q05_Wardstone_Echoes

## Acceptance Dialogue
- Fen taps a resin-stained stamp. "Tolls spike when rumors do. Folks keep shouting instead of hauling."
- "I need proof who's paying, who's dodging, and whose ribbons keep going missing."
- "Bring me signatures, pouches, and a horn test. Then maybe the line calms."
- "Don't let Ril pocket the ribbon again."
- "Mara says tar keeps ink from running; she's right."
- "If the hum shifts, mark it. I track every note." 

## Objectives
- Deliver 1 Resin Scrip IOU Stub to Fen at Whisperline Milepost.
- Return the Milepost Tarred Ribbon to its sapling hook.
- Stamp 6 Whisperline Travel Rations with Fen's seal at Sapstring Crossing.

## Locations Used
- Whisperline Milepost
- Sapstring Crossing
- Chorus Bridge

## Enemies / Targets
- Milepost Whisperer
- Warden Scouts

## Items Involved
- Resin Scrip IOU Stub (Artifact A-025)
- Milepost Tarred Ribbon (Artifact A-029)
- Whisperline Travel Ration

## Turn-in Dialogue
- "Stamped clean. Toll books read better already."
- "Ribbon hangs true. Maybe the whisperer will stop scratching the post." 
- "These rations bear my mark; escorts eat, then move."
- "Take this token. It says you kept the mile honest." 
- "If Ril complains, send him to read the IOU." 
- "Road's quieter when ledgers sing in one voice." 

## Rewards
- 1x Roadling Trade Token
- 1x Ward-Chalk Packet
- 1x Lowlight Shroom Tea
- Reputation: +90 with Roadling Fen's ledgers

## Rumor Tie
- RW-089

## Artifact Tie
- Artifact_Bundle_03.md#a-025-resin-scrip-iou-stub

## Implementation Notes
- IOU stub is delivered item; fail quest if destroyed.
- Ribbon object must be placed on specific hook; if missing, spawns from Fen once per day.
- Travel ration stamping uses interaction near Mara's tent; provides stamped buff item.
- Milepost Whisperer may spawn to contest stamping; defeating it grants bonus rep.
- Group credit for stamping; individual credit for IOU handoff.
