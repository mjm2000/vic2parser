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
let comment = ('#'_*)


rule token = parse
    | integer as i                      {INTEGER  (int_of_string i) }
    | whitespace                        {token lexbuf}
    | newline                           {new_line_incr lexbuf;token lexbuf}
    | comment                           {token lexbuf}
    |"country_event"                    {COUNTRY_EVENT}
    |'"'                                {read_string (Buffer.create 17) lexbuf} 
    |eof                                {EOF}
    |float as i                         {FLOAT   (float_of_string i)} 
    |"trigger"                          {TRIGGER}
    |"THIS"                             {TAG("THIS")}
    |"FROM"                             {TAG("FROM")}
    |"yes"                              {BOOL(true)}
    |"no"                               {BOOL(false)}
    |'{'                                        {L_BRACE}
    |'}'                                        {R_BRACE}
    |'='                                        { EQ}
    |"id"                                       { ID} 
    |"AND"                                      {  AND }
    |"OR"                                       {  OR }
    |"NOT"                                      {  NOT }
    |"average_militancy"                        {  AVERAGE_MILITANCY }
    |"religion"                                 {  RELIGION  }
    |"year"                                     {  YEAR  }
    |"month"                                    {  MONTH  }
    |"allow_multiple_instances"                 {  ALLOW_MULTIPLE_INSTANCES  }
    |"fire_only_once"                           {  FIRE_ONLY_ONCE  }
    |"is_triggered_only"                        {  IS_TRIGGERED_ONLY  }
    |"major"                                    {  MAJOR  }
    |"immediate"                                {  IMMEDIATE  }
    |"check_variable"                           {  CHECK_VARIABLE  }
    |"which"                                    {  WHICH  }
    |"value"                                    {  VALUE  }
    |"has_global_flag"                          {  HAS_GLOBAL_FLAG  }
    |"is_canal_enabled"                         {  IS_CANAL_ENABLED  }
    |"administration_spending"                  {  ADMINISTRATION_SPENDING  }
    |"ai"                                       {  AI  }
    |"alliance_with"                            {  ALLIANCE_WITH  }
    |"average_consciousness"                    {  AVERAGE_CONSCIOUSNESS  }
    |"badboy"                                   {  BADBOY  }
    |"big_producer"                             {  BIG_PRODUCER  }
    |"blockade"                                 {  BLOCKADE  }
    |"brigades_compare"                         {  BRIGADES_COMPARE  }
    |"can_nationalize"                          {  CAN_NATIONALIZE  }
    |"can_create_vassals"                       {  CAN_CREATE_VASSALS  }
    |"capital"                                  {  CAPITAL  }
    |"casus_belli"                              {  CASUS_BELLI  }
    |"citizenship_policy"                       {  CITIZENSHIP_POLICY  }
    |"civilization_progress"                    {  CIVILIZATION_PROGRESS  }
    |"civilized"                                {  CIVILIZED  }
    |"colonial_nation"                          {  COLONIAL_NATION  }
    |"constructing_cb_progress"                 {  CONSTRUCTING_CB_PROGRESS  }
    |"constructing_cb_type"                     {  CONSTRUCTING_CB_TYPE  }
    |"controls"                                 {  CONTROLS  }
    |"crime_fighting"                           {  CRIME_FIGHTING  }
    |"crisis_exist"                             {  CRISIS_EXIST  }
    |"culture_has_union_tag"                    {  CULTURE_HAS_UNION_TAG  }
    |"diplomatic_influence"                     {  DIPLOMATIC_INFLUENCE  }
    |"who"                                      {  WHO  }
    |"economic_policy"                          {  ECONOMIC_POLICY  }
    |"economic_reform_name"                     {  ECONOMIC_REFORM_NAME  }
    |"education_spending"                       {  EDUCATION_SPENDING  }
    |"election"                                 {  ELECTION  }
    |"exists"                                   {  EXISTS  }
    |"government"                               {  GOVERNMENT  }
    |"great_wars_enabled"                       {  GREAT_WARS_ENABLED  }
    |"have_core_in"                             {  HAVE_CORE_IN  }
    |"has_country_flag"                         {  HAS_COUNTRY_FLAG  }
    |"has_country_modifier"                     {  HAS_COUNTRY_MODIFIER  }
    |"has_cultural_sphere"                      {  HAS_CULTURAL_SPHERE  }
    |"has_leader"                               {  HAS_LEADER  }
    |"has_recently_lost_war"                    {  HAS_RECENTLY_LOST_WAR  }
    |"has_unclaimed_cores"                      {  HAS_UNCLAIMED_CORES  }
    |"ideology"                                 {  IDEOLOGY  }
    |"industrial_score"                         {  INDUSTRIAL_SCORE  }
    |"in_sphere"                                {  IN_SPHERE  }
    |"invention"                                {  INVENTION  }
    |"involved_in_crisis"                       {  INVOLVED_IN_CRISIS  }
    |"is_claim_crisis"                          {  IS_CLAIM_CRISIS  }
    |"is_core"                                  {  IS_CORE  }
    |"is_cultural_union"                        {  IS_CULTURAL_UNION  }
    |"is_cultural_union"                        {  IS_CULTURAL_UNION  }
    |"is_culture_group"                         {  IS_CULTURE_GROUP  }
    |"is_disarmed"                              {  IS_DISARMED  }
    |"is_greater_power"                         {  IS_GREATER_POWER  }
    |"is_ideology_enabled"                      {  IS_IDEOLOGY_ENABLED  }
    |"is_independant"                           {  IS_INDEPENDANT  }
    |"is_liberation_crisis"                     {  IS_LIBERATION_CRISIS  }
    |"is_mobilised"                             {  IS_MOBILISED  }
    |"is_our_vassal"                            {  IS_OUR_VASSAL  }
    |"is_possible_vassal"                       {  IS_POSSIBLE_VASSAL  }
    |"is_secondary_power"                       {  IS_SECONDARY_POWER  }
    |"is_sphere_leader_of"                      {  IS_SPHERE_LEADER_OF  }
    |"is_vassal"                                {  IS_VASSAL  }
    |"is_substate"                              {  IS_SUBSTATE  }
    |"literacy"                                 {  LITERACY  }
    |"lost_national"                            {  LOST_NATIONAL  }
    |"middle_strata_everyday_needs"             {  MIDDLE_STRATA_EVERYDAY_NEEDS  }
    |"middle_strata_life_needs"                 {  MIDDLE_STRATA_LIFE_NEEDS  }
    |"middle_strata_luxury_needs"               {  MIDDLE_STRATA_LUXURY_NEEDS  }
    |"middle_tax"                               {  MIDDLE_TAX  }
    |"military_access"                          {  MILITARY_ACCESS  }
    |"military_reform_name"                     {  MILITARY_REFORM_NAME  }
    |"military_score"                           {  MILITARY_SCORE  }
    |"military_score"                           {  MILITARY_SCORE  }
    |"military_spending"                        {  MILITARY_SPENDING  }
    |"money"                                    {  MONEY  }
    |"nationalvalue"                            {  NATIONALVALUE  }
    |"national_provinces_occupied"              {  NATIONAL_PROVINCES_OCCUPIED  }
    |"neighbour"                                {  NEIGHBOUR  }
    |"num_of_allies"                            {  NUM_OF_ALLIES  }
    |"num_of_cities"                            {  NUM_OF_CITIES  }
    |"num_of_ports"                             {  NUM_OF_PORTS  }
    |"num_of_revolts"                           {  NUM_OF_REVOLTS  }
    |"number_of_states"                         {  NUMBER_OF_STATES  }
    |"num_of_substates"                         {  NUM_OF_SUBSTATES  }
    |"num_of_vassals"                           {  NUM_OF_VASSALS  }
    |"num_of_vassals_no_substates"              {  NUM_OF_VASSALS_NO_SUBSTATES  }
    |"owns"                                     {  OWNS  }
    |"part_of_sphere"                           {  PART_OF_SPHERE  }
    |"political_movement_strength"              {  POLITICAL_MOVEMENT_STRENGTH  }
    |"political_reform_name"                    {  POLITICAL_REFORM_NAME  }
    |"political_reform_want"                    {  POLITICAL_REFORM_WANT  }
    |"poor_strata_everyday_needs"               {  POOR_STRATA_EVERYDAY_NEEDS  }
    |"poor_strata_life_needs"                   {  POOR_STRATA_LIFE_NEEDS  }
    |"poor_strata_luxury_needs"                 {  POOR_STRATA_LUXURY_NEEDS  }
    |"poor_tax"                                 {  POOR_TAX  }
    |"pop_majority_culture"                     {  POP_MAJORITY_CULTURE  }
    |"pop_majority_ideology"                    {  POP_MAJORITY_IDEOLOGY  }
    |"pop_majority_religion"                    {  POP_MAJORITY_RELIGION  }
    |"pop_militancy"                            {  POP_MILITANCY  }
    |"prestige"                                 {  PRESTIGE  }
    |"primary_culture"                          {  PRIMARY_CULTURE  }
    |"accepted_culture"                         {  ACCEPTED_CULTURE  }
    |"produces"                                 {  PRODUCES  }
    |"rank"                                     {  RANK  }
    |"relation"                                 {  RELATION  }
    |"religious_policy"                         {  RELIGIOUS_POLICY  }
    |"revolt_percentage"                        {  REVOLT_PERCENTAGE  }
    |"rich_strata_everyday_needs"               {  RICH_STRATA_EVERYDAY_NEEDS  }
    |"rich_strata_life_needs"                   {  RICH_STRATA_LIFE_NEEDS  }
    |"rich_strata_luxury_needs"                 {  RICH_STRATA_LUXURY_NEEDS  }
    |"rich_tax"                                 {  RICH_TAX  }
    |"ruling_party"                             {  RULING_PARTY  }
    |"ruling_party_ideology"                    {  RULING_PARTY_IDEOLOGY  }
    |"slavery"                                  {  SLAVERY  }
    |"social_reform_name"                       {  SOCIAL_REFORM_NAME  }
    |"social_reform_want"                       {  SOCIAL_REFORM_WANT  }
    |"social_spending"                          {  SOCIAL_SPENDING  }
    |"stronger_army_than"                       {  STRONGER_ARMY_THAN  }
    |"substate_of"                              {  SUBSTATE_OF  }
    |"this_culture_union"                       {  THIS_CULTURE_UNION  }
    |"total_amount_of_divisions"                {  TOTAL_AMOUNT_OF_DIVISIONS  }
    |"total_amount_of_ships"                    {  TOTAL_AMOUNT_OF_SHIPS  }
    |"total_defensives"                         {  TOTAL_DEFENSIVES  }
    |"total_num_of_ports"                       {  TOTAL_NUM_OF_PORTS  }
    |"total_offensives"                         {  TOTAL_OFFENSIVES  }
    |"total_of_ours_sunk"                       {  TOTAL_OF_OURS_SUNK  }
    |"tag"                                      {  TAG_COND  }
    |"total_sea_battles"                        {  TOTAL_SEA_BATTLES  }
    |"total_sunk_by_us"                         {  TOTAL_SUNK_BY_US  }
    |"trade_policy"                             {  TRADE_POLICY  }
    |"truce_with"                               {  TRUCE_WITH  }
    |"unemployment"                             {  UNEMPLOYMENT  }
    |"unit_has_leader"                          {  UNIT_HAS_LEADER  }
    |"unit_in_battle"                           {  UNIT_IN_BATTLE  }
    |"upper_house"                              {  UPPER_HOUSE  }
    |"vassal_of"                                {  VASSAL_OF  }
    |"war"                                      {  WAR  }
    |"war_exhaustion"                           {  WAR_EXHAUSTION  }
    |"war_policy"                               {  WAR_POLICY  }
    |"war_with"                                 {  WAR_WITH  }
    |"average_consciousness"                    {  AVERAGE_CONSCIOUSNESS  }
    |"average_militancy"                        {  AVERAGE_MILITANCY  }
    |"can_build_factory"                        {  CAN_BUILD_FACTORY  }
    |"continent"                                {  CONTINENT  }
    |"controlled_by"                            {  CONTROLLED_BY  }
    |"controlled_by_rebels"                     {  CONTROLLED_BY_REBELS  }
    |"country_units_in_province"                {  COUNTRY_UNITS_IN_PROVINCE  }
    |"crime_fighting"                           {  CRIME_FIGHTING  }
    |"education_spending"                       {  EDUCATION_SPENDING  }
    |"empty"                                    {  EMPTY  }
    |"flashpoint_tension"                       {  FLASHPOINT_TENSION  }
    |"has_building"                             {  HAS_BUILDING  }
    |"has_culture_core"                         {  HAS_CULTURE_CORE  }
    |"has_empty_adjacent_province"              {  HAS_EMPTY_ADJACENT_PROVINCE  }
    |"has_empty_adjacent_state"                 {  HAS_EMPTY_ADJACENT_STATE  }
    |"has_factories"                            {  HAS_FACTORIES  }
    |"has_national_minority"                    {  HAS_NATIONAL_MINORITY  }
    |"has_pop_type"                             {  HAS_POP_TYPE  }
    |"has_province_flag"                        {  HAS_PROVINCE_FLAG  }
    |"has_province_modifier"                    {  HAS_PROVINCE_MODIFIER  }
    |"has_recent_imigration"                    {  HAS_RECENT_IMIGRATION  }
    |"is_accepted_culture"                      {  IS_ACCEPTED_CULTURE  }
    |"is_blockaded"                             {  IS_BLOCKADED  }
    |"is_capital"                               {  IS_CAPITAL  }
    |"is_coastal"                               {  IS_COASTAL  }
    |"is_colonial"                              {  IS_COLONIAL  }
    |"is_core"                                  {  IS_CORE  }
    |"is_ideology_enabled"                      {  IS_IDEOLOGY_ENABLED  }
    |"is_overseas"                              {  IS_OVERSEAS  }
    |"is_primary_culture"                       {  IS_PRIMARY_CULTURE  }
    |"is_state_capital"                         {  IS_STATE_CAPITAL  }
    |"is_state_religion"                        {  IS_STATE_RELIGION  }
    |"life_rating"                              {  LIFE_RATING  }
    |"literacy"                                 {  LITERACY  }
    |"military_spending"                        {  MILITARY_SPENDING  }
    |"minorities"                               {  MINORITIES  }
    |"owned_by"                                 {  OWNED_BY  }
    |"pop_militancy"                            {  POP_MILITANCY  }
    |"port"                                     {  PORT  }
    |"province_control_days"                    {  PROVINCE_CONTROL_DAYS  }
    |"province_id"                              {  PROVINCE_ID  }
    |"region"                                   {  REGION  }
    |"state_id"                                 {  STATE_ID  }
    |"terrain"                                  {  TERRAIN  }
    |"total_pops"                               {  TOTAL_POPS  }
    |"unemployment"                             {  UNEMPLOYMENT  }
    |"unemployment_by_type"                     {  UNEMPLOYMENT_BY_TYPE  }
    |"units_in_province"                        {  UNITS_IN_PROVINCE  }
    |"work_available"                           {  WORK_AVAILABLE  }
    |"agree_with_ruling_party"                  {  AGREE_WITH_RULING_PARTY  }
    |"cash_reserves"                            {  CASH_RESERVES  }
    |"consciousness"                            {  CONSCIOUSNESS  }
    |"culture"                                  {  CULTURE  }
    |"everyday_needs"                           {  EVERYDAY_NEEDS  }
    |"has_pop_culture"                          {  HAS_POP_CULTURE  }
    |"has_pop_religion"                         {  HAS_POP_RELIGION  }
    |"is_primary_culture"                       {  IS_PRIMARY_CULTURE  }
    |"is_accepted_culture"                      {  IS_ACCEPTED_CULTURE  }
    |"is_culture_group"                         {  IS_CULTURE_GROUP  }
    |"is_state_religion"                        {  IS_STATE_RELIGION  }
    |"life_needs"                               {  LIFE_NEEDS  }
    |"literacy"                                 {  LITERACY  }
    |"luxury_needs"                             {  LUXURY_NEEDS  }
    |"militancy"                                {  MILITANCY  }
    |"money"                                    {  MONEY  }
    |"political_reform_want"                    {  POLITICAL_REFORM_WANT  }
    |"pop_majority_culture"                     {  POP_MAJORITY_CULTURE  }
    |"pop_majority_ideology"                    {  POP_MAJORITY_IDEOLOGY  }
    |"pop_majority_religion"                    {  POP_MAJORITY_RELIGION  }
    |"religion"                                 {  RELIGION  }
    |"social_movement"                          {  SOCIAL_MOVEMENT  }
    |"social_reform_want"                       {  SOCIAL_REFORM_WANT  }
    |"strata"                                   {  STRATA  }
    |"unemployment"                             {  UNEMPLOYMENT  }
    |"badboy"                                   {  AND                  } 
    |"cb_generation_speed_modifier"             {  AND                  } 
    |"core_pop_militancy_modifier"              {  AND                  } 
    |"diplomatic_points_modifier"               {  AND                  } 
    |"education_efficiency_modifier"            {  AND                  } 
    |"factory_cost"                             {  AND                  } 
    |"factory_input"                            {  AND                  } 
    |"factory_output"                           {  AND                  } 
    |"factory_owner_cost"                       {  AND                  } 
    |"factory_throughput"                       {  AND                  } 
    |"global_assimilation_rate"                 {  AND                  } 
    |"global_immigrant_attract"                 {  AND                  } 
    |"global_pop_militancy_modifier"            {  AND                  } 
    |"global_population_growth"                 {  AND                  } 
    |"import_cost"                              {  AND                  } 
    |"influence_modifier"                       {  AND                  } 
    |"issue_change_speed"                       {  AND                  } 
    |"land_organisation"                        {  AND                  } 
    |"land_unit_start_experience"               {  AND                  } 
    |"leadership_modifier"                      {  AND                  } 
    |"loan_interest"                            {  AND                  } 
    |"max_loan_modifier"                        {  AND                  } 
    |"max_military_spending"                    {  AND                  } 
    |"max_social_spending"                      {  AND                  } 
    |"max_tariff"                               {  AND                  } 
    |"min_military_spending"                    {  AND                  } 
    |"min_social_spending"                      {  AND                  } 
    |"min_tariff"                               {  AND                  } 
    |"min_tariff"                               {  AND                  } 
    |"mobilization_economy_impact"              {  AND                  } 
    |"mobilization_impact"                      {  AND                  } 
    |"mobilisation_size"                        {  AND                  } 
    |"naval_organisation"                       {  AND                  } 
    |"naval_unit_start_experience"              {  AND                  } 
    |"non_accepted_pop_consciousness_modifier"  {  AND                  } 
    |"non_accepted_pop_militancy_modifier"      {  AND                  } 
    |"org_regain"                               {  AND                  } 
    |"political_reform_desire"                  {  AND                  } 
    |"prestige"                                 {  AND                  } 
    |"research_points"                          {  AND                  } 
    |"research_points_modifier"                 {  AND                  } 
    |"research_points_on_conquer"               {  AND                  } 
    |"rgo_output"                               {  AND                  } 
    |"rgo_throughput"                           {  AND                  } 
    |"ruling_party_support"                     {  AND                  } 
    |"social_reform_desire"                     {  AND                  } 
    |"suppression_points_modifier"              {  AND                  } 
    |"supply_consumption"                       {  AND                  } 
    |"poor_vote"                                {  AND                  } 
    |"tax_efficiency"                           {  AND                  } 
    |"industry_tech_research_bonus"             {  AND                  } 
    |"unit_start_experience"                    {  AND                  } 
    |"war_exhaustion"                           {  AND                  } 
    |"assimilation_rate"                        {  AND                  } 
    |"immigrant_attract"                        {  AND                  } 
    |"immigrant_push"                           {  AND                  } 
    |"life_rating"                              {  AND                  } 
    |"local_artisan_output"                     {  AND                  } 
    |"local_factory_input"                      {  AND                  } 
    |"local_factory_output"                     {  AND                  } 
    |"local_factory_throughput"                 {  AND                  } 
    |"local_repair"                             {  AND                  } 
    |"local_rgo_output"                         {  AND                  } 
    |"local_rgo_throughput"                     {  AND                  } 
    |"local_ruling_party_support"               {  AND                  } 
    |"local_ship_build"                         {  AND                  } 
    |"pop_consciousness_modifier"               {  AND                  } 
    |"population_growth"                        {  AND                  } 
    |"farm_rgo_eff"                             {  AND                  } 
    |"farm_rgo_size"                            {  AND                  } 
    |"goods_demand"                             {  AND                  } 
    |"rich_income_modifier"                     {  AND                  } 
    |"poor_life_needs"                          {  AND                  }                                                
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
