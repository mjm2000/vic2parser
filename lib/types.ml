

type  conds =  
    |And of conds list 
    |Or of conds list
    |Not of conds list
    |Average_consciousness of int 
    |Average_militancy of int
    |Religion of string
    |Year of int 
    |Month of int  
    |Allow_multiple_instances of bool 
    |Fire_only_once of bool 
    |Is_triggered_only  of bool
    |Major of bool
    |Immediate of effect list
    |Check_variable of string * int 
    |Has_global_flag of string
    |Is_canal_enabled of int list 
    |Administration_spending of int 
    |Ai of bool 
    |Alliance_with of string 
    |Badboy of float 
    |Big_producer of string 
    |Blockade of float 
    |Brigades_compare of int 
    |Can_nationalize of bool  
    |Can_create_vassals of bool 
    |Capital of string 
    |Casus_belli of string 
    |Citizenship_policy of string 
    |Civilization_progress of float 
    |Civilized of bool 
    |Colonial_nation of bool  
    |Constructing_cb_progress of float
    |Constructing_cb_type of string 
    |Controls of string 
    |Crime_fighting of string
    |Crisis_exist of bool 
    |Culture_has_union_tag of bool
    |Diplomatic_influence of string * int 
    |Economic_policy of string  
    |Economic_reform_name of string 
    |Election of bool 
    |Exists of string 
    |Government of string 
    |Great_wars_enabled of bool
    |Have_core_in of string 
    |Has_country_flag of string 
    |Has_country_modifier of string 
    |Has_cultural_sphere of string 
    |Has_leader of string 
    |Has_recently_lost_war of bool
    |Has_unclaimed_cores of bool 
    |Ideology of string * int
    |Industrial_score of int 
    |In_sphere of string 
    |Invention of string 
    |Involved_in_crisis of bool 
    |Is_claim_crisis of bool 
    |Is_cultural_union of string 
    |Is_cultural_union_truth of bool 
    |Is_culture_group of bool 
    |Is_disarmed of bool 
    |Is_greater_power of bool 
    |Is_independant of bool 
    |Is_liberation_crisis of bool 
    |Is_mobilised of bool  
    |Is_our_vassal of string 
    |Is_possible_vassal of string 
    |Is_secondary_power of bool 
    |Is_sphere_leader_of of string 
    |Is_vassal of bool 
    |Is_substate of bool 
    |Lost_national of int  
    |Middle_strata_everyday_needs  of float
    |Middle_strata_life_needs of float 
    |Middle_strata_luxury_needs of float  
    |Middle_tax of float  
    |Military_access of string 
    |Military_reform_name of string 
    |Military_score of int 
    |Military_score_tag of int
    |Money of int 
    |Nationalvalue of string 
    |National_provinces_occupied of int 
    |Neighbour of string 
    |Num_of_allies of int  
    |Num_of_cities of int 
    |Num_of_ports of int  
    |Num_of_revolts of int 
    |Number_of_states of int 
    |Num_of_substates of int  
    |Num_of_vassals of int 
    |Num_of_vassals_no_substates of int
    |Owns of string 
    |Part_of_sphere of bool 
    |Political_movement_strength of int
    |Political_reform_name of int  
    |Political_reform_want of float 
    |Poor_strata_everyday_needs of float 
    |Poor_strata_life_needs of int 
    |Poor_strata_luxury_needs of int  
    |Poor_tax of int 
    |Pop_majority_culture of string
    |Pop_majority_ideology of string 
    |Pop_majority_religion of string 
    |Prestige of int 
    |Primary_culture of string 
    |Accepted_culture of string 
    |Produces of string 
    |Rank of int 
    |Relation of string * int  
    |Religious_policy of string 
    |Revolt_percentage of int 
    |Rich_strata_everyday_needs of float 
    |Rich_strata_life_needs of float 
    |Rich_strata_luxury_needs of float 
    |Rich_tax of float 
    |Ruling_party of string 
    |Ruling_party_ideology of string  
    |Slavery of bool 
    |Social_reform_name of string * float 
    |Social_reform_want of float 
    |Social_spending of float 
    |Stronger_army_than of string 
    |Substate_of of string 
    |This_culture_union of string 
    |Total_amount_of_divisions of int  
    |Total_amount_of_ships of int  
    |Total_defensives of int  
    |Total_num_of_ports of int 
    |Total_offensives of int  
    |Total_of_ours_sunk of int 
    |Tag of int  
    |Total_sea_battles of int  
    |Total_sunk_by_us of int  
    |Trade_policy of string 
    |Truce_with of string 
    |Unit_has_leader of bool 
    |Unit_in_battle of bool 
    |Upper_house of string * float 
    |Vassal_of of string  
    |War of bool 
    |War_exhaustion of int  
    |War_policy of string 
    |War_with of string 
    |Can_build_factory of bool 
    |Continent of string 
    |Controlled_by of string 
    |Controlled_by_rebels of bool 
    |Country_units_in_province of string 
    |Education_spending of float  
    |Empty of bool 
    |Flashpoint_tension of int 
    |Has_building of string 
    |Has_culture_core of bool 
    |Has_empty_adjacent_province of bool
    |Has_empty_adjacent_state of bool 
    |Has_factories of bool 
    |Has_national_minority of bool 
    |Has_pop_type of string 
    |Has_province_flag of string  
    |Has_province_modifier of string 
    |Has_recent_imigration of string 
    |Is_blockaded of float 
    |Is_capital of bool 
    |Is_coastal of bool 
    |Is_colonial of bool 
    |Is_core of string 
    |Is_ideology_enabled of string 
    |Is_overseas of string 
    |Is_primary_culture of bool 
    |Is_state_capital of bool 
    |Is_state_religion of bool 
    |Life_rating of int  
    |Literacy of int  
    |Military_spending of int  
    |Minorities of bool 
    |Owned_by of string 
    |Pop_militancy of int  
    |Port of bool 
    |Province_control_days of int
    |Province_id of string 
    |Region of string 
    |State_id of string 
    |Terrain of string 
    |Total_pops of string 
    |Unemployment_by_type of string * float  
    |Work_available of string 
    |Agree_with_ruling_party of float 
    |Cash_reserves of float 
    |Consciousness of int 
    |Culture of string 
    |Everyday_needs of int 
    |Has_pop_culture of string * string  
    |Has_pop_religion of string * string 
    |Is_accepted_culture of bool  
    |Life_needs of int  
    |Luxury_needs of int  
    |Militancy of int  
    |Strata of string 
    |Unemployment of int
    |Identifier of string


and   effect = 
     Badboy_effect    
    |Cb_generation_speed_modifier 
    |Core_pop_militancy_modifier 
    |Diplomatic_points_modifier 
    |Education_efficiency_modifier 
    |Factory_cost 
    |Factory_input 
    |Factory_output 
    |Factory_owner_cost 
    |Factory_throughput 
    |Global_assimilation_rate 
    |Global_immigrant_attract 
    |Global_pop_militancy_modifier 
    |Global_population_growth 
    |Import_cost 
    |Influence_modifier 
    |Issue_change_speed 
    |Land_organisation 
    |Land_unit_start_experience 
    |Leadership_modifier 
    |Loan_interest 
    |Max_loan_modifier 
    |Max_military_spending 
    |Max_social_spending 
    |Max_tariff 
    |Min_military_spending 
    |Min_social_spending 
    |Min_tariff 
    |Mobilization_economy_impact 
    |Mobilization_impact 
    |Mobilisation_size 
    |Naval_organisation 
    |Naval_unit_start_experience 
    |Non_accepted_pop_consciousness_modifier 
    |Non_accepted_pop_militancy_modifier 
    |Org_regain 
    |Political_reform_desire 
    |Prestige_effect 
    |Research_points 
    |Research_points_modifier 
    |Research_points_on_conquer 
    |Rgo_output 
    |Rgo_throughput 
    |Ruling_party_support 
    |Social_reform_desire 
    |Suppression_points_modifier 
    |Supply_consumption 
    |Poor_vote 
    |Tax_efficiency 
    |Industry_tech_research_bonus 
    |Unit_start_experience 
    |War_exhaustion_effect 
    |Assimilation_rate 
    |Immigrant_attract 
    |Immigrant_push 
    |Life_rating_effect 
    |Local_artisan_output 
    |Local_factory_input 
    |Local_factory_output 
    |Local_factory_throughput 
    |Local_repair 
    |Local_rgo_output 
    |Local_rgo_throughput 
    |Local_ruling_party_support 
    |Local_ship_build 
    |Pop_consciousness_modifier 
    |Population_growth 
    |Farm_rgo_eff 
    |Farm_rgo_size 
    |Goods_demand 
    |Rich_income_modifier 
    |Poor_life_needs  


type trigger = conds list 
type option_block = effect list

type event_values = Id of int 
                    | Title of string 
                    | Picture of string 
                    | Is_Triggered of bool
                    | Major of bool
                    | Allow_multiple_instances of bool
                    | Option of string * effect list
                    | MTTH 

type event = Country_event of event_values list 
            | Province_event of event_values list 

type events = Events of event list | Eof
