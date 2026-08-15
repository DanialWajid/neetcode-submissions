select first_name, last_name, city,state from person 
Left JOIN address on person.person_id = address.person_id;
