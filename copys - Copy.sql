
\COPY public.actors(actor_id, first_name, last_name, last_update) FROM stdin;
\.
\COPY public.actors(actor_id, first_name, last_name, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3057.dat';

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
-- Data for Name: costumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.costumers (costumer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update, active) FROM stdin;
\.
\COPY public.costumers (costumer_id, store_id, first_name, last_name, email, address_id, activebool, create_date, last_update, active) FROM '/var/www/html/scripts/DatabaseAviano/3055.dat';

--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.films (film_id, title, description, release_year, lenguage_id, rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext) FROM stdin;
\.
\COPY public.films (film_id, title, description, release_year, lenguage_id, rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext) FROM '/var/www/html/scripts/DatabaseAviano/3061.dat';

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
-- Data for Name: lenguage; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.lenguages (lenguage_id, name, last_update) FROM stdin;
\.
\COPY public.lenguages (lenguage_id, name, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3073.dat';

--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.payments (payment_id, costumer_id, staff_id, rental_id, amount, payment_date) FROM stdin;
\.
\COPY public.payments (payment_id, costumer_id, staff_id, rental_id, amount, payment_date) FROM '/var/www/html/scripts/DatabaseAviano/3075.dat';

--
-- Data for Name: rental; Type: TABLE DATA; Schema: public; Owner: postgres
--

\COPY public.rentals (rental_id, rental_date, inventory_id, costumer_id, return_date, staff_id, last_update) FROM stdin;
\.
\COPY public.rentals (rental_id, rental_date, inventory_id, costumer_id, return_date, staff_id, last_update) FROM '/var/www/html/scripts/DatabaseAviano/3077.dat';

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

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actor_pkey PRIMARY KEY (actor_id);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: costumer costumer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costumers
    ADD CONSTRAINT costumer_pkey PRIMARY KEY (costumer_id);


--
-- Name: film_actor film_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_actors
    ADD CONSTRAINT film_actor_pkey PRIMARY KEY (actor_id, film_id);


--
-- Name: film_category film_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_categories
    ADD CONSTRAINT film_category_pkey PRIMARY KEY (film_id, category_id);


--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT film_pkey PRIMARY KEY (film_id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id);


--
-- Name: lenguage lenguage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lenguages
    ADD CONSTRAINT lenguage_pkey PRIMARY KEY (lenguage_id);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);


--
-- Name: rental rental_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rental_pkey PRIMARY KEY (rental_id);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- Name: store store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT store_pkey PRIMARY KEY (store_id);


--
-- Name: film_fulltext_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX film_fulltext_idx ON public.films USING gist (fulltext);


--
-- Name: idx_actor_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_actor_last_name ON public.actors USING btree (last_name);


--
-- Name: idx_fk_address_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_address_id ON public.costumers USING btree (address_id);


--
-- Name: idx_fk_city_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_city_id ON public.adresses USING btree (city_id);


--
-- Name: idx_fk_country_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_country_id ON public.cities USING btree (country_id);


--
-- Name: idx_fk_costumer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_costumer_id ON public.payments USING btree (costumer_id);


--
-- Name: idx_fk_film_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_film_id ON public.film_actors USING btree (film_id);


--
-- Name: idx_fk_inventory_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_inventory_id ON public.rentals USING btree (inventory_id);


--
-- Name: idx_fk_lenguage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_lenguage_id ON public.films USING btree (lenguage_id);


--
-- Name: idx_fk_rental_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_rental_id ON public.payments USING btree (rental_id);


--
-- Name: idx_fk_staff_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_staff_id ON public.payments USING btree (staff_id);


--
-- Name: idx_fk_store_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fk_store_id ON public.costumers USING btree (store_id);


--
-- Name: idx_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_last_name ON public.costumers USING btree (last_name);


--
-- Name: idx_store_id_film_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_store_id_film_id ON public.inventories USING btree (store_id, film_id);


--
-- Name: idx_title; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_title ON public.films USING btree (title);


--
-- Name: idx_unq_manager_staff_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_unq_manager_staff_id ON public.stores USING btree (manager_staff_id);


--
-- Name: idx_unq_rental_rental_date_inventory_id_costumer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_unq_rental_rental_date_inventory_id_costumer_id ON public.rentals USING btree (rental_date, inventory_id, costumer_id);


--
-- Name: film film_fulltext_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER film_fulltext_trigger BEFORE INSERT OR UPDATE ON public.films FOR EACH ROW EXECUTE PROCEDURE tsvector_update_trigger('fulltext', 'pg_catalog.english', 'title', 'description');


--
-- Name: actor last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.actors FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: address last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.adresses FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: category last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.category FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: city last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.cities FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: country last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.countries FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: costumer last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.costumers FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: film last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.films FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: film_actor last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.film_actors FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: film_category last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.film_categories FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: inventory last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.inventories FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: lenguage last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.lenguages FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: rental last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.rentals FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: staff last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.staffs FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: store last_updated; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.stores FOR EACH ROW EXECUTE PROCEDURE public.last_updated();


--
-- Name: costumer costumer_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.costumers
    ADD CONSTRAINT costumer_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.adresses(address_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: film_actor film_actor_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_actors
    ADD CONSTRAINT film_actor_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES public.actors(actor_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: film_actor film_actor_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_actors
    ADD CONSTRAINT film_actor_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: film_category film_category_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_categories
    ADD CONSTRAINT film_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: film_category film_category_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_categories
    ADD CONSTRAINT film_category_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: film film_lenguage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT film_lenguage_id_fkey FOREIGN KEY (lenguage_id) REFERENCES public.lenguages(lenguage_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: address fk_address_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT fk_address_city FOREIGN KEY (city_id) REFERENCES public.cities(city_id);


--
-- Name: city fk_city; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT fk_city FOREIGN KEY (country_id) REFERENCES public.countries(country_id);


--
-- Name: inventory inventory_film_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventory_film_id_fkey FOREIGN KEY (film_id) REFERENCES public.films(film_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: payment payment_costumer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_costumer_id_fkey FOREIGN KEY (costumer_id) REFERENCES public.costumers(costumer_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: payment payment_rental_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_rental_id_fkey FOREIGN KEY (rental_id) REFERENCES public.rentals(rental_id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: payment payment_staff_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staffs(staff_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rental rental_costumer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rental_costumer_id_fkey FOREIGN KEY (costumer_id) REFERENCES public.costumers(costumer_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rental rental_inventory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rental_inventory_id_fkey FOREIGN KEY (inventory_id) REFERENCES public.inventories(inventory_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rental rental_staff_id_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rental_staff_id_key FOREIGN KEY (staff_id) REFERENCES public.staffs(staff_id);


--
-- Name: staff staff_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staff_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.adresses(address_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: store store_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT store_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.adresses(address_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: store store_manager_staff_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT store_manager_staff_id_fkey FOREIGN KEY (manager_staff_id) REFERENCES public.staffs(staff_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

