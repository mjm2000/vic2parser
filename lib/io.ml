open List
open Types
open Printf

let rec cond_str  cond =  match cond with
    |And(ls)-> 
        String.concat "" ("And":: (map (cond_str ) ls) )
    |Or(ls) -> String.concat " "  ("OR"::(map (cond_str ) ls))

    |Not(ls)-> String.concat "NOT "  ("AND" :: (map (cond_str ) ls) ) 
    |Average_consciousness(x)->	String.concat "" ["Average_consciousness " ; string_of_int x]
    |Average_militancy(x)->	String.concat "" ["Average_militancy " ; string_of_int x]
    |Religion(x)->	String.concat "" ["Religion " ; x]
    |Year(x)-> sprintf "year %i" x
    |Month(x)->	String.concat "" ["Month " ; string_of_int x]
(*    |Allow_multiple_instances(x)->	String.concat "" ["Allow_multiple_instances " ; string_of_bool x]
    *)
    |Fire_only_once(x)->	String.concat "" ["Fire_only_once " ; string_of_bool x]
    |Is_triggered_only (x)->	String.concat "" ["Is_triggered_only  " ; string_of_bool x]
    |Major(x)->	String.concat "" ["Major " ; string_of_bool x]
    |Immediate(_)->	String.concat "" ["Immediate"]
    |Check_variable(x,y)->	String.concat "" ["Check_variable " ; x; string_of_int y]
    |Has_global_flag(x)->	String.concat "" ["Has_global_flag " ; x]
    |Is_canal_enabled(x)->	String.concat "" ["Is_canal_enabled " ; string_of_int x]
    |Administration_spending(x)->	String.concat "" ["Administration_spending " ; string_of_int x]
    |Ai(x)->	String.concat "" ["Ai " ; string_of_bool x]
    |Alliance_with(x)->	String.concat "" ["Alliance_with " ; x]
    |Badboy(x)->	String.concat "" ["Badboy " ; string_of_float x]
    |Big_producer(x)->	String.concat "" ["Big_producer " ; x]
    |Blockade(x)->	String.concat "" ["Blockade " ; string_of_float x]
    |Brigades_compare(x)->	String.concat "" ["Brigades_compare " ; string_of_int x]
    |Can_nationalize(x)->	String.concat "" ["Can_nationalize " ; string_of_bool x]
    |Can_create_vassals(x)->	String.concat "" ["Can_create_vassals " ; string_of_bool x]
    |Capital(x)->	String.concat "" ["Capital " ; x]
    |Casus_belli(x)->	String.concat "" ["Casus_belli " ; x]
    |Citizenship_policy(x)->	String.concat "" ["Citizenship_policy " ; x]
    |Civilization_progress(x)->	String.concat "" ["Civilization_progress " ; string_of_float x]
    |Civilized(x)->	String.concat "" ["Civilized " ; string_of_bool x]
    |Colonial_nation(x)->	String.concat "" ["Colonial_nation " ; string_of_bool x]
    |Constructing_cb_progress(x)->	String.concat "" ["Constructing_cb_progress " ; string_of_float x]
    |Constructing_cb_type(x)->	String.concat "" ["Constructing_cb_type " ; x]
    |Controls(x)->	String.concat "" ["Controls " ; x]
    |Crime_fighting(x)->	String.concat "" ["Crime_fighting " ; string_of_float x]
    |Crisis_exist(x)->	String.concat "" ["Crisis_exist"  ; string_of_bool x]
    |Culture_has_union_tag(x)->	String.concat "" ["Culture_has_union_tag " ; string_of_bool x]
    |Diplomatic_influence(x,y)->	String.concat "" ["Diplomatic_influence " ; x; " ";string_of_int y]
    |Economic_policy(x)->	String.concat "" ["Economic_policy " ; x]
    |Economic_reform_name(x)->	String.concat "" ["Economic_reform_name " ; x]
    |Election(x)->	String.concat "" ["Election " ; string_of_bool x]
    |Exists(x)->	String.concat "" ["Exists " ; x]
    |Government(x)->	String.concat "" ["Government " ; x]
    |Great_wars_enabled(x)->	String.concat "" ["Great_wars_enabled " ; string_of_bool x]
    |Have_core_in(x)->	String.concat "" ["Have_core_in " ; x]
    |Has_country_flag(x)->	String.concat "" ["Has_country_flag " ; x]
    |Has_country_modifier(x)->	String.concat "" ["Has_country_modifier " ; x]
    |Has_cultural_sphere(x)->	String.concat "" ["Has_cultural_sphere " ; x]
    |Has_leader(x)->	String.concat "" ["Has_leader " ; x]
    |Has_recently_lost_war(x)->	String.concat "" ["Has_recently_lost_war " ; string_of_bool x]
    |Has_unclaimed_cores(x)->	String.concat "" ["Has_unclaimed_cores " ; string_of_bool x]
    |Ideology(x,y)->	String.concat "" ["Ideology " ; x;" ";string_of_int y]
    |Industrial_score(x)->	String.concat "" ["Industrial_score " ; string_of_int x]
    |In_sphere(x)->	String.concat "" ["In_sphere " ; x]
    |Invention(x)->	String.concat "" ["Invention " ; x]
    |Involved_in_crisis(x)->	String.concat "" ["Involved_in_crisis " ; string_of_bool x]
    |Is_claim_crisis(x)->	String.concat "" ["Is_claim_crisis " ; string_of_bool x]
    |Is_cultural_union(x)->	String.concat "" ["Is_cultural_union " ; x]
    |Is_cultural_union_truth(x)->	String.concat "" ["Is_cultural_union_truth " ; string_of_bool x]
    |Is_culture_group(x)->	String.concat "" ["Is_culture_group " ; string_of_bool x]
    |Is_disarmed(x)->	String.concat "" ["Is_disarmed " ; string_of_bool x]
    |Is_greater_power(x)->	String.concat "" ["Is_greater_power " ; string_of_bool x]
    |Is_independant(x)->	String.concat "" ["Is_independant " ; string_of_bool x]
    |Is_liberation_crisis(x)->	String.concat "" ["Is_liberation_crisis " ; string_of_bool x]
    |Is_mobilised(x)->	String.concat "" ["Is_mobilised " ; string_of_bool x]
    |Is_our_vassal(x)->	String.concat "" ["Is_our_vassal " ; x]
    |Is_possible_vassal(x)->	String.concat "" ["Is_possible_vassal " ; x]
    |Is_secondary_power(x)->	String.concat "" ["Is_secondary_power " ; string_of_bool x]
    |Is_sphere_leader_of(x)->	String.concat "" ["Is_sphere_leader_of " ; x]
    |Is_vassal(x)->	String.concat "" ["Is_vassal " ; string_of_bool x]
    |Is_substate(x)->	String.concat "" ["Is_substate " ; string_of_bool x]
    |Lost_national(x)->	String.concat "" ["Lost_national " ; string_of_int x]
    |Middle_strata_everyday_needs (x)->	String.concat "" ["Middle_strata_everyday_needs  " ; string_of_float x]
    |Middle_strata_life_needs(x)->	String.concat "" ["Middle_strata_life_needs " ; string_of_float x]
    |Middle_strata_luxury_needs(x)->	String.concat "" ["Middle_strata_luxury_needs " ; string_of_float x]
    |Middle_tax(x)->	String.concat "" ["Middle_tax " ; string_of_float x]
    |Military_access(x)->	String.concat "" ["Military_access " ; x]
    |Military_reform_name(x)->	String.concat "" ["Military_reform_name " ; x]
    |Military_score(x)->	String.concat "" ["Military_score " ; string_of_int x]
    |Military_score_tag(x)->	String.concat "" ["Military_score_tag " ; string_of_int x]
    |Money(x)->	String.concat "" ["Money " ; string_of_int x]
    |Nationalvalue(x)->	String.concat "" ["Nationalvalue " ; x]
    |National_provinces_occupied(x)->	String.concat "" ["National_provinces_occupied " ; string_of_int x]
    |Neighbour(x)->	String.concat "" ["Neighbour " ; x]
    |Num_of_allies(x)->	String.concat "" ["Num_of_allies " ; string_of_int x]
    |Num_of_cities(x)->	String.concat "" ["Num_of_cities " ; string_of_int x]
    |Num_of_ports(x)->	String.concat "" ["Num_of_ports " ; string_of_int x]
    |Num_of_revolts(x)->	String.concat "" ["Num_of_revolts " ; string_of_int x]
    |Number_of_states(x)->	String.concat "" ["Number_of_states " ; string_of_int x]
    |Num_of_substates(x)->	String.concat "" ["Num_of_substates " ; string_of_int x]
    |Num_of_vassals(x)->	String.concat "" ["Num_of_vassals " ; string_of_int x]
    |Num_of_vassals_no_substates(x)->	String.concat "" ["Num_of_vassals_no_substates " ; string_of_int x]
    |Owns(x)->	String.concat "" ["Owns " ; x]
    |Part_of_sphere(x)->	String.concat "" ["Part_of_sphere " ; string_of_bool x]
    |Political_movement_strength(x)->	String.concat "" ["Political_movement_strength " ; string_of_int x]
    
    |Political_reform_name(x)->	String.concat "" ["Political_reform_name " ;  x]
    |Political_reform_want(x)->	String.concat "" ["Political_reform_want " ; string_of_float x]
    |Poor_strata_everyday_needs(x)->	String.concat "" ["Poor_strata_everyday_needs " ; string_of_float x]
    |Poor_strata_life_needs(x)->	String.concat "" ["Poor_strata_life_needs " ; string_of_float x]
    |Poor_strata_luxury_needs(x)->	String.concat "" ["Poor_strata_luxury_needs " ; string_of_float x]
    |Poor_tax(x)->	String.concat "" ["Poor_tax " ; string_of_float x]
    |Pop_majority_culture(x)->	String.concat "" ["Pop_majority_culture " ; x]
    |Pop_majority_ideology(x)->	String.concat "" ["Pop_majority_ideology " ; x]
    |Pop_majority_religion(x)->	String.concat "" ["Pop_majority_religion " ; x]
    |Prestige(x)->	String.concat "" ["Prestige " ; string_of_int x]
    |Primary_culture(x)->	String.concat "" ["Primary_culture " ; x]
    |Accepted_culture(x)->	String.concat "" ["Accepted_culture " ; x]
    |Produces(x)->	String.concat "" ["Produces " ; x]
    |Rank(x)->	String.concat "" ["Rank " ; string_of_int x]
    |Relation(x,y)->	String.concat "" ["Relation " ; x;" ";string_of_int y]
    |Religious_policy(x)->	String.concat "" ["Religious_policy " ; x]
    |Revolt_percentage(x)->	String.concat "" ["Revolt_percentage " ; string_of_int x]
    |Rich_strata_everyday_needs(x)->	String.concat "" ["Rich_strata_everyday_needs " ; string_of_float x]
    |Rich_strata_life_needs(x)->	String.concat "" ["Rich_strata_life_needs " ; string_of_float x]
    |Rich_strata_luxury_needs(x)->	String.concat "" ["Rich_strata_luxury_needs " ; string_of_float x]
    |Rich_tax(x)->	String.concat "" ["Rich_tax " ; string_of_float x]
    |Ruling_party(x)->	String.concat "" ["Ruling_party " ; x]
    |Ruling_party_ideology(x)->	String.concat "" ["Ruling_party_ideology " ; x]
    |Slavery(x)->	String.concat "" ["Slavery " ; string_of_bool x]
    |Social_reform_name(x)->	String.concat "" ["Social_reform_name " ; x]
    |Social_reform_want(x)->	String.concat "" ["Social_reform_want " ; string_of_float x]
    |Social_spending(x)->	String.concat "" ["Social_spending " ; string_of_float x]
    |Stronger_army_than(x)->	String.concat "" ["Stronger_army_than " ; x]
    |Substate_of(x)->	String.concat "" ["Substate_of " ; x]
    |This_culture_union(x)->	String.concat "" ["This_culture_union " ; x]
    |Total_amount_of_divisions(x)->	String.concat "" ["Total_amount_of_divisions " ; string_of_int x]
    |Total_amount_of_ships(x)->	String.concat "" ["Total_amount_of_ships " ; string_of_int x]
    |Total_defensives(x)->	String.concat "" ["Total_defensives " ; string_of_int x]
    |Total_num_of_ports(x)->	String.concat "" ["Total_num_of_ports " ; string_of_int x]
    |Total_offensives(x)->	String.concat "" ["Total_offensives " ; string_of_int x]
    |Total_of_ours_sunk(x)->	String.concat "" ["Total_of_ours_sunk " ; string_of_int x]
    |Tag(x)->	String.concat "" ["Tag " ; x]
    |Total_sea_battles(x)->	String.concat "" ["Total_sea_battles " ; string_of_int x]
    |Total_sunk_by_us(x)->	String.concat "" ["Total_sunk_by_us " ; string_of_int x]
    |Trade_policy(x)->	String.concat "" ["Trade_policy " ; x]
    |Truce_with(x)->	String.concat "" ["Truce_with " ; x]
    |Unit_has_leader(x)->	String.concat "" ["Unit_has_leader " ; string_of_bool x]
    |Unit_in_battle(x)->	String.concat "" ["Unit_in_battle " ; string_of_bool x]
    |Upper_house(x,y)->	String.concat "" ["Upper_house " ; x;string_of_float y]
    |Vassal_of(x)->	String.concat "" ["Vassal_of " ; x ]
    |War(x)->	String.concat "" ["War " ; string_of_bool x]
    |War_exhaustion(x)->	String.concat "" ["War_exhaustion " ; string_of_int x]
    |War_policy(x)->	String.concat "" ["War_policy " ; x]
    |War_with(x)->	String.concat "" ["War_with " ; x]
    |Can_build_factory(x)->	String.concat "" ["Can_build_factory " ; string_of_bool x]
    |Continent(x)->	String.concat "" ["Continent " ; x]
    |Controlled_by(x)->	String.concat "" ["Controlled_by " ; x]
    |Controlled_by_rebels(x)->	String.concat "" ["Controlled_by_rebels " ; string_of_bool x]
    |Country_units_in_province(x)->	String.concat "" ["Country_units_in_province " ; x]
    |Education_spending(x)->	String.concat "" ["Education_spending " ; string_of_float x]
    |Empty(x)->	String.concat "" ["Empty " ; string_of_bool x]
    |Flashpoint_tension(x)->	String.concat "" ["Flashpoint_tension " ; string_of_int x]
    |Has_building(x)->	String.concat "" ["Has_building " ; x]
    |Has_culture_core(x)->	String.concat "" ["Has_culture_core " ; string_of_bool x]
    |Has_empty_adjacent_province(x)->	String.concat "" ["Has_empty_adjacent_province " ; string_of_bool x]
    |Has_empty_adjacent_state(x)->	String.concat "" ["Has_empty_adjacent_state " ; string_of_bool x]
    |Has_factories(x)->	String.concat "" ["Has_factories " ; string_of_bool x]
    |Has_national_minority(x)->	String.concat "" ["Has_national_minority " ; string_of_bool x]
    |Has_pop_type(x)->	String.concat "" ["Has_pop_type " ; x]
    |Has_province_flag(x)->	String.concat "" ["Has_province_flag " ; x]
    |Has_province_modifier(x)->	String.concat "" ["Has_province_modifier " ; x]
    |Has_recent_imigration(x)->	String.concat "" ["Has_recent_imigration " ; string_of_int x]
    |Is_blockaded(x)->	String.concat "" ["Is_blockaded " ; string_of_bool x]
    |Is_capital(x)->	String.concat "" ["Is_capital " ; string_of_bool x]
    |Is_coastal(x)->	String.concat "" ["Is_coastal " ; string_of_bool x]
    |Is_colonial(x)->	String.concat "" ["Is_colonial " ; string_of_bool x]
    |Is_core(x)->	String.concat "" ["Is_core " ; x]
    |Is_ideology_enabled(x)->	String.concat "" ["Is_ideology_enabled " ; x]
    |Is_overseas(x)->	String.concat "" ["Is_overseas " ; string_of_bool x]
    |Is_primary_culture(x)->	String.concat "" ["Is_primary_culture " ; string_of_bool x]
    |Is_state_capital(x)->	String.concat "" ["Is_state_capital " ; string_of_bool x]
    |Is_state_religion(x)->	String.concat "" ["Is_state_religion " ; string_of_bool x]
    |Life_rating(x)->	String.concat "" ["Life_rating " ; string_of_int x]
    |Literacy(x)->	String.concat "" ["Literacy " ; string_of_int x]
    |Military_spending(x)->	String.concat "" ["Military_spending " ; string_of_int x]
    |Minorities(x)->	String.concat "" ["Minorities " ; string_of_bool x]
    |Owned_by(x)->	String.concat "" ["Owned_by " ; x]
    |Pop_militancy(x)->	String.concat "" ["Pop_militancy " ; string_of_int x]
    |Port(x)->	String.concat "" ["Port " ; string_of_bool x]
    |Province_control_days(x)->	String.concat "" ["Province_control_days " ; string_of_int x]
    |Province_id(x)->	String.concat "" ["Province_id " ; x]
    |Region(x)->	String.concat "" ["Region " ; x]
    |State_id(x)->	String.concat "" ["State_id " ; x]
    |Terrain(x)->	String.concat "" ["Terrain " ; x]
    |Total_pops(x)->	String.concat "" ["Total_pops " ; x]
    |Unemployment_by_type(x,y)->	String.concat "" ["Unemployment_by_type " ; x;" ";string_of_float y]
    |Work_available(x)->	String.concat "" ["Work_available " ; x]
    |Agree_with_ruling_party(x)->	String.concat "" ["Agree_with_ruling_party " ; string_of_float x]
    |Cash_reserves(x)->	String.concat "" ["Cash_reserves " ; string_of_float x]
    |Consciousness(x)->	String.concat "" ["Consciousness " ; string_of_int x]
    |Culture(x)->	String.concat "" ["Culture " ; x]
    |Everyday_needs(x)->	String.concat "" ["Everyday_needs " ; string_of_int x]
    |Has_pop_culture(x,y)->	String.concat "" ["Has_pop_culture " ; x;" ";y]
    |Has_pop_religion(x,y)->	String.concat "" ["Has_pop_religion " ; x;" ";y]
    |Is_accepted_culture(x)->	String.concat "" ["Is_accepted_culture " ; string_of_bool x]
    |Life_needs(x)->	String.concat "" ["Life_needs " ; string_of_int x]
    |Luxury_needs(x)->	String.concat "" ["Luxury_needs " ; string_of_int x]
    |Militancy(x)->	String.concat "" ["Militancy " ; string_of_int x]
    |Strata(x)->	String.concat "" ["Strata " ; x]
    |Unemployment(x)->	String.concat "" ["Unemployment " ; string_of_int x]
    |Identifier(x)->	String.concat "" ["Identifier " ; x]
    |_ -> "ERROR"
    
    
(*let event_str country event = match event with 
    |Badboy_effect(x) ->	"Badboy_effect"
    |Cb_generation_speed_modifier(x) ->	"Cb_generation_speed_modifier"
    |Core_pop_militancy_modifier(x) ->	"Core_pop_militancy_modifier"
    |Diplomatic_points_modifier(x) ->	"Diplomatic_points_modifier"
    |Education_efficiency_modifier(x) ->	"Education_efficiency_modifier"
    |Factory_cost(x) ->	"Factory_cost"
    |Factory_input(x) ->	"Factory_input"
    |Factory_output(x) ->	"Factory_output"
    |Factory_owner_cost(x) ->	"Factory_owner_cost"
    |Factory_throughput(x) ->	"Factory_throughput"
    |Global_assimilation_rate(x) ->	"Global_assimilation_rate"
    |Global_immigrant_attract(x) ->	"Global_immigrant_attract"
    |Global_pop_militancy_modifier(x) ->	"Global_pop_militancy_modifier"
    |Global_population_growth(x) ->	"Global_population_growth"
    |Import_cost(x) ->	"Import_cost"
    |Influence_modifier(x) ->	"Influence_modifier"
    |Issue_change_speed(x) ->	"Issue_change_speed"
    |Land_organisation(x) ->	"Land_organisation"
    |Land_unit_start_experience(x) ->	"Land_unit_start_experience"
    |Leadership_modifier(x) ->	"Leadership_modifier"
    |Loan_interest(x) ->	"Loan_interest"
    |Max_loan_modifier(x) ->	"Max_loan_modifier"
    |Max_military_spending(x) ->	"Max_military_spending"
    |Max_social_spending(x) ->	"Max_social_spending"
    |Max_tariff(x) ->	"Max_tariff"
    |Min_military_spending(x) ->	"Min_military_spending"
    |Min_social_spending(x) ->	"Min_social_spending"
    |Min_tariff(x) ->	"Min_tariff"
    |Mobilization_economy_impact(x) ->	"Mobilization_economy_impact"
    |Mobilization_impact(x) ->	"Mobilization_impact"
    |Mobilisation_size(x) ->	"Mobilisation_size"
    |Naval_organisation(x) ->	"Naval_organisation"
    |Naval_unit_start_experience(x) ->	"Naval_unit_start_experience"
    |Non_accepted_pop_consciousness_modifier(x) ->	"Non_accepted_pop_consciousness_modifier"
    |Non_accepted_pop_militancy_modifier(x) ->	"Non_accepted_pop_militancy_modifier"
    |Org_regain(x) ->	"Org_regain"
    |Political_reform_desire(x) ->	"Political_reform_desire"
    |Prestige_effect(x) ->	"Prestige_effect"
    |Research_points(x) ->	"Research_points"
    |Research_points_modifier(x) ->	"Research_points_modifier"
    |Research_points_on_conquer(x) ->	"Research_points_on_conquer"
    |Rgo_output(x) ->	"Rgo_output"
    |Rgo_throughput(x) ->	"Rgo_throughput"
    |Ruling_party_support(x) ->	"Ruling_party_support"
    |Social_reform_desire(x) ->	"Social_reform_desire"
    |Suppression_points_modifier(x) ->	"Suppression_points_modifier"
    |Supply_consumption(x) ->	"Supply_consumption"
    |Poor_vote(x) ->	"Poor_vote"
    |Tax_efficiency(x) ->	"Tax_efficiency"
    |Industry_tech_research_bonus(x) ->	"Industry_tech_research_bonus"
    |Unit_start_experience(x) ->	"Unit_start_experience"
    |War_exhaustion_effect(x) ->	"War_exhaustion_effect"
    |Assimilation_rate(x) ->	"Assimilation_rate"
    |Immigrant_attract(x) ->	"Immigrant_attract"
    |Immigrant_push(x) ->	"Immigrant_push"
    |Life_rating_effect(x) ->	"Life_rating_effect"
    |Local_artisan_output(x) ->	"Local_artisan_output"
    |Local_factory_input(x) ->	"Local_factory_input"
    |Local_factory_output(x) ->	"Local_factory_output"
    |Local_factory_throughput(x) ->	"Local_factory_throughput"
    |Local_repair(x) ->	"Local_repair"
    |Local_rgo_output(x) ->	"Local_rgo_output"
    |Local_rgo_throughput(x) ->	"Local_rgo_throughput"
    |Local_ruling_party_support(x) ->	"Local_ruling_party_support"
    |Local_ship_build(x) ->	"Local_ship_build"
    |Pop_consciousness_modifier(x) ->	"Pop_consciousness_modifier"
    |Population_growth(x) ->	"Population_growth"
    |Farm_rgo_eff(x) ->	"Farm_rgo_eff"
    |Farm_rgo_size(x) ->	"Farm_rgo_size"
    |Goods_demand(x) ->	"Goods_demand"
    |Rich_income_modifier(x) ->	"Rich_income_modifier"
    |Poor_life_needs(x) ->	"Poor_life_needs "   
    *)
let str_member x = (match x with 
    |Types.Id(id)-> sprintf "id  %i "  id
    |Types.Trigger(ls) -> String.concat "\n" (""::List.map cond_str ls)
    |_ -> "";
)
let str_event event = 
    (match event with
    |Types.Country_event(ls) ->
        String.concat " "  ("Country_event" ::List.map str_member ls); 
    |Types.Province_event(ls) ->
        String.concat " " ("Province_event " :: List.map str_member ls);
)


let  str_events modfile =
        
        match modfile with
            |Events(cls)-> String.concat "" ("file\n":: (map str_event cls) )
            |Eof -> "" 
