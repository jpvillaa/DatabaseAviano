
\COPY public.actors (actor_id, first_name, last_name, last_update) FROM stdin;
\.
\COPY public.actors (actor_id, first_name, last_name, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3057.dat';

--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.adresses (address_id, address, address2, district, city_id, postal_code, phone, last_update) FROM stdin;
\.
\COPY public.adresses (address_id, address, address2, district, city_id, postal_code, phone, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3065.dat';

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.categories (category_id, name, last_update) FROM stdin;
\.
\COPY public.categories (category_id, name, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3059.dat';

--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.cities (city_id, city, country_id, last_update) FROM stdin;
\.
\COPY public.cities (city_id, city, country_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3067.dat';

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.countries (country_id, country, last_update) FROM stdin;
\.
\COPY public.countries (country_id, country, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3069.dat';

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.customers (customer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update, active) FROM stdin;
\.
\COPY public.customers (customer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update, active) FROM '/var/www/html/scripts/DatabaseAviano/3055.dat';

--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.films (film_id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext) FROM stdin;
\.
\COPY public.films (film_id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext) FROM '/var/www/html/scripts/DatabaseAviano/3061.dat';

--
-- Data for Name: film_actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.film_actors (actor_id, film_id, last_update) FROM stdin;
\.
\COPY public.film_actors (actor_id, film_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3062.dat';

--
-- Data for Name: film_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.film_categories (film_id, category_id, last_update) FROM stdin;
\.
\COPY public.film_categories (film_id, category_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3063.dat';

--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.inventories (inventory_id, film_id, store_id, last_update) FROM stdin;
\.
\COPY public.inventories (inventory_id, film_id, store_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3071.dat';

--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.languages (language_id, name, last_update) FROM stdin;
\.
\COPY public.languages (language_id, name, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3073.dat';

--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.payments (payment_id, customer_id, staff_id, rental_id, amount, payment_date) FROM stdin;
\.
\COPY public.payments (payment_id, customer_id, staff_id, rental_id, amount, payment_date) FROM '/var/www/html/scripts/DatabaseAviano/3075.dat';

--
-- Data for Name: rental; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.rentals (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update) FROM stdin;
\.
\COPY public.rentals (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3077.dat';

--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.staffs (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture) FROM stdin;
\.
\COPY public.staffs (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture) FROM '/var/www/html/scripts/DatabaseAviano/3079.dat';

--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.stores (store_id, manager_staff_id, address_id, last_update) FROM stdin;
\.
\COPY public.stores (store_id, manager_staff_id, address_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3081.dat';
