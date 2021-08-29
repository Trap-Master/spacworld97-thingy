phone: MACRO
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,      REDS_HOUSE_1F,          ANYTIME, MomPhoneCalleeScript,     0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, ROUTE_101,                  0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       ANYTIME, BillPhoneCalleeScript,    0,       BillPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_ELM,      ROUTE_101,                  ANYTIME, ElmPhoneCalleeScript,     0,       ElmPhoneCallerScript
	phone SCHOOLBOY,    JACK1,                 ROUTE_101,             ANYTIME, JackPhoneCalleeScript,    ANYTIME, JackPhoneCallerScript
	phone POKEFANF,     BEVERLY1,              ROUTE_101,             ANYTIME, BeverlyPhoneCalleeScript, ANYTIME, BeverlyPhoneCallerScript
	phone SAILOR,       HUEY1,                 ROUTE_101,     ANYTIME, HueyPhoneCalleeScript,    ANYTIME, HueyPhoneCallerScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone COOLTRAINERM, GAVEN3,                ROUTE_101,                  ANYTIME, GavenPhoneCalleeScript,   ANYTIME, GavenPhoneCallerScript
	phone COOLTRAINERF, BETH1,                 ROUTE_101,                  ANYTIME, BethPhoneCalleeScript,    ANYTIME, BethPhoneCallerScript
	phone BIRD_KEEPER,  JOSE2,                 ROUTE_101,                  ANYTIME, JosePhoneCalleeScript,    ANYTIME, JosePhoneCallerScript
	phone COOLTRAINERF, REENA1,                ROUTE_101,                  ANYTIME, ReenaPhoneCalleeScript,   ANYTIME, ReenaPhoneCallerScript
	phone YOUNGSTER,    JOEY1,                 ROUTE_101,                  ANYTIME, JoeyPhoneCalleeScript,    ANYTIME, JoeyPhoneCallerScript
	phone BUG_CATCHER,  WADE1,                 ROUTE_101,                  ANYTIME, WadePhoneCalleeScript,    ANYTIME, WadePhoneCallerScript
	phone FISHER,       RALPH1,                ROUTE_101,                  ANYTIME, RalphPhoneCalleeScript,   ANYTIME, RalphPhoneCallerScript
	phone PICNICKER,    LIZ1,                  ROUTE_101,                  ANYTIME, LizPhoneCalleeScript,     ANYTIME, LizPhoneCallerScript
	phone HIKER,        ANTHONY2,              ROUTE_101,                  ANYTIME, AnthonyPhoneCalleeScript, ANYTIME, AnthonyPhoneCallerScript
	phone CAMPER,       TODD1,                 ROUTE_101,                  ANYTIME, ToddPhoneCalleeScript,    ANYTIME, ToddPhoneCallerScript
	phone PICNICKER,    GINA1,                 ROUTE_101,                  ANYTIME, GinaPhoneCalleeScript,    ANYTIME, GinaPhoneCallerScript
	phone JUGGLER,      IRWIN1,                ROUTE_101,                  ANYTIME, IrwinPhoneCalleeScript,   ANYTIME, IrwinPhoneCallerScript
	phone BUG_CATCHER,  ARNIE1,                ROUTE_101,                  ANYTIME, ArniePhoneCalleeScript,   ANYTIME, ArniePhoneCallerScript
	phone SCHOOLBOY,    ALAN1,                 ROUTE_101,                  ANYTIME, AlanPhoneCalleeScript,    ANYTIME, AlanPhoneCallerScript
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone LASS,         DANA1,                 ROUTE_101,                  ANYTIME, DanaPhoneCalleeScript,    ANYTIME, DanaPhoneCallerScript
	phone SCHOOLBOY,    CHAD1,                 ROUTE_101,                  ANYTIME, ChadPhoneCalleeScript,    ANYTIME, ChadPhoneCallerScript
	phone POKEFANM,     DEREK1,                ROUTE_101,                  ANYTIME, DerekPhoneCalleeScript,   ANYTIME, DerekPhoneCallerScript
	phone FISHER,       TULLY1,                ROUTE_101,                  ANYTIME, TullyPhoneCalleeScript,   ANYTIME, TullyPhoneCallerScript
	phone POKEMANIAC,   BRENT1,                ROUTE_101,                  ANYTIME, BrentPhoneCalleeScript,   ANYTIME, BrentPhoneCallerScript
	phone PICNICKER,    TIFFANY3,              ROUTE_101,                  ANYTIME, TiffanyPhoneCalleeScript, ANYTIME, TiffanyPhoneCallerScript
	phone BIRD_KEEPER,  VANCE1,                ROUTE_101,                  ANYTIME, VancePhoneCalleeScript,   ANYTIME, VancePhoneCallerScript
	phone FISHER,       WILTON1,               ROUTE_101,                  ANYTIME, WiltonPhoneCalleeScript,  ANYTIME, WiltonPhoneCallerScript
	phone BLACKBELT_T,  KENJI3,                ROUTE_101,                  ANYTIME, KenjiPhoneCalleeScript,   ANYTIME, KenjiPhoneCallerScript
	phone HIKER,        PARRY1,                ROUTE_101,                  ANYTIME, ParryPhoneCalleeScript,   ANYTIME, ParryPhoneCallerScript
	phone PICNICKER,    ERIN1,                 ROUTE_101,                  ANYTIME, ErinPhoneCalleeScript,    ANYTIME, ErinPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_BUENA,    ROUTE_101, ANYTIME, BuenaPhoneCalleeScript,   ANYTIME, BuenaPhoneCallerScript
