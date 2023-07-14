CREATE SCHEMA housing_data
    CREATE TABLE housing_data.country(
        date_month DATE NOT NULL,
        name_country VARCHAR(20) NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_days_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        PRIMARY KEY (name_country, date_month)
    )

    CREATE TABLE housing_data.states(
        date_month DATE NOT NULL,
        name_state VARCHAR(20) NOT NULL,
        name_country VARCHAR(20) NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_days_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        quality_flag BIT(1) NOT NULL,
        PRIMARY KEY (name_state, date_month)
    )

    CREATE TABLE housing_data.metro_city(
        date_month DATE NOT NULL,
        name_city VARCHAR(30) NOT NULL,
        name_state VARCHAR(30) NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_days_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        quality_flag BIT(1) NOT NULL,
        PRIMARY KEY (date_month, name_city)
    )

    CREATE TABLE housing_data.county(
        date_month DATE NOT NULL,
        name_county VARCHAR(30) NOT NULL,
        name_state VARCHAR(20) NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_days_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        quality_flag BIT(1) NOT NULL,
        PRIMARY KEY (date_month, name_county)
    )

    CREATE TABLE housing_data.zip(
        date_month DATE NOT NULL,
        zip_code INT NOT NULL,
        name_zip VARCHAR(30) NOT NULL,
        name_state VARCHAR(20) NOT NULL,
        median_list_price INT NOT NULL,
        active_list_count INT NOT NULL,
        median_days_market INT NOT NULL,
        price_increase_count INT NOT NULL,
        pending_count INT NOT NULL,
        average_list_price INT NOT NULL,
        median_square_feet INT NOT NULL,
        price_reduced_count INT NOT NULL,
        quality_flag BIT(1) NOT NULL
        PRIMARY KEY (date_month, zip_code)
    )