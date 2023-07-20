capital(goa,panaji).
capital(maharashtra,mumbai).
capital(delhi,"new delhi").
capital("andhra pradesh",amaravati).
capital("arunachal pradesh",itanagar).
capital(assam,dispur).
capital(chhattisgarh,raipur).
capital(gujarat,gandhinagar).
capital(haryana,chandigarh).
capital("himachal pradesh",shimla).
capital(jharkhand,ranchi).
capital(karnataka,bengaluru).
capital(kerala,thiruvananthapuram).
capital("madhya pradesh",bhopal).
capital(manipur,imphal).
capital(meghalaya,shillong).
capital(mizoram,aizawl).
capital(nagaland,kohima).
capital(odisha,bhubaneswar).
capital(punjab,chandigarh).
capital(rajasthan,jaipur).
capital(sikkim,gangtok).
capital("tamil nadu",chennai).
capital(telangana,hyderabad).
capital(tripura,agartala).
capital("uttar pradesh",lucknow).
capital(uttarakhand,dehradun).
capital("west bengal",kolkata).

states:- check_no_times(3).

check_no_times(0).
check_no_times(L):-  nl, repeat, write('Enter the state: '), read(N), write('Enter the capital: '), read(P), (capital(N,P) ->  write('Correct'), nl, nl, fail;not(capital(N,P)) -> K is L-1, write('Wrong'), nl, write('No. of tries left: '), write(K), nl, check_no_times(K)).




