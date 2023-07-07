CREATE SCHEMA housing_data
    CREATE TABLE housing_data.country(
        id SERIAL PRIMARY KEY NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_day_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        date_month DATE NOT NULL,
        name_country VARCHAR(20) NOT NULL)

    CREATE TABLE housing_data.states(
        id SERIAL PRIMARY KEY NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_day_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        date_month DATE NOT NULL,
        name_state VARCHAR(20) NOT NULL,
        quality_flag BIT(1) NOT NULL
    )