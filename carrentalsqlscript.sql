CREATE TABLE dim_vehicle(
vehicle_id INT PRIMARY KEY NOT NULL
	,vehicle_model VARCHAR 
	,vehicle_cost REAL
	,vehicle_rating INT
	,vehicle_availability CHAR
)

CREATE TABLE dim_custmer (
renter_id INT PRIMARY KEY NOT NULL
	,renter_name VARCHAR
	,renter_emailid VARCHAR
	,renter_phoneno VARCHAR
)

CREATE TABLE dim_date (
date date
	,year date
	,month date
)


CREATE TABLE ft_order (
order_id INT PRIMARY KEY NOT NULL
	,vehicle_id INT REFERENCES dim_vehicle
	,renter_id INT REFERENCES dim_custmer
	,return_status CHAR 
	,pick_up_date DATE
	,return_date DATE
	,price_hour REAL
	,total_rental_hour TIME
)