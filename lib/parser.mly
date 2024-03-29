%token EQ
%token EOF
%token ID
%token <int> INTEGER 
%token L_BRACE
%token R_BRACE
%token TRIGGER
%token <string> IDEN
%token <bool> BOOL
%token <float> FLOAT
%token <string> STRING

%token <string> TAG 

%token AND 
%token OR 
%token NOT 
%token AVERAGE_MILITANCY 
%token RELIGION  
%token YEAR  
%token MONTH  
%token ALLOW_MULTIPLE_INSTANCES   
%token FIRE_ONLY_ONCE   
%token IS_TRIGGERED_ONLY   
%token MAJOR   
%token IMMEDIATE   
%token CHECK_VARIABLE   
%token WHICH   
%token VALUE   
%token HAS_GLOBAL_FLAG   
%token IS_CANAL_ENABLED   
%token ADMINISTRATION_SPENDING   
%token AI   
%token ALLIANCE_WITH   
%token AVERAGE_CONSCIOUSNESS   
%token BADBOY   
%token BIG_PRODUCER   
%token BLOCKADE   
%token BRIGADES_COMPARE   
%token CAN_NATIONALIZE   
%token CAN_CREATE_VASSALS   
%token CAPITAL   
%token CASUS_BELLI   
%token CITIZENSHIP_POLICY   
%token CIVILIZATION_PROGRESS   
%token CIVILIZED   
%token COLONIAL_NATION   
%token CONSTRUCTING_CB_PROGRESS   
%token CONSTRUCTING_CB_TYPE   
%token CONTROLS   
%token CRIME_FIGHTING   
%token CRISIS_EXIST   
%token CULTURE_HAS_UNION_TAG   
%token DIPLOMATIC_INFLUENCE   
%token WHO   
%token ECONOMIC_POLICY   
%token ECONOMIC_REFORM_NAME   
%token EDUCATION_SPENDING   
%token ELECTION   
%token EXISTS   
%token GOVERNMENT   
%token GREAT_WARS_ENABLED   
%token HAVE_CORE_IN   
%token HAS_COUNTRY_FLAG   
%token HAS_COUNTRY_MODIFIER   
%token HAS_CULTURAL_SPHERE   
%token HAS_LEADER   
%token HAS_RECENTLY_LOST_WAR   
%token HAS_UNCLAIMED_CORES   
%token IDEOLOGY   
%token INDUSTRIAL_SCORE   
%token IN_SPHERE   
%token INVENTION   
%token INVOLVED_IN_CRISIS   
%token IS_CLAIM_CRISIS   
%token IS_CORE   
%token IS_CULTURAL_UNION   
%token IS_CULTURE_GROUP   
%token IS_DISARMED   
%token IS_GREATER_POWER   
%token IS_IDEOLOGY_ENABLED   
%token IS_INDEPENDANT   
%token IS_LIBERATION_CRISIS   
%token IS_MOBILISED   
%token IS_OUR_VASSAL   
%token IS_POSSIBLE_VASSAL   
%token IS_SECONDARY_POWER   
%token IS_SPHERE_LEADER_OF   
%token IS_VASSAL   
%token IS_SUBSTATE   
%token LITERACY   
%token LOST_NATIONAL   
%token MIDDLE_STRATA_EVERYDAY_NEEDS   
%token MIDDLE_STRATA_LIFE_NEEDS   
%token MIDDLE_STRATA_LUXURY_NEEDS   
%token MIDDLE_TAX   
%token MILITARY_ACCESS   
%token MILITARY_REFORM_NAME   
%token MILITARY_SCORE   
%token MILITARY_SPENDING   
%token MONEY   
%token NATIONALVALUE   
%token NATIONAL_PROVINCES_OCCUPIED   
%token NEIGHBOUR   
%token NUM_OF_ALLIES   
%token NUM_OF_CITIES   
%token NUM_OF_PORTS   
%token NUM_OF_REVOLTS   
%token NUMBER_OF_STATES   
%token NUM_OF_SUBSTATES   
%token NUM_OF_VASSALS   
%token NUM_OF_VASSALS_NO_SUBSTATES   
%token OWNS   
%token PART_OF_SPHERE   
%token POLITICAL_MOVEMENT_STRENGTH   
%token POLITICAL_REFORM_NAME   
%token POLITICAL_REFORM_WANT   
%token POOR_STRATA_EVERYDAY_NEEDS   
%token POOR_STRATA_LIFE_NEEDS   
%token POOR_STRATA_LUXURY_NEEDS   
%token POOR_TAX   
%token POP_MAJORITY_CULTURE   
%token POP_MAJORITY_IDEOLOGY   
%token POP_MAJORITY_RELIGION   
%token POP_MILITANCY   
%token PRESTIGE   
%token PRIMARY_CULTURE   
%token ACCEPTED_CULTURE   
%token PRODUCES   
%token RANK   
%token RELATION   
%token RELIGIOUS_POLICY   
%token REVOLT_PERCENTAGE   
%token RICH_STRATA_EVERYDAY_NEEDS   
%token RICH_STRATA_LIFE_NEEDS   
%token RICH_STRATA_LUXURY_NEEDS   
%token RICH_TAX   
%token RULING_PARTY   
%token RULING_PARTY_IDEOLOGY   
%token SLAVERY   
%token SOCIAL_REFORM_NAME   
%token SOCIAL_REFORM_WANT   
%token SOCIAL_SPENDING   
%token STRONGER_ARMY_THAN   
%token SUBSTATE_OF   
%token THIS_CULTURE_UNION   
%token TOTAL_AMOUNT_OF_DIVISIONS   
%token TOTAL_AMOUNT_OF_SHIPS   
%token TOTAL_DEFENSIVES   
%token TOTAL_NUM_OF_PORTS   
%token TOTAL_OFFENSIVES   
%token TOTAL_OF_OURS_SUNK   
%token TAG_COND
%token TOTAL_SEA_BATTLES   
%token TOTAL_SUNK_BY_US   
%token TRADE_POLICY   
%token TRUCE_WITH   
%token UNEMPLOYMENT   
%token UNEMPLOYMENT_BY_TYPE
%token UNIT_HAS_LEADER   
%token UNIT_IN_BATTLE   
%token UPPER_HOUSE   
%token VASSAL_OF   
%token WAR   
%token WAR_EXHAUSTION   
%token WAR_POLICY   
%token WAR_WITH   
%token CAN_BUILD_FACTORY   
%token CONTINENT   
%token CONTROLLED_BY   
%token CONTROLLED_BY_REBELS   
%token COUNTRY_UNITS_IN_PROVINCE   
%token EMPTY   
%token FLASHPOINT_TENSION   
%token HAS_BUILDING   
%token HAS_CULTURE_CORE   
%token HAS_EMPTY_ADJACENT_PROVINCE   
%token HAS_EMPTY_ADJACENT_STATE   
%token HAS_FACTORIES   
%token HAS_NATIONAL_MINORITY   
%token HAS_POP_TYPE   
%token HAS_PROVINCE_FLAG   
%token HAS_PROVINCE_MODIFIER   
%token HAS_RECENT_IMIGRATION   
%token IS_ACCEPTED_CULTURE   
%token IS_BLOCKADED   
%token IS_CAPITAL   
%token IS_COASTAL   
%token IS_COLONIAL   
%token IS_OVERSEAS   
%token IS_PRIMARY_CULTURE   
%token IS_STATE_CAPITAL   
%token IS_STATE_RELIGION   
%token LIFE_RATING   
%token MINORITIES   
%token OWNED_BY   
%token PORT   
%token PROVINCE_CONTROL_DAYS   
%token PROVINCE_ID   
%token REGION   
%token STATE_ID   
%token TERRAIN   
%token TOTAL_POPS   
%token UNITS_IN_PROVINCE   
%token WORK_AVAILABLE   

%token AGREE_WITH_RULING_PARTY   
%token CASH_RESERVES   
%token CONSCIOUSNESS   
%token CULTURE   
%token EVERYDAY_NEEDS   
%token HAS_POP_CULTURE   
%token HAS_POP_RELIGION   
%token LIFE_NEEDS   
%token LUXURY_NEEDS   
%token MILITANCY   
%token SOCIAL_MOVEMENT   
%token STRATA   

%token ASSIMILATE 
%token ANY_OWNED 
%token CONSCIOUSNESS_EFFECT 
%token MILITANCY_EFFECT 
%token LITERACY_EFFECT 
%token ANY_POP_EFFECT 
%token MONEY_EFFECT 
%token MOVE_POP 
%token POP_TYPE 
%token REDUCE_POP 
%token ANY_POP 
%token ADD_CORE 
%token CHANGE_CONTROLLER 
%token CHANGE_PROVINCE_NAME 
%token CHANGE_REGION_NAME 
%token FLASHPOINT_TENSION_EFFECT 
%token FORT 
%token INFRASTRUCTURE  
%token LIFE_RATING_EFFECT 
%token NAVAL_BASE 
%token REMOVE_CORE 
%token REMOVE_PROVINCE_MODIFIER 
%token  RGO_SIZE 
%token SECEDE_PROVINCE 
%token TRADE_GOODS 
%token ACTIVATE_TECHNOLOGY 
%token ADD_ACCEPTED_CULTURE 
%token REMOVE_ACCEPTED_CULTURE 
%token ADD_CRISIS_INTEREST 
%token ADD_CRISIS_TEMPERATURE 
%token BADBOY_EFFECT 
%token BUILD_FACTORY_IN_CAPITAL_STATE 
%token CAPITAL_EFFECT 
%token CIVILIZED_EFFECT 
%token KILL_LEADER 
%token NATIONALVALUE_EFFECT 
%token PLURALITY 
%token PRESTIGE_EFFECT 
%token PRESTIGE_FACTOR 
%token PRIMARY_CULTURE_EFFECT 
%token RELIGION_EFFECT 
%token REMOVE_COUNTRY_MODIFIER_EFFECT 
%token RESEARCH_POINTS 
%token WAR_EXHAUSTION_EFFECT 
%token YEARS_OF_RESEARCH 
%token NATIONALIZE 
%token ECONOMIC_REFORM 
%token ELECTION_EFFECT 
%token ENABLE_IDEOLOGY 
%token GOVERNMENT_EFFECT 
%token IS_SLAVE 
%token MILITARY_REFORM 
%token POLITICAL_REFORM 
%token RULING_PARTY_IDEOLOGY_EFFECT 
%token SOCIAL_REFORM 
%token ANNEX_TO 
%token CREATE_ALLIANCE 
%token CREATE_VASSAL 
%token END_MILITARY_ACCESS 
%token END_WAR 
%token INHERIT 
%token LEAVE_ALLIANCE 
%token MILITARY_ACCESS_EFFECT 
%token NEUTRALITY 
%token RELEASE 
%token RELEASE_VASSAL 
%token WAR_EFFECT 
%token ADD_TAX_RELATIVE_INCOME 
%token TREASURY 
%token CHANGE_TAG 
%token CHANGE_TAG_NO_CORE_SWITCH 
%token CLR_PROVINCE_FLAG 
%token CLR_COUNTRY_FLAG 
%token CLR_GLOBAL_FLAG 
%token SET_PROVINCE_FLAG 
%token SET_COUNTRY_FLAG 
%token SET_GLOBAL_FLAG 

%token COUNTRY_EVENT
%token PROVINCE_EVENT

%type <Types.event> event  
%type <Types.event list> event_list

%start <Types.events> modfile 

%%

modfile: 
    |es = event_list;EOF;{Types.Events(es)} 
    ;    

event_list:
    |e = event; es = event_list {e::es}
    |e = event {[e]}
    ;
event: 
    |COUNTRY_EVENT; EQ;L_BRACE; eml = event_country_member_list; R_BRACE
        {Types.Country_event(eml)}
    |PROVINCE_EVENT; EQ; L_BRACE; eml= event_prov_member_list; R_BRACE 
        {Types.Province_event(eml)}
    ;

event_country_member_list:
    |ev = event_country_member; eml = event_country_member_list{ev::eml}
    |ev = event_country_member {[ev]}
    ;
event_prov_member_list:
    | ev = event_prov_member; eml = event_prov_member_list {ev::eml}
    | ev = event_prov_member {[ev]}
    ;

event_country_member: 
    |ID;EQ;id=INTEGER 
        {Types.Id(id)}
    |TRIGGER;EQ; cb = cond_country_bloc{cb}

event_prov_member: 
    |ID;EQ;id=INTEGER 
        {Types.Id(id)}
    |TRIGGER;EQ; cb = cond_prov_bloc  {cb}

cond_country_bloc: 
    |L_BRACE;cl=cond_country_list;R_BRACE {Types.Trigger(cl)}
    
cond_country_list:
    |c = cond_country; cl = cond_country_list {c::cl}
    |c = cond_country {[c]}

cond_prov_bloc: 
    |L_BRACE;cl=cond_prov_list;R_BRACE {Types.Trigger(cl)}
    
cond_prov_list:
    |c = cond_prov; cl = cond_prov_list {c::cl}
    |c = cond_prov {[c]}
(*Conditions in the country Scope*)
cond:
    |AND;cb=cond_country_list{Types.And(cb)} 
    |OR;cb=cond_country_list{Types.Or(cb)}
    |NOT; cb=cond_country_list{Types.Not(cb)}
    (*broad scope*)
    |TAG_COND; EQ; t=TAG{Types.Tag(t)}
    |AVERAGE_MILITANCY ; EQ;m=INTEGER {Types.Average_militancy(m)}
    |RELIGION  ; EQ;r=IDEN{Types.Religion(r)}
    (*Maybe add year lex token*)
    |YEAR  ; EQ; y=INTEGER{Types.Year(y)}
    |MONTH  ; EQ; m=INTEGER{Types.Month(m)}
    |ALLOW_MULTIPLE_INSTANCES;EQ;b=BOOL
        {Types.Allow_multiple_instances(b)}
    |FIRE_ONLY_ONCE; EQ; b=BOOL{Types.Fire_only_once(b)}
    |IS_TRIGGERED_ONLY; EQ; b=BOOL{Types.Is_triggered_only(b)}
    |MAJOR   ; EQ; b=BOOL{Types.Major(b)}
    (*TODO: after effects*)
    |IMMEDIATE   ; EQ;e=effects{Types.Immediate([e])} 
    |CHECK_VARIABLE   ; EQ;L_BRACE;
        WHICH; EQ;i=IDEN;
        VALUE; EQ;x=INTEGER;
    R_BRACE{Types.Check_variable(i,x)}
    |HAS_GLOBAL_FLAG   ; EQ;i=IDEN{Types.Has_global_flag(i)}
    |IS_CANAL_ENABLED   ; EQ;x=INTEGER{Types.Is_canal_enabled(x)}
cond_country:
    |cond;{$1}
    |ADMINISTRATION_SPENDING; EQ;x=INTEGER
        {Types.Administration_spending(x)}
    |AI; EQ; b=BOOL{Types.Ai(b)}
    (*TODO:THIS,FROM*)
    |ALLIANCE_WITH; EQ; t=TAG {Types.Alliance_with(t)}
    |AVERAGE_CONSCIOUSNESS; EQ; x=INTEGER;
        {Types.Average_consciousness(x)}
    |AVERAGE_MILITANCY; EQ; x = INTEGER
        {Types.Average_militancy(x)}
    |BADBOY; EQ; x = FLOAT{Types.Badboy(x)}
    |BIG_PRODUCER; EQ;i=IDEN{Types.Big_producer(i)}
    |BLOCKADE; EQ; x=FLOAT;{Types.Blockade(x)}
    |BRIGADES_COMPARE; EQ; x=INTEGER;{Types.Brigades_compare(x)}
    |CAN_NATIONALIZE ; EQ; b=BOOL{Types.Can_nationalize(b)}
    |CAN_CREATE_VASSALS; EQ;b=BOOL{Types.Can_create_vassals(b)}
    |CAPITAL   ; EQ;b=IDEN{Types.Capital(b)}
    (*TODO:THIS,FROM*)
    |CASUS_BELLI; EQ;t=TAG{Types.Casus_belli(t)}
    |CITIZENSHIP_POLICY; EQ;i=IDEN{Types.Citizenship_policy(i)}
    |CIVILIZATION_PROGRESS; EQ;f=FLOAT{Types.Civilization_progress(f)}
    |CIVILIZED   ; EQ;b=BOOL{Types.Civilized(b)}
    |COLONIAL_NATION  ; EQ;b=BOOL{Types.Colonial_nation(b)}
    |CONSTRUCTING_CB_PROGRESS; EQ; f=FLOAT
        {Types.Constructing_cb_progress(f)}
    |CONSTRUCTING_CB_TYPE; EQ;i=IDEN{Types.Constructing_cb_type(i)}
    |CONTROLS   ; EQ;i=IDEN{Types.Controls(i)}
    |CRIME_FIGHTING   ; EQ;f=FLOAT{Types.Crime_fighting(f)}
    |CRISIS_EXIST   ; EQ;b=BOOL{Types.Crisis_exist(b)}
    |CULTURE_HAS_UNION_TAG; EQ;b=BOOL{Types.Crisis_exist(b)}
    (*TODO: THIS|FROM*)
    |DIPLOMATIC_INFLUENCE; EQ;L_BRACE;
        WHO;EQ;t=TAG;
        VALUE;EQ;i=INTEGER;
    R_BRACE{Types.Diplomatic_influence(t,i)}
    |ECONOMIC_POLICY; EQ;i=IDEN{Types.Economic_policy(i)}
    |ECONOMIC_REFORM_NAME; EQ;i=IDEN{Types.Economic_reform_name(i)}
    |EDUCATION_SPENDING; EQ;x=FLOAT{Types.Education_spending(x)}
    |ELECTION; EQ; b=BOOL{Types.Election(b)}
    |EXISTS; EQ; t=TAG{Types.Exists(t)}
    |GOVERNMENT; EQ; i=IDEN{Types.Government(i)}
    |GREAT_WARS_ENABLED; EQ; b=BOOL{Types.Great_wars_enabled(b)}
    |HAVE_CORE_IN; EQ; i=IDEN{Types.Have_core_in(i)}
    |HAS_COUNTRY_FLAG; EQ; i=IDEN{Types.Has_country_flag(i)}
    |HAS_COUNTRY_MODIFIER; EQ; i=IDEN{Types.Has_country_modifier(i)}
    |HAS_CULTURAL_SPHERE; EQ; b=IDEN{Types.Has_cultural_sphere(b)}
    |HAS_LEADER; EQ; i=IDEN{Types.Has_leader(i)}
    |HAS_RECENTLY_LOST_WAR; EQ; b=BOOL{Types.Has_recently_lost_war(b)}
    |HAS_UNCLAIMED_CORES; EQ; b=BOOL{Types.Has_unclaimed_cores(b)}
(*  |IDEN; EQ;i=INTEGER ;{Types.} 
    |IDEOLOGY   ; EQ; i=IDEN{Types.Ideology}
*)
    |INDUSTRIAL_SCORE; EQ;i=INTEGER{Types.Industrial_score(i)}
    (*TODO*)
    |IN_SPHERE; EQ; b=TAG{Types.In_sphere(b)}
    |INVENTION; EQ; i=IDEN{Types.Invention(i)}
    |INVOLVED_IN_CRISIS; EQ;b=BOOL{Types.Involved_in_crisis(b)}
    |IS_CLAIM_CRISIS; EQ; b=BOOL{Types.Is_claim_crisis(b)}
    |IS_CORE; EQ; i = IDEN{Types.Is_core(i)}
    |IS_CULTURAL_UNION; EQ; t=TAG{Types.Is_cultural_union(t)}
    |IS_CULTURAL_UNION; EQ; b=BOOL{Types.Is_cultural_union_truth(b)}
    (*TODO:add CULTURE*)
    |IS_CULTURE_GROUP; EQ; b=BOOL{Types.Is_culture_group(b)}
    |IS_DISARMED; EQ;b=BOOL{Types.Is_disarmed(b)}
    |IS_GREATER_POWER; EQ;b=BOOL{Types.Is_greater_power(b)}
    |IS_IDEOLOGY_ENABLED; EQ; i=IDEN{Types.Is_ideology_enabled(i)}
    |IS_INDEPENDANT; EQ; b=BOOL{Types.Is_independant(b)}
    |IS_LIBERATION_CRISIS; EQ; b=BOOL{Types.Is_liberation_crisis(b)}
    |IS_MOBILISED; EQ; b=BOOL{Types.Is_mobilised(b)}
    |IS_OUR_VASSAL; EQ; t=TAG{Types.Is_possible_vassal(t)}
    |IS_POSSIBLE_VASSAL; EQ;t=TAG{Types.Is_possible_vassal(t)}
    |IS_SECONDARY_POWER; EQ;b=BOOL{Types.Is_secondary_power(b)}
    |IS_SPHERE_LEADER_OF; EQ;t=TAG{Types.Is_sphere_leader_of(t)}
    |IS_VASSAL   ; EQ;b=BOOL{Types.Is_vassal(b)}
    |IS_SUBSTATE   ; EQ;b=BOOL{Types.Is_substate(b)}
    |LITERACY   ; EQ;x=INTEGER{Types.Literacy(x)}
    |LOST_NATIONAL   ; EQ;x=INTEGER{Types.Lost_national(x)}
    |MIDDLE_STRATA_EVERYDAY_NEEDS; EQ;f=FLOAT
        {Types.Middle_strata_everyday_needs(f)}
    |MIDDLE_STRATA_LIFE_NEEDS; EQ;f=FLOAT
        {Types.Middle_strata_life_needs(f)}
    |MIDDLE_STRATA_LUXURY_NEEDS; EQ;f=FLOAT
        {Types.Middle_strata_luxury_needs(f)}
    |MIDDLE_TAX; EQ;f=FLOAT{Types.Middle_tax(f)}
    |MILITARY_ACCESS; EQ;t=TAG{Types.Military_access(t)}
    |MILITARY_REFORM_NAME; EQ;i=IDEN{Types.Military_reform_name(i)}
    |MILITARY_SCORE   ; EQ;x=INTEGER{Types.Military_score(x)}
    |MILITARY_SPENDING   ; EQ;x=INTEGER{Types.Military_spending(x)}
    |MONEY   ; EQ; x=INTEGER{Types.Money(x)}
    |NATIONALVALUE; EQ;i=IDEN{Types.Nationalvalue(i)}
    |NATIONAL_PROVINCES_OCCUPIED; EQ;i=INTEGER
        {Types.National_provinces_occupied(i)}
    |NEIGHBOUR; EQ;t=TAG{Types.Neighbour(t)}
    |NUM_OF_ALLIES; EQ;x=INTEGER{Types.Num_of_allies(x)}
    |NUM_OF_CITIES; EQ;x=INTEGER{Types.Num_of_cities(x)}
    |NUM_OF_PORTS; EQ;x=INTEGER{Types.Num_of_ports(x)}
    |NUM_OF_REVOLTS; EQ;x=INTEGER{Types.Num_of_ports(x)}
    |NUMBER_OF_STATES; EQ;x=INTEGER{Types.Number_of_states(x)}
    |NUM_OF_SUBSTATES; EQ;x=INTEGER{Types.Num_of_substates(x)}
    |NUM_OF_VASSALS; EQ;x=INTEGER{Types.Num_of_vassals(x)}
    |NUM_OF_VASSALS_NO_SUBSTATES; EQ;x=INTEGER
        {Types.Num_of_vassals(x)}
    |OWNS; EQ; x=IDEN{Types.Owns(x)}
    |PART_OF_SPHERE; EQ; b=BOOL{Types.Part_of_sphere(b)}
(*    Politcal reforms *)
(*    |PARTY_ISSUE; EQ; f=FLOAT{} *)
    |POLITICAL_MOVEMENT_STRENGTH; EQ; i=INTEGER{Types.Political_movement_strength(i)}
    |POLITICAL_REFORM_WANT; EQ;f=FLOAT{Types.Political_reform_want(f)}
    |POLITICAL_REFORM_NAME; EQ;i=IDEN{Types.Political_reform_name(i)}

    |POOR_STRATA_EVERYDAY_NEEDS; EQ;f=FLOAT;
        {Types.Poor_strata_everyday_needs(f)}
    |POOR_STRATA_LIFE_NEEDS; EQ; f=FLOAT
        {Types.Poor_strata_life_needs(f)}
    |POOR_STRATA_LUXURY_NEEDS; EQ; f=FLOAT
        {Types.Poor_strata_luxury_needs(f)}
    |POOR_TAX; EQ; i=FLOAT{Types.Poor_tax(i)}
    |POP_MAJORITY_CULTURE; EQ;i=IDEN{Types.Pop_majority_culture(i)}
    |POP_MAJORITY_IDEOLOGY; EQ;i=IDEN{Types.Pop_majority_ideology(i)}
    |POP_MAJORITY_RELIGION; EQ;i=IDEN{Types.Pop_majority_religion(i)}
    |POP_MILITANCY; EQ;x=INTEGER{Types.Pop_militancy(x)}
    (*pop_type*)
    |PRESTIGE; EQ; x=INTEGER{Types.Prestige(x)}
    |PRIMARY_CULTURE; EQ; i=IDEN{Types.Primary_culture(i)}
    |ACCEPTED_CULTURE; EQ; i=IDEN{Types.Accepted_culture(i)}
    |PRODUCES; EQ; i=IDEN{Types.Produces(i)}
    |RANK   ; EQ; x=INTEGER{Types.Rank(x)}
    |RELATION   ; EQ;L_BRACE;
        WHO; EQ; i=IDEN;
        VALUE; EQ; x=INTEGER;
    R_BRACE{Types.Relation(i,x)}
    |RELIGIOUS_POLICY; EQ;i=IDEN{Types.Religious_policy(i)}
    |REVOLT_PERCENTAGE; EQ;x=INTEGER{Types.Revolt_percentage(x)}
    |RICH_STRATA_EVERYDAY_NEEDS; EQ;f=FLOAT{Types.Rich_strata_everyday_needs(f)}
    |RICH_STRATA_LIFE_NEEDS; EQ;f=FLOAT{Types.Rich_strata_life_needs(f)}
    |RICH_STRATA_LUXURY_NEEDS; EQ;f=FLOAT{Types.Rich_strata_luxury_needs(f)}
    |RICH_TAX; EQ;f=FLOAT{Types.Rich_strata_luxury_needs(f)}
    |RULING_PARTY; EQ;i=IDEN{Types.Ruling_party(i)}
    |RULING_PARTY_IDEOLOGY; EQ;i=IDEN{Types.Ruling_party(i)}
    |SLAVERY; EQ;b=BOOL{Types.Slavery(b)}
   (* |SOCIAL_MOVEMENT *)
    |SOCIAL_REFORM_NAME; EQ; i=IDEN{Types.Social_reform_name(i)}
    |SOCIAL_REFORM_WANT; EQ; f=FLOAT{Types.Social_reform_want(f)}
    |SOCIAL_SPENDING   ; EQ; f=FLOAT{Types.Social_spending(f)}
    |STRONGER_ARMY_THAN; EQ; i=IDEN{Types.Stronger_army_than(i)}
    |SUBSTATE_OF; EQ; i=IDEN{Types.Substate_of(i)}
    |THIS_CULTURE_UNION; EQ; i=IDEN{Types.This_culture_union(i)}
    |TOTAL_AMOUNT_OF_DIVISIONS; EQ; x=INTEGER{Types.Total_amount_of_divisions(x)}
    |TOTAL_AMOUNT_OF_SHIPS; EQ; x=INTEGER{Types.Total_amount_of_ships(x)}
    |TOTAL_DEFENSIVES   ; EQ; x=INTEGER{Types.Total_defensives(x)}
    |TOTAL_NUM_OF_PORTS   ; EQ; x=INTEGER{Types.Total_num_of_ports(x)}
    |TOTAL_OFFENSIVES   ; EQ; x=INTEGER {Types.Total_offensives(x)}
    |TOTAL_OF_OURS_SUNK   ; EQ;x=INTEGER{Types.Total_of_ours_sunk(x)}
    |TOTAL_SEA_BATTLES   ; EQ;x=INTEGER{Types.Total_sea_battles(x)}
    |TOTAL_SUNK_BY_US   ; EQ;x=INTEGER{Types.Total_sunk_by_us(x)}
    |TRADE_POLICY   ; EQ;i=IDEN{Types.Trade_policy(i)}
    |TRUCE_WITH   ; EQ;t=TAG{Types.Truce_with(t)}
    |UNEMPLOYMENT   ; EQ;x=INTEGER{Types.Unemployment(x)}
    (*come back to *)
    |UNEMPLOYMENT_BY_TYPE; EQ;i=IDEN;f=FLOAT{Types.Unemployment_by_type(i,f) } 
    |UNIT_HAS_LEADER   ; EQ;b=BOOL{Types.Unit_has_leader(b)}
    |UNIT_IN_BATTLE   ; EQ;b=BOOL{Types.Unit_in_battle(b)}
    |UPPER_HOUSE   ; EQ; L_BRACE;
        IDEOLOGY; EQ; i=IDEN;
        VALUE; EQ; f=FLOAT; 
    R_BRACE{Types.Upper_house(i,f)}
    |VASSAL_OF ; EQ; t=TAG{Types.Vassal_of(t)}
    |WAR; EQ; b=BOOL{Types.War(b)}
    |WAR_EXHAUSTION; EQ; x=INTEGER{Types.War_exhaustion(x)}
    |WAR_POLICY; EQ; i=IDEN{Types.War_policy(i)}
    |WAR_WITH; EQ; t=TAG{Types.War_with(t)}
    
cond_prov:
    |AVERAGE_CONSCIOUSNESS; EQ; i=INTEGER{Types.Average_consciousness(i)} 
    |AVERAGE_MILITANCY; EQ; i=INTEGER{Types.(Average_militancy(i))}
    |CAN_BUILD_FACTORY ; EQ; b=BOOL{Types.Can_build_factory(b)}
    |CONTINENT; EQ; i=IDEN{Types.Continent(i)}
    |CONTROLLED_BY; EQ; t=TAG{Types.Controlled_by(t)}
    |CONTROLLED_BY_REBELS; EQ; b=BOOL{Types.Controlled_by_rebels(b)}
    |COUNTRY_UNITS_IN_PROVINCE; EQ; t=TAG{Types.Country_units_in_province(t)}
    |CRIME_FIGHTING; EQ; f=FLOAT{Types.Crime_fighting(f)}
    |EDUCATION_SPENDING; EQ; x=FLOAT{Types.Education_spending(x)}
    |EMPTY; EQ; b=BOOL{Types.Empty(b)}
    |FLASHPOINT_TENSION; EQ; x=INTEGER{Types.Flashpoint_tension(x)}
    |HAS_BUILDING; EQ;i=IDEN{Types.Has_building(i)}
    |HAS_CULTURE_CORE; EQ; b=BOOL{Types.Has_culture_core(b)}
    |HAS_EMPTY_ADJACENT_PROVINCE; EQ; b=BOOL{Types.Has_empty_adjacent_province(b)}
    |HAS_EMPTY_ADJACENT_STATE   ; EQ; b=BOOL{Types.Has_empty_adjacent_state(b)}
    |HAS_FACTORIES; EQ;b=BOOL{Types.Has_factories(b)}
    |HAS_NATIONAL_MINORITY; EQ; b=BOOL{Types.Has_national_minority(b)}
    |HAS_POP_TYPE; EQ; i=IDEN{Types.Has_pop_type(i)}
    |HAS_PROVINCE_FLAG; EQ; i=IDEN{Types.Has_province_flag(i)}
    |HAS_PROVINCE_MODIFIER; EQ; i=IDEN{Types.Has_province_modifier(i)}
    |HAS_RECENT_IMIGRATION; EQ; x=INTEGER{Types.Has_recent_imigration(x)}
    |IS_ACCEPTED_CULTURE; EQ; b=BOOL{Types.Is_accepted_culture(b)}
    |IS_BLOCKADED   ; EQ; b=BOOL{Types.Is_blockaded(b)}
    |IS_CAPITAL   ; EQ; b=BOOL{Types.Is_capital(b)}
    |IS_COASTAL   ; EQ; b=BOOL{Types.Is_coastal(b)}
    |IS_COLONIAL   ; EQ; b=BOOL{Types.Is_colonial(b)}
    |IS_CORE; EQ; t=TAG {Types.Is_core(t)} 
    |IS_IDEOLOGY_ENABLED; EQ;i=IDEN{Types.Is_ideology_enabled(i)}
    |IS_OVERSEAS   ; EQ; b=BOOL {Types.Is_overseas(b)}
    |IS_PRIMARY_CULTURE; EQ; b=BOOL {Types.Is_primary_culture(b)}
    |IS_STATE_CAPITAL; EQ; b=BOOL {Types.Is_state_capital(b)}
    |IS_STATE_RELIGION; EQ; b=BOOL  {Types.Is_state_religion(b)}
    |LIFE_RATING; EQ; i=INTEGER {Types.Life_rating(i)}
    |LITERACY; EQ; i=INTEGER {Types.Literacy(i)} 
    |MILITARY_SPENDING; EQ; x=INTEGER {Types.Military_spending(x)}
    |MINORITIES; EQ; b=BOOL{Types.Minorities(b)}
    |OWNED_BY   ; EQ; t=TAG {Types.Owned_by(t)}
    |POP_MILITANCY; EQ; x=INTEGER{Types.Pop_militancy(x)}
    |PORT; EQ; b=BOOL{Types.Port(b)}
    |PROVINCE_CONTROL_DAYS; EQ;x=INTEGER{Types.Province_control_days(x)}
    |PROVINCE_ID; EQ;x=IDEN{Types.Province_id(x)}
    |REGION; EQ;i=IDEN{Types.Region(i)}
    |STATE_ID; EQ;i=IDEN{Types.State_id(i)}
    |TERRAIN   ; EQ;i=IDEN{Types.Terrain(i)}
    (*|TRADE_GOODS*)
    |TOTAL_POPS   ; EQ;i=IDEN{Types.Total_pops(i)}
    |UNEMPLOYMENT; EQ; f=INTEGER{Types.Unemployment(f)}
   (*UNEMPLOYMENT_BY_TYPE*) 
(*    |UNITS_IN_PROVINCE; EQ;x=INTEGER{Types.Un}*)
   (* |WORK_AVAILABLE; EQ;L_BRACE;WORKER{Types.} *)
pop_cond_country:
    |AGREE_WITH_RULING_PARTY; EQ;f=FLOAT{Types.Agree_with_ruling_party(a)}
    |CASH_RESERVES; EQ; f=FLOAT{Types.Cash_reserves(f)}
    |CONSCIOUSNESS; EQ; f=INTEGER{Types.Consciousness(f)}
    |CULTURE; EQ; i=IDEN{Types.Culture(i)}
    |EVERYDAY_NEEDS; EQ; n=INTEGER{Types.EVERYDAY_NEEDS(n)}
    |HAS_POP_CULTURE; EQ; L_BRACE
        i=IDEN;
        i2=IDEN; R_BRACE
    {Types.Has_pop_culture(i,i2)}
    |HAS_POP_RELIGION   ;  EQ; L_BRACE
        i=IDEN;
        i2=IDEN; R_BRACE
    {Types.Has_pop_religion(i,i2)}
    |SOCIAL_MOVEMENT; EQ; b=BOOL{Types.Social_movement(b)}
    |LIFE_NEEDS; EQ; n=INTEGER{Types.Life_needs(n)}
    |LUXURY_NEEDS; EQ; n=INTEGER{Types.Life_needs(n)}
    |MILITANCY; EQ; n=INTEGER{Types.Militancy(n)}
    |STRATA; EQ; i=IDEN{Types.Strata(i)}


effects :

|ASSIMILATE; EQ; b=BOOL {                    	Types.Assimilate(b) }
|ANY_OWNED; EQ; i=IDEN; b=BOOL {             	Types.Any_owned(i,b)}
|CONSCIOUSNESS_EFFECT; EQ; n=INTEGER {       	Types.Consciousness_effect(n)}
|MILITANCY_EFFECT; EQ; n=INTEGER {           	Types.Militancy_effect(n)}
|LITERACY_EFFECT; EQ; n=INTEGER {            	Types.Literacy_effect(n)}
|ANY_POP_EFFECT; EQ; i=IDEN f=FLOAT{         	Types.Any_pop_effect(i,f)  }
|MONEY_EFFECT; EQ; n=INTEGER {               	Types.Money_effect(n)}
|MOVE_POP; EQ; i=IDEN {                      	Types.Move_pop(i)}
|POP_TYPE; EQ; i=IDEN {                      	Types.Pop_type(i)}
|REDUCE_POP; EQ; n=INTEGER {                 	Types.Reduce_pop(n)}
|ANY_POP; EQ; i=IDEN; f=FLOAT {              	Types.Any_pop(i,f)}
|ADD_CORE; EQ; i=IDEN {                      	Types.Add_core(i)}
|CHANGE_CONTROLLER; EQ; i=IDEN {             	Types.Change_controller(i)}
|CHANGE_PROVINCE_NAME; EQ; i=IDEN {          	Types.Change_province_name(i)}
|CHANGE_REGION_NAME; EQ; i=IDEN {            	Types.Change_region_name(i)}
|FLASHPOINT_TENSION_EFFECT; EQ; n=INTEGER {  	Types.Flashpoint_tension_effect(n)}
|FORT; EQ; n=INTEGER {                       	Types.Fort(n)}
|INFRASTRUCTURE ; EQ; n=INTEGER {            	Types.Infrastructure (n)}
|LIFE_RATING_EFFECT; EQ; n=INTEGER {         	Types.Life_rating_effect(n)}
|NAVAL_BASE; EQ; n=INTEGER {                 	Types.Naval_base(n)}
|REMOVE_CORE; EQ; i=IDEN {                   	Types.Remove_core(i)}
|REMOVE_PROVINCE_MODIFIER; EQ; i=IDEN {      	Types.Remove_province_modifier(i)}
| RGO_SIZE; EQ; n=INTEGER {                  	Types.RGO_size(n)}
|SECEDE_PROVINCE; EQ; i=IDEN {               	Types.Secede_province(i)}
|TRADE_GOODS; EQ; i=IDEN {                   	Types.Trade_goods(i)}
|ACTIVATE_TECHNOLOGY; EQ; i=IDEN {           	Types.Activate_technology(i)}
|ADD_ACCEPTED_CULTURE; EQ; i=IDEN {          	Types.Add_accepted_culture(i)}
|REMOVE_ACCEPTED_CULTURE; EQ; i=IDEN {       	Types.Remove_accepted_culture(i)}
|ADD_CRISIS_INTEREST; EQ; b=BOOL {           	Types.Add_crisis_interest(b)}
|ADD_CRISIS_TEMPERATURE; EQ; n=INTEGER {     	Types.Add_crisis_temperature(n)}
|BADBOY_EFFECT; EQ; n=INTEGER {              	Types.Badboy_effect(n)}
|BUILD_FACTORY_IN_CAPITAL_STATE; EQ; i=IDEN {	Types.Build_factory_in_capital_state(i)}
|CAPITAL_EFFECT; EQ; i=IDEN {                	Types.Capital_effect(i)}
|CIVILIZED_EFFECT; EQ; b=BOOL {              	Types.Civilized_effect(b)}
|KILL_LEADER; EQ; i=IDEN {                   	Types.Kill_leader(i)}
|NATIONALVALUE_EFFECT; EQ; i=IDEN {          	Types.Nationalvalue_effect(i)}
|PLURALITY; EQ; n=INTEGER {                  	Types.Plurality(n)}
|PRESTIGE_EFFECT; EQ; n=INTEGER {            	Types.Prestige_effect(n)}
|PRESTIGE_FACTOR; EQ; n=INTEGER {            	Types.Prestige_factor(n)}
|PRIMARY_CULTURE_EFFECT; EQ; i=IDEN {        	Types.Primary_culture_effect(i)}
|RELIGION_EFFECT; EQ; i=IDEN {               	Types.Religion_effect(i)}
|REMOVE_COUNTRY_MODIFIER_EFFECT; EQ; i=IDEN {	Types.Remove_country_modifier_effect(i)}
|RESEARCH_POINTS; EQ; n=INTEGER {            	Types.Research_points(n)}
|WAR_EXHAUSTION_EFFECT; EQ; n=INTEGER {      	Types.War_exhaustion_effect(n)}
|YEARS_OF_RESEARCH; EQ; n=INTEGER {          	Types.Years_of_research(n)}
|NATIONALIZE; EQ; b=BOOL {                   	Types.Nationalize(b)}
|ECONOMIC_REFORM; EQ; i=IDEN {               	Types.Economic_reform(i)}
|ELECTION_EFFECT; EQ; b=BOOL {               	Types.Election_effect(b) }
|ENABLE_IDEOLOGY; EQ; i=IDEN {               	Types.Enable_ideology(i)}
|GOVERNMENT_EFFECT; EQ; i=IDEN {             	Types.Government_effect(i)}
|IS_SLAVE; EQ; i=IDEN {                      	Types.Is_slave(i)}
|MILITARY_REFORM; EQ; i=IDEN {               	Types.Military_reform(i)}
|POLITICAL_REFORM; EQ; i=IDEN {              	Types.Political_reform(i)}
|RULING_PARTY_IDEOLOGY_EFFECT; EQ; i=IDEN {  	Types.Ruling_party_ideology_effect(i)}
|SOCIAL_REFORM; EQ; i=IDEN {                 	Types.Social_reform(i)}
|ANNEX_TO; EQ; i=IDEN {                      	Types.Annex_to(i)}
|CREATE_ALLIANCE; EQ; i=IDEN {               	Types.Create_alliance(i)}
|CREATE_VASSAL; EQ; i=IDEN {                 	Types.Create_vassal(i)}
|END_MILITARY_ACCESS; EQ; i=IDEN {           	Types.End_military_access(i)}
|END_WAR; EQ; i=IDEN {                       	Types.End_war(i)}
|INHERIT; EQ; i=IDEN {                       	Types.Inherit(i)}
|LEAVE_ALLIANCE; EQ; i=IDEN {                	Types.Leave_alliance(i)}
|MILITARY_ACCESS_EFFECT; EQ; i=IDEN {        	Types.Military_access_effect(i)}
|NEUTRALITY; EQ; b=BOOL {                    	Types.Neutrality(b)}
|RELEASE; EQ; i=IDEN {                       	Types.Release(i)}
|RELEASE_VASSAL; EQ; i=IDEN {                	Types.Release_vassal(i)}
|WAR_EFFECT; EQ; i=IDEN {                    	Types.War_effect(i)}
|ADD_TAX_RELATIVE_INCOME; EQ; n=INTEGER {    	Types.Add_tax_relative_income(n)}
|TREASURY; EQ; n=INTEGER {                   	Types.Treasury(n)}
|CHANGE_TAG; EQ; i=IDEN {                    	Types.Change_tag(i)}
|CHANGE_TAG_NO_CORE_SWITCH; EQ; i=IDEN {     	Types.Change_tag_no_core_switch(i)}
|CLR_PROVINCE_FLAG; EQ; i=IDEN {             	Types.Clr_province_flag(i)}
|CLR_COUNTRY_FLAG; EQ; i=IDEN {              	Types.Clr_country_flag(i)}
|CLR_GLOBAL_FLAG; EQ; i=IDEN {               	Types.Clr_global_flag(i)}
|SET_PROVINCE_FLAG; EQ; i=IDEN {             	Types.Set_province_flag(i)}
|SET_COUNTRY_FLAG; EQ; i=IDEN {              	Types.Set_country_flag(i)}
|SET_GLOBAL_FLAG; EQ; i=IDEN {               	Types.Set_global_flag(i)}
