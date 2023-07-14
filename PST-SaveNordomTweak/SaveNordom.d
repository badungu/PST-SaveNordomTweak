
EXTEND_BOTTOM DNORDOM 7
    IF ~Global("Current_Area","GLOBAL",702) InParty("Vhail") !InParty("Nordom") PartyHasItem("cube")~ THEN
    REPLY @0 /* ~"I'm so sorry, Nordom... but I need to take Vhailor out of here, and I don't have room to take everyone."~ */
    GOTO NEWNORDOM-2
 END

APPEND DNORDOM
 IF ~~ THEN BEGIN NEWNORDOM-2
    SAY @1 /* ~Nordom's *kliks* and *whirrrrs* take on a decidedly forlorn tone. "Understood. New parameters accepted. Will seek alternate egress from Curst Underground."  Suddenly, one of Nordom's crossbows starts *chirrupping* and *klikking* madly.  Nordom raises it to his ear for a moment, as if listening. After a moment of this, his *klikking* and *whirring* doubles in intensity, and Nordom exclaims to his crossbow, "Query Accepted. Response: Affirmatory! Dimensional egress indeed possibles!"~ */
    IF ~~ THEN REPLY @2 /* ~"That sounds promising... what sort of egress, Nordom?"~ */ GOTO NEWNORDOM-3
 END

 IF ~~ THEN BEGIN NEWNORDOM-3
    SAY @3 /* ~"Query: Object designated "Modron Cube" still accessible?"~ */
    IF ~~ THEN REPLY @4 /* ~"Ummm... let me look... yes, actually. I have it right here. But I haven't been able to make it work since we left Sigil."~ */ GOTO NEWNORDOM-4
 END

 IF ~~ THEN BEGIN NEWNORDOM-4
    SAY @5 /* ~Nordom *kliks* excitedly upon seeing you bring forth the cube. "Affirmatory. Only attuned can achieve transport to Rubikon's location in Limbo without the accessibility of multidinous portals extant in City: Sigil."~ */
    IF ~~ THEN REPLY @6 /* ~"Hmmm. Could we attune our group so we can use the cube, then?"~ */ GOTO NEWNORDOM-5
 END

 IF ~~ THEN BEGIN NEWNORDOM-5
    SAY @7 /* ~"Query processed. Response: Negatory. Connection to !SOURCE! required for attunement. Only sentients originating from Plane/Mechanus may be so attuned to Rubikon Construct."~ */
    IF ~~ THEN REPLY @8 /* ~"I see. Are *you* attuned, Nordom?"~ */ GOTO NEWNORDOM-6
 END

 IF ~~ THEN BEGIN NEWNORDOM-6
    SAY @9 /* ~"Query processed. Response: Affirmatory! Additional information: Attendant gear spirits also attuned. Action/Suggestion: Nordom and attendant gear spirits transport interdimensionally to Rubikon. Nordom and attendant gear spirits will persist within originating polygonal space designated 'Rubikon Foyer' until Creative Director can return to Sigil and full accessibilities to Rubikon re-established. Query: Action/Suggestion acceptable?"~ */
    IF ~~ THEN REPLY @10 /* ~"Absolutely! What do you need?"~ */ GOTO NEWNORDOM-7
 END

 IF ~~ THEN BEGIN NEWNORDOM-7
    SAY @11 /* ~"Query processed. Response: Only require Object: 'Modron Cube' to establish connection to Rubikon. Additional Information: Non-sentient matter OR sentient matter not originating from Plane/Mechanus will FALSE() transport, remain behind."~ */
    IF ~~ THEN REPLY @12 /* ~"Hmm. On second thought, let's not do this just yet. Talk to you later, Nordom."~ */ EXIT
    IF ~~ THEN REPLY @13 /* ~"I was going to suggest leaving your equipment anyway. We can sort it out when I come for you later. Here's the cube. Farewell, Nordom."~ */ GOTO NEWNORDOM-8
 END

 IF ~~ THEN BEGIN NEWNORDOM-8
    SAY @14 /* ~Nordom *kliks* and *whirrs*, his left eye shutter dropping closed. "Commencing anticipating return of Creative Director and reattachment to larger community with much anticipations!" He accepts the cube from you, and adjusts the small figure's appendages in a fashion you don't recognize, raises his gaze back to you, warbles briefly, then says: "Formulating new Status: Commencing: Hopes for Creative Director's success and safe return. Formulating new Statement: Fare Well." Nordom then blinks out of existence.~ */
    IF ~~ THEN REPLY @15 /* ~"Alright. Welcome aboard again, Vhailor. Let's get going."~ */ DO ~DropInventory() LeaveAreaLUA("AR13FY",%QuoteQuoteComma%[610.657],6)~ EXIT
 END
END
