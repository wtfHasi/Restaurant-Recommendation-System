:- use_module(library(pce)).

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
restaurant(baja_fresh, mexican, mid_range, casual, downtown).
restaurant(pho_24, asian, mid_range, casual, midtown).
restaurant(bistro_b, french, high_end, formal, uptown).
restaurant(leon, fast_food, cheap, casual, downtown).
restaurant(jollibee, fast_food, cheap, casual, downtown).
restaurant(nando, fast_food, mid_range, casual, uptown).
restaurant(subway, fast_food, cheap, casual, downtown).
restaurant(hard_rock_cafe, american, high_end, formal, downtown).
restaurant(the_grove, british, high_end, formal, midtown).
restaurant(blue_lagoon, seafood, high_end, formal, uptown).
restaurant(smith_and_wollensky, american, high_end, formal, midtown).
restaurant(ihop, fast_food, cheap, casual, downtown).
restaurant(cracker_barrel, american, mid_range, casual, midtown).
restaurant(texas_roadhouse, american, mid_range, casual, uptown).
restaurant(pappadeaux, seafood, high_end, formal, downtown).
restaurant(ruths_chris, american, high_end, formal, uptown).
restaurant(waffles_n_more, fast_food, cheap, casual, downtown).
restaurant(saltgrass_steakhouse, american, mid_range, casual, uptown).
restaurant(mediterranean_grill, mediterranean, mid_range, casual, midtown).
restaurant(greek_bistro, mediterranean, high_end, formal, midtown).
restaurant(panera_bread, fast_food, mid_range, casual, downtown).
restaurant(earls_kitchen, american, high_end, formal, midtown).
restaurant(bojangles, fast_food, cheap, casual, uptown).
restaurant(zaxbys, fast_food, cheap, casual, downtown).
restaurant(raising_caness, fast_food, mid_range, casual, midtown).
restaurant(little_caesars, fast_food, cheap, casual, uptown).
restaurant(tgi_fridays, american, mid_range, casual, downtown).
restaurant(chick_fil_a, fast_food, mid_range, casual, midtown).
restaurant(dairy_queen, fast_food, cheap, casual, downtown).
restaurant(papa_johns, fast_food, mid_range, casual, uptown).
restaurant(ruby_tuesday, american, mid_range, casual, downtown).
restaurant(moes_southwest_grill, mexican, mid_range, casual, midtown).
restaurant(del_taco, fast_food, cheap, casual, uptown).
restaurant(whataburger, fast_food, mid_range, casual, downtown).
restaurant(fuddruckers, american, mid_range, casual, midtown).
restaurant(genghis_grill, asian, mid_range, casual, midtown).
restaurant(the_capital_grille, american, high_end, formal, uptown).
restaurant(joes_crab_shack, seafood, mid_range, casual, downtown).
restaurant(black_angus, american, mid_range, casual, uptown).
restaurant(spago, italian, high_end, formal, midtown).
restaurant(burgerfi, fast_food, mid_range, casual, uptown).
restaurant(cinnabon, fast_food, cheap, casual, downtown).
restaurant(starbucks, fast_food, mid_range, casual, midtown).
restaurant(dunkin_donuts, fast_food, cheap, casual, uptown).
restaurant(krispy_kreme, fast_food, cheap, casual, downtown).
restaurant(seasons_52, american, high_end, formal, midtown).
restaurant(the_palm, american, high_end, formal, downtown).
restaurant(bubba_gump, seafood, mid_range, casual, uptown).
restaurant(chevys_fresh_mex, mexican, mid_range, casual, midtown).
restaurant(la_madeleine, french, mid_range, casual, downtown).
restaurant(teds_montana_grill, american, mid_range, casual, uptown).
restaurant(yard_house, american, mid_range, casual, midtown).
restaurant(flemings, american, high_end, formal, uptown).
restaurant(o_charleys, american, mid_range, casual, downtown).
restaurant(bonefish_grill, seafood, high_end, formal, midtown).
restaurant(pottery_house_cafe, american, mid_range, casual, downtown).
restaurant(old_spaghetti_factory, italian, mid_range, casual, uptown).
restaurant(fish_daddies, seafood, mid_range, casual, midtown).
restaurant(steak_n_shake, fast_food, cheap, casual, downtown).
restaurant(smashburger, fast_food, mid_range, casual, uptown).
restaurant(fogo_de_chao, brazilian, high_end, formal, downtown).
restaurant(tex_mex, mexican, mid_range, casual, midtown).
restaurant(port_of_call, seafood, high_end, formal, downtown).
restaurant(freestyle_poke, fast_food, mid_range, casual, uptown).
restaurant(silver_diner, american, mid_range, casual, midtown).
restaurant(gelato_shop, italian, cheap, casual, downtown).

% Rule for collecting multiple recommendations
recommend_list([], _, _, _, _).
recommend_list([Restaurant | Rest], Type, Price, Ambiance, Location) :-
    restaurant(Restaurant, Type, Price, Ambiance, Location),
    recommend_list(Rest, Type, Price, Ambiance, Location).

% Get a list of all matching restaurants
find_restaurants(Type, Price, Ambiance, Location, Restaurants) :-
    findall(Restaurant, restaurant(Restaurant, Type, Price, Ambiance, Location), Restaurants).

% GUI for user input and displaying recommendations
start_gui :- 
    new(Dialog, dialog('Restaurant Recommendation System')),

    % Set dialog aesthetics
    send(Dialog, size, size(700, 600)),
    send(Dialog, background, colour(lightgray)),

    % Greeting label
    send(Dialog, append, new(Greeting, label(greeting, 'Restaurant Recommendation System!'))),
    send(Greeting, font, font('Helvetica Neue', bold, 24)),
    send(Greeting, alignment, center),
    send(Greeting, colour, colour(darkgreen)),
    send(Dialog, gap, size(0, 20)),  % Increase vertical space after greeting

    % Instructional label
    send(Dialog, append, new(Instruction, label(instruction, 'Please select your preferences:'))),
    send(Instruction, font, font('Helvetica Neue', normal, 14)),
    send(Instruction, alignment, center),
    send(Instruction, colour, colour(darkblue)),
    send(Dialog, gap, size(0, 20)),  % Increase vertical space after instruction

    % Grid for user preferences without labels
    new(PrefGrid, dialog_group('Preferences', group)),
    send(Dialog, append, PrefGrid),

    % Create user input fields and align horizontally with extra vertical spacing
    new(FoodType, menu(food_type, cycle)),
    send_list(FoodType, append, [fast_food, italian, japanese, american, mexican, asian, seafood, french, british]),
    send(PrefGrid, append, FoodType, right),
    send(Dialog, gap, size(0, 20)),  % Add space between preference items

    new(PriceRange, menu(price_range, cycle)),
    send_list(PriceRange, append, [cheap, mid_range, high_end]),
    send(PrefGrid, append, PriceRange, right),
    send(Dialog, gap, size(0, 20)),  % Add space between preference items

    new(AmbianceType, menu(ambiance, cycle)),
    send_list(AmbianceType, append, [casual, formal]),
    send(PrefGrid, append, AmbianceType, right),
    send(Dialog, gap, size(0, 20)),  % Add space between preference items

    new(LocationType, menu(location, cycle)),
    send_list(LocationType, append, [downtown, uptown, midtown]),
    send(PrefGrid, append, LocationType, right),
    send(Dialog, gap, size(0, 20)),  % Add space between preference items

    % Button to trigger recommendation
    send(Dialog, append, new(Recommend_Button, button('Get Recommendation', 
        message(@prolog, recommend_gui, FoodType?selection, PriceRange?selection, AmbianceType?selection, LocationType?selection, Dialog)))),

    send(Recommend_Button, colour, colour(black)),
    send(Recommend_Button, background, colour(darkgreen)),
    send(Recommend_Button, font, font('Helvetica Neue', bold, 12)),
    send(Recommend_Button, width, 150),
    send(Dialog, gap, size(0, 20)),  % Add space before the result label

    % Field to display result
    new(Result_Label, label(result, 'Your recommendation will appear here.')),
    send(Result_Label, font, font('Helvetica Neue', normal, 14)),
    send(Result_Label, alignment, center),
    send(Result_Label, colour, colour(black)),
    send(Dialog, append, Result_Label),

    % Display the window
    send(Dialog, open).

% Recommendation GUI handler for multiple restaurants
recommend_gui(FoodType, Price, Ambiance, Location, Dialog) :- 
    find_restaurants(FoodType, Price, Ambiance, Location, Restaurants),
    ( Restaurants \= [] ->
        % Format the restaurant list with line breaks
        atomic_list_concat(Restaurants, '\n', RestaurantList),
        format(atom(Message), 'We recommend you try:\n~w', [RestaurantList])
    ; 
        Message = 'Sorry, no matching restaurants found.'
    ),
    % Find the result label in the dialog and update it with red color
    get(Dialog, member, result, Result_Label),
    send(Result_Label, selection, Message),
    send(Result_Label, colour, colour(darkgreen)).

% Start the program
:- start_gui.
