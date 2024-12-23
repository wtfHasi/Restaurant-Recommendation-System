% Facts: restaurant(Name, Type, Price, Ambiance, Location)
restaurant(mcdonalds, fast_food, cheap, casual, downtown).
restaurant(kfc, fast_food, cheap, casual, downtown).
restaurant(pizza_hut, fast_food, mid_range, casual, uptown).
restaurant(dominos, fast_food, mid_range, casual, uptown).
restaurant(olive_garden, italian, mid_range, formal, midtown).
restaurant(cheesecake_factory, american, high_end, formal, downtown).
restaurant(benihana, japanese, high_end, formal, downtown).
restaurant(bella_italia, italian, cheap, casual, uptown).
restaurant(sushi_bar, japanese, mid_range, casual, midtown).
restaurant(chipotle, fast_food, mid_range, casual, downtown).
restaurant(taco_bell, fast_food, cheap, casual, uptown).
restaurant(nobu, japanese, high_end, formal, downtown).
restaurant(popeyes, fast_food, cheap, casual, midtown).
restaurant(pf_changs, asian, high_end, formal, midtown).
restaurant(waffle_house, fast_food, cheap, casual, uptown).
restaurant(burger_king, fast_food, cheap, casual, downtown).
restaurant(outback_steakhouse, american, mid_range, casual, midtown).
restaurant(el_torito, mexican, mid_range, casual, downtown).
restaurant(sbarro, fast_food, cheap, casual, uptown).
restaurant(shake_shack, american, mid_range, casual, downtown).
restaurant(buffalo_wild_wings, american, mid_range, casual, midtown).
restaurant(cafe_rio, mexican, cheap, casual, downtown).
restaurant(jack_in_the_box, fast_food, cheap, casual, uptown).
restaurant(wingstop, fast_food, cheap, casual, downtown).
restaurant(la_parilla, mexican, mid_range, formal, midtown).
restaurant(maggianos, italian, high_end, formal, uptown).
restaurant(panda_express, asian, cheap, casual, downtown).
restaurant(five_guys, fast_food, mid_range, casual, downtown).
restaurant(longhorn_steakhouse, american, high_end, formal, midtown).
restaurant(chilis, american, mid_range, casual, uptown).
restaurant(qdoba, fast_food, mid_range, casual, midtown).
restaurant(red_lobster, seafood, high_end, formal, midtown).
restaurant(cheddars, american, mid_range, casual, uptown).
restaurant(bjs_brewhouse, american, mid_range, casual, midtown).

% Rule for recommendation
recommend(Restaurant, Type, Price, Ambiance, Location) :-
    restaurant(Restaurant, Type, Price, Ambiance, Location).