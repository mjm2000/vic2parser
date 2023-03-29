{
open Parser


exception Error of string
exception Eof
 
let new_line_incr lexbuf =
    let pos = lexbuf.Lexing.lex_curr_p in 
    lexbuf.Lexing.lex_curr_p <- {pos with
        Lexing.pos_lnum = pos.Lexing.pos_lnum + 1;  
        Lexing.pos_bol =  pos.Lexing.pos_cnum;
    }


let current_pos lexbuf =
    let pos = lexbuf.Lexing.lex_curr_p in
    pos.pos_cnum-pos.pos_bol
}


let digit = ['0'-'9'] 
let integer = (digit | ['1'-'9']  digit*)
let character = (['A'-'Z' 'a'-'z']   digit) 
let tag = (['A'-'Z'] ['A'-'Z'] ['A'-'Z'])
let identifier = (character|digit)*
let float = integer '.' digit*
let whitespace = [' ' '\t'] 
let newline = ['\n' ]
let comment = ('#'_*'\n')


rule token = parse
    | integer as i                      {INTEGER  (int_of_string i) }
    | whitespace                        {token lexbuf}
    | newline                           {new_line_incr lexbuf;token lexbuf}
    | (['#'] [^ '\n']* )                {token lexbuf}
    |"country_event"                    {COUNTRY_EVENT}
    |'"'                                {read_string (Buffer.create 17) lexbuf} 
    |eof                                {EOF}
    |float as i                         {FLOAT   (float_of_string i)} 
    |"trigger"                          {TRIGGER}
    |"THIS"                             {TAG("THIS")}
    |"FROM"                             {TAG("FROM")}
    |"yes"                              {BOOL(true)}
    |"no"                               {BOOL(false)}
    |'{'                                {L_BRACE}
    |'}'                                {R_BRACE}
    |'='                                { EQ}
    |"id"                               { ID} 
    |"AND"                              {  AND }
    |"OR"                               {  OR }
    |"NOT"                              {  NOT }
    |"average_militancy"                {  AVERAGE_MILITANCY }
    |"religion"                         {  RELIGION  }
    |"year"                             {  YEAR  }
    |"month"                            {  MONTH  }
    |"allow_multiple_instances"         {  ALLOW_MULTIPLE_INSTANCES  }
    |"fire_only_once"                   {  FIRE_ONLY_ONCE  }
    |"is_triggered_only"                {  IS_TRIGGERED_ONLY  }
    |"major"                            {  MAJOR  }
    |"immediate"                        {  IMMEDIATE  }
    |"check_variable"                   {  CHECK_VARIABLE  }
    |"which"                            {  WHICH  }
    |"value"                            {  VALUE  }
    |"has_global_flag"                  {  HAS_GLOBAL_FLAG  }
    |"is_canal_enabled"                 {  IS_CANAL_ENABLED  }
    |"administration_spending"          {  ADMINISTRATION_SPENDING  }
    |"ai"                               {  AI  }
    |"alliance_with"                    {  ALLIANCE_WITH  }
    |"average_consciousness"            {  AVERAGE_CONSCIOUSNESS  }
    |"badboy"                           {  BADBOY  }
    |"big_producer"                     {  BIG_PRODUCER  }
    |"blockade"                         {  BLOCKADE  }
    |"brigades_compare"                 {  BRIGADES_COMPARE  }
    |"can_nationalize"                  {  CAN_NATIONALIZE  }
    |"can_create_vassals"               {  CAN_CREATE_VASSALS  }
    |"capital"                          {  CAPITAL  }
    |"casus_belli"                      {  CASUS_BELLI  }
    |"citizenship_policy"               {  CITIZENSHIP_POLICY  }
    |"civilization_progress"            {  CIVILIZATION_PROGRESS  }
    |"civilized"                        {  CIVILIZED  }
    |"colonial_nation"                  {  COLONIAL_NATION  }
    |"constructing_cb_progress"         {  CONSTRUCTING_CB_PROGRESS  }
    |"constructing_cb_type"             {  CONSTRUCTING_CB_TYPE  }
    |"controls"                         {  CONTROLS  }
    |"crime_fighting"                   {  CRIME_FIGHTING  }
    |"crisis_exist"                     {  CRISIS_EXIST  }
    |"culture_has_union_tag"            {  CULTURE_HAS_UNION_TAG  }
    |"diplomatic_influence"             {  DIPLOMATIC_INFLUENCE  }
    |"who"                              {  WHO  }
    |"economic_policy"                  {  ECONOMIC_POLICY  }
    |"economic_reform_name"             {  ECONOMIC_REFORM_NAME  }
    |"education_spending"               {  EDUCATION_SPENDING  }
    |"election"                         {  ELECTION  }
    |"exists"                           {  EXISTS  }
    |"government"                       {  GOVERNMENT  }
    |"great_wars_enabled"               {  GREAT_WARS_ENABLED  }
    |"have_core_in"                     {  HAVE_CORE_IN  }
    |"has_country_flag"                 {  HAS_COUNTRY_FLAG  }
    |"has_country_modifier"             {  HAS_COUNTRY_MODIFIER  }
    |"has_cultural_sphere"              {  HAS_CULTURAL_SPHERE  }
    |"has_leader"                       {  HAS_LEADER  }
    |"has_recently_lost_war"            {  HAS_RECENTLY_LOST_WAR  }
    |"has_unclaimed_cores"              {  HAS_UNCLAIMED_CORES  }
    |"ideology"                         {  IDEOLOGY  }
    |"industrial_score"                 {  INDUSTRIAL_SCORE  }
    |"in_sphere"                        {  IN_SPHERE  }
    |"invention"                        {  INVENTION  }
    |"involved_in_crisis"               {  INVOLVED_IN_CRISIS  }
    |"is_claim_crisis"                  {  IS_CLAIM_CRISIS  }
    |"is_core"                          {  IS_CORE  }
    |"is_cultural_union"                {  IS_CULTURAL_UNION  }
    |"is_cultural_union"                {  IS_CULTURAL_UNION  }
    |"is_culture_group"                 {  IS_CULTURE_GROUP  }
    |"is_disarmed"                      {  IS_DISARMED  }
    |"is_greater_power"                 {  IS_GREATER_POWER  }
    |"is_ideology_enabled"              {  IS_IDEOLOGY_ENABLED  }
    |"is_independant"                   {  IS_INDEPENDANT  }
    |"is_liberation_crisis"             {  IS_LIBERATION_CRISIS  }
    |"is_mobilised"                     {  IS_MOBILISED  }
    |"is_our_vassal"                    {  IS_OUR_VASSAL  }
    |"is_possible_vassal"               {  IS_POSSIBLE_VASSAL  }
    |"is_secondary_power"               {  IS_SECONDARY_POWER  }
    |"is_sphere_leader_of"              {  IS_SPHERE_LEADER_OF  }
    |"is_vassal"                        {  IS_VASSAL  }
    |"is_substate"                      {  IS_SUBSTATE  }
    |"literacy"                         {  LITERACY  }
    |"lost_national"                    {  LOST_NATIONAL  }
    |"middle_strata_everyday_needs"     {  MIDDLE_STRATA_EVERYDAY_NEEDS  }
    |"middle_strata_life_needs"         {  MIDDLE_STRATA_LIFE_NEEDS  }
    |"middle_strata_luxury_needs"       {  MIDDLE_STRATA_LUXURY_NEEDS  }
    |"middle_tax"                       {  MIDDLE_TAX  }
    |"military_access"                  {  MILITARY_ACCESS  }
    |"military_reform_name"             {  MILITARY_REFORM_NAME  }
    |"military_score"                   {  MILITARY_SCORE  }
    |"military_score"                   {  MILITARY_SCORE  }
    |"military_spending"                {  MILITARY_SPENDING  }
    |"money"                            {  MONEY  }
    |"nationalvalue"                    {  NATIONALVALUE  }
    |"national_provinces_occupied"      {  NATIONAL_PROVINCES_OCCUPIED  }
    |"neighbour"                        {  NEIGHBOUR  }
    |"num_of_allies"                    {  NUM_OF_ALLIES  }
    |"num_of_cities"                    {  NUM_OF_CITIES  }
    |"num_of_ports"                     {  NUM_OF_PORTS  }
    |"num_of_revolts"                   {  NUM_OF_REVOLTS  }
    |"number_of_states"                 {  NUMBER_OF_STATES  }
    |"num_of_substates"                 {  NUM_OF_SUBSTATES  }
    |"num_of_vassals"                   {  NUM_OF_VASSALS  }
    |"num_of_vassals_no_substates"      {  NUM_OF_VASSALS_NO_SUBSTATES  }
    |"owns"                             {  OWNS  }
    |"part_of_sphere"                   {  PART_OF_SPHERE  }
    |"political_movement_strength"      {  POLITICAL_MOVEMENT_STRENGTH  }
    |"political_reform_name"            {  POLITICAL_REFORM_NAME  }
    |"political_reform_want"            {  POLITICAL_REFORM_WANT  }
    |"poor_strata_everyday_needs"       {  POOR_STRATA_EVERYDAY_NEEDS  }
    |"poor_strata_life_needs"           {  POOR_STRATA_LIFE_NEEDS  }
    |"poor_strata_luxury_needs"         {  POOR_STRATA_LUXURY_NEEDS  }
    |"poor_tax"                         {  POOR_TAX  }
    |"pop_majority_culture"             {  POP_MAJORITY_CULTURE  }
    |"pop_majority_ideology"            {  POP_MAJORITY_IDEOLOGY  }
    |"pop_majority_religion"            {  POP_MAJORITY_RELIGION  }
    |"pop_militancy"                    {  POP_MILITANCY  }
    |"prestige"                         {  PRESTIGE  }
    |"primary_culture"                  {  PRIMARY_CULTURE  }
    |"accepted_culture"                 {  ACCEPTED_CULTURE  }
    |"produces"                         {  PRODUCES  }
    |"rank"                             {  RANK  }
    |"relation"                         {  RELATION  }
    |"religious_policy"                 {  RELIGIOUS_POLICY  }
    |"revolt_percentage"                {  REVOLT_PERCENTAGE  }
    |"rich_strata_everyday_needs"       {  RICH_STRATA_EVERYDAY_NEEDS  }
    |"rich_strata_life_needs"           {  RICH_STRATA_LIFE_NEEDS  }
    |"rich_strata_luxury_needs"         {  RICH_STRATA_LUXURY_NEEDS  }
    |"rich_tax"                         {  RICH_TAX  }
    |"ruling_party"                     {  RULING_PARTY  }
    |"ruling_party_ideology"            {  RULING_PARTY_IDEOLOGY  }
    |"slavery"                          {  SLAVERY  }
    |"social_reform_name"               {  SOCIAL_REFORM_NAME  }
    |"social_reform_want"               {  SOCIAL_REFORM_WANT  }
    |"social_spending"                  {  SOCIAL_SPENDING  }
    |"stronger_army_than"               {  STRONGER_ARMY_THAN  }
    |"substate_of"                      {  SUBSTATE_OF  }
    |"this_culture_union"               {  THIS_CULTURE_UNION  }
    |"total_amount_of_divisions"        {  TOTAL_AMOUNT_OF_DIVISIONS  }
    |"total_amount_of_ships"            {  TOTAL_AMOUNT_OF_SHIPS  }
    |"total_defensives"                 {  TOTAL_DEFENSIVES  }
    |"total_num_of_ports"               {  TOTAL_NUM_OF_PORTS  }
    |"total_offensives"                 {  TOTAL_OFFENSIVES  }
    |"total_of_ours_sunk"               {  TOTAL_OF_OURS_SUNK  }
    |"tag"                              {  TAG_COND  }
    |"total_sea_battles"                {  TOTAL_SEA_BATTLES  }
    |"total_sunk_by_us"                 {  TOTAL_SUNK_BY_US  }
    |"trade_policy"                     {  TRADE_POLICY  }
    |"truce_with"                       {  TRUCE_WITH  }
    |"unemployment"                     {  UNEMPLOYMENT  }
    |"unit_has_leader"                  {  UNIT_HAS_LEADER  }
    |"unit_in_battle"                   {  UNIT_IN_BATTLE  }
    |"upper_house"                      {  UPPER_HOUSE  }
    |"vassal_of"                        {  VASSAL_OF  }
    |"war"                              {  WAR  }
    |"war_exhaustion"                   {  WAR_EXHAUSTION  }
    |"war_policy"                       {  WAR_POLICY  }
    |"war_with"                         {  WAR_WITH  }
    |"average_consciousness"            {  AVERAGE_CONSCIOUSNESS  }
    |"average_militancy"                {  AVERAGE_MILITANCY  }
    |"can_build_factory"                {  CAN_BUILD_FACTORY  }
    |"continent"                        {  CONTINENT  }
    |"controlled_by"                    {  CONTROLLED_BY  }
    |"controlled_by_rebels"             {  CONTROLLED_BY_REBELS  }
    |"country_units_in_province"        {  COUNTRY_UNITS_IN_PROVINCE  }
    |"crime_fighting"                   {  CRIME_FIGHTING  }
    |"education_spending"               {  EDUCATION_SPENDING  }
    |"empty"                            {  EMPTY  }
    |"flashpoint_tension"               {  FLASHPOINT_TENSION  }
    |"has_building"                     {  HAS_BUILDING  }
    |"has_culture_core"                 {  HAS_CULTURE_CORE  }
    |"has_empty_adjacent_province"      {  HAS_EMPTY_ADJACENT_PROVINCE  }
    |"has_empty_adjacent_state"         {  HAS_EMPTY_ADJACENT_STATE  }
    |"has_factories"                    {  HAS_FACTORIES  }
    |"has_national_minority"            {  HAS_NATIONAL_MINORITY  }
    |"has_pop_type"                     {  HAS_POP_TYPE  }
    |"has_province_flag"                {  HAS_PROVINCE_FLAG  }
    |"has_province_modifier"            {  HAS_PROVINCE_MODIFIER  }
    |"has_recent_imigration"            {  HAS_RECENT_IMIGRATION  }
    |"is_accepted_culture"              {  IS_ACCEPTED_CULTURE  }
    |"is_blockaded"                     {  IS_BLOCKADED  }
    |"is_capital"                       {  IS_CAPITAL  }
    |"is_coastal"                       {  IS_COASTAL  }
    |"is_colonial"                      {  IS_COLONIAL  }
    |"is_core"                          {  IS_CORE  }
    |"is_ideology_enabled"              {  IS_IDEOLOGY_ENABLED  }
    |"is_overseas"                      {  IS_OVERSEAS  }
    |"is_primary_culture"               {  IS_PRIMARY_CULTURE  }
    |"is_state_capital"                 {  IS_STATE_CAPITAL  }
    |"is_state_religion"                {  IS_STATE_RELIGION  }
    |"life_rating"                      {  LIFE_RATING  }
    |"literacy"                         {  LITERACY  }
    |"military_spending"                {  MILITARY_SPENDING  }
    |"minorities"                       {  MINORITIES  }
    |"owned_by"                         {  OWNED_BY  }
    |"pop_militancy"                    {  POP_MILITANCY  }
    |"port"                             {  PORT  }
    |"province_control_days"            {  PROVINCE_CONTROL_DAYS  }
    |"province_id"                      {  PROVINCE_ID  }
    |"region"                           {  REGION  }
    |"state_id"                         {  STATE_ID  }
    |"terrain"                          {  TERRAIN  }
    |"total_pops"                       {  TOTAL_POPS  }
    |"unemployment"                     {  UNEMPLOYMENT  }
    |"unemployment_by_type"             {  UNEMPLOYMENT_BY_TYPE  }
    |"units_in_province"                {  UNITS_IN_PROVINCE  }
    |"work_available"                   {  WORK_AVAILABLE  }
    |"agree_with_ruling_party"          {  AGREE_WITH_RULING_PARTY  }
    |"cash_reserves"                    {  CASH_RESERVES  }
    |"consciousness"                    {  CONSCIOUSNESS  }
    |"culture"                          {  CULTURE  }
    |"everyday_needs"                   {  EVERYDAY_NEEDS  }
    |"has_pop_culture"                  {  HAS_POP_CULTURE  }
    |"has_pop_religion"                 {  HAS_POP_RELIGION  }
    |"is_primary_culture"               {  IS_PRIMARY_CULTURE  }
    |"is_accepted_culture"              {  IS_ACCEPTED_CULTURE  }
    |"is_culture_group"                 {  IS_CULTURE_GROUP  }
    |"is_state_religion"                {  IS_STATE_RELIGION  }
    |"life_needs"                       {  LIFE_NEEDS  }
    |"literacy"                         {  LITERACY  }
    |"luxury_needs"                     {  LUXURY_NEEDS  }
    |"militancy"                        {  MILITANCY  }
    |"money"                            {  MONEY  }
    |"political_reform_want"            {  POLITICAL_REFORM_WANT  }
    |"pop_majority_culture"             {  POP_MAJORITY_CULTURE  }
    |"pop_majority_ideology"            {  POP_MAJORITY_IDEOLOGY  }
    |"pop_majority_religion"            {  POP_MAJORITY_RELIGION  }
    |"religion"                         {  RELIGION  }
    |"social_movement"                  {  SOCIAL_MOVEMENT  }
    |"social_reform_want"               {  SOCIAL_REFORM_WANT  }
    |"strata"                           {  STRATA  }
    |"unemployment"                     {  UNEMPLOYMENT  }
    (*effects*)
    |"assimilate"                     	{ ASSIMILATE }
    |"any_owned"                      	{ ANY_OWNED }
    |"consciousness_effect"           	{ CONSCIOUSNESS_EFFECT }
    |"militancy_effect"               	{ MILITANCY_EFFECT }
    |"literacy_effect"                	{ LITERACY_EFFECT }
    |"any_pop_effect"                 	{ ANY_POP_EFFECT }
    |"money_effect"                   	{ MONEY_EFFECT }
    |"move_pop"                       	{ MOVE_POP }
    |"pop_type"                       	{ POP_TYPE }
    |"reduce_pop"                     	{ REDUCE_POP }
    |"any_pop"                        	{ ANY_POP }
    |"add_core"                       	{ ADD_CORE }
    |"change_controller"              	{ CHANGE_CONTROLLER }
    |"change_province_name"           	{ CHANGE_PROVINCE_NAME }
    |"change_region_name"             	{ CHANGE_REGION_NAME }
    |"flashpoint_tension_effect"      	{ FLASHPOINT_TENSION_EFFECT }
    |"fort"                           	{ FORT }
    |"infrastructure"                 	{ INFRASTRUCTURE  }
    |"life_rating_effect"             	{ LIFE_RATING_EFFECT }
    |"naval_base"                     	{ NAVAL_BASE }
    |"remove_core"                    	{ REMOVE_CORE }
    |"remove_province_modifier"       	{ REMOVE_PROVINCE_MODIFIER }
    |"rgo_size"                       	{ RGO_SIZE }
    |"secede_province"                	{ SECEDE_PROVINCE }
    |"trade_goods"                    	{ TRADE_GOODS }
    |"activate_technology"            	{ ACTIVATE_TECHNOLOGY }
    |"add_accepted_culture"           	{ ADD_ACCEPTED_CULTURE }
    |"remove_accepted_culture"        	{ REMOVE_ACCEPTED_CULTURE }
    |"add_crisis_interest"            	{ ADD_CRISIS_INTEREST }
    |"add_crisis_temperature"         	{ ADD_CRISIS_TEMPERATURE }
    |"badboy_effect"                  	{ BADBOY_EFFECT }
    |"build_factory_in_capital_state" 	{ BUILD_FACTORY_IN_CAPITAL_STATE }
    |"capital_effect"                 	{ CAPITAL_EFFECT }
    |"civilized_effect"               	{ CIVILIZED_EFFECT }
    |"kill_leader"                    	{ KILL_LEADER }
    |"nationalvalue_effect"           	{ NATIONALVALUE_EFFECT }
    |"plurality"                      	{ PLURALITY }
    |"prestige_effect"                	{ PRESTIGE_EFFECT }
    |"prestige_factor"                	{ PRESTIGE_FACTOR }
    |"primary_culture_effect"         	{ PRIMARY_CULTURE_EFFECT }
    |"religion_effect"                	{ RELIGION_EFFECT }
    |"remove_country_modifier_effect" 	{ REMOVE_COUNTRY_MODIFIER_EFFECT }
    |"research_points"                	{ RESEARCH_POINTS }
    |"war_exhaustion_effect"          	{ WAR_EXHAUSTION_EFFECT }
    |"years_of_research"              	{ YEARS_OF_RESEARCH }
    |"nationalize"                    	{ NATIONALIZE }
    |"economic_reform"                	{ ECONOMIC_REFORM }
    |"election_effect"                	{ ELECTION_EFFECT }
    |"enable_ideology"                	{ ENABLE_IDEOLOGY }
    |"government_effect"              	{ GOVERNMENT_EFFECT }
    |"is_slave"                       	{ IS_SLAVE }
    |"military_reform"                	{ MILITARY_REFORM }
    |"political_reform"               	{ POLITICAL_REFORM }
    |"ruling_party_ideology_effect"   	{ RULING_PARTY_IDEOLOGY_EFFECT }
    |"social_reform"                  	{ SOCIAL_REFORM }
    |"annex_to"                       	{ ANNEX_TO }
    |"create_alliance"                	{ CREATE_ALLIANCE }
    |"create_vassal"                  	{ CREATE_VASSAL }
    |"end_military_access"            	{ END_MILITARY_ACCESS }
    |"end_war"                        	{ END_WAR }
    |"inherit"                        	{ INHERIT }
    |"leave_alliance"                 	{ LEAVE_ALLIANCE }
    |"military_access_effect"         	{ MILITARY_ACCESS_EFFECT }
    |"neutrality"                     	{ NEUTRALITY }
    |"release"                        	{ RELEASE }
    |"release_vassal"                 	{ RELEASE_VASSAL }
    |"war_effect"                     	{ WAR_EFFECT }
    |"add_tax_relative_income"        	{ ADD_TAX_RELATIVE_INCOME }
    |"treasury"                       	{ TREASURY }
    |"change_tag"                     	{ CHANGE_TAG }
    |"change_tag_no_core_switch"      	{ CHANGE_TAG_NO_CORE_SWITCH }
    |"clr_province_flag"              	{ CLR_PROVINCE_FLAG }
    |"clr_country_flag"               	{ CLR_COUNTRY_FLAG }
    |"clr_global_flag"                	{ CLR_GLOBAL_FLAG }
    |"country_event"                  	{ COUNTRY_EVENT }
    |"province_event"                 	{ PROVINCE_EVENT }
    |"set_province_flag"              	{ SET_PROVINCE_FLAG }
    |"set_country_flag"               	{ SET_COUNTRY_FLAG }
    |"set_global_flag"                	{ SET_GLOBAL_FLAG }
    |identifier as i                            {IDEN(i)} 

and read_string buf =
    parse
    |'"' {STRING(Buffer.contents buf)}
    |[^ '"' '\\']+ {
        Buffer.add_string buf (Lexing.lexeme lexbuf);
        read_string buf lexbuf
    }

{
}
