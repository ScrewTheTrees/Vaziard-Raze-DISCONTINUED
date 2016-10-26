if entity_health<entity_max_health && entity_health>0
entity_health+=entity_health_regen;

if entity_health>entity_max_health
entity_health=entity_max_health;


if entity_mana<entity_max_mana && entity_mana>0
entity_mana+=entity_mana_regen;

if entity_mana>entity_max_mana
entity_mana=entity_max_mana;


if entity_stamina<entity_max_stamina && entity_stamina>0
entity_stamina+=entity_stamina_regen;

if entity_stamina>entity_max_stamina
entity_stamina=entity_max_stamina;


entity_bonus_health=0;
entity_bonus_mana=0;
entity_bonus_stamina=0;
