select count(*) from commodity_trade_statistics_data7;
select * from commodity_trade_statistics_data7;
select distinct(category),flow from commodity_trade_statistics_data7;
select (year), flow , trade_usd , country_or_area , category  
from commodity_trade_statistics_data7 where category = '01_live_animals' order by country_or_area;
select max(flow) , year, max(country_or_area) , category,
max(trade_usd)  from commodity_trade_statistics_data7;
select flow , max(commodity), max(trade_usd) from commodity_trade_statistics_data7;
select  country_or_area, flow, trade_usd from commodity_trade_statistics_data7 
group by  country_or_area  order by  trade_usd desc limit 20;
select  country_or_area, commodity, trade_usd from commodity_trade_statistics_data7 
group by  country_or_area  order by  trade_usd desc limit 20;
select  country_or_area, max(commodity) as maximum_value_commodity, trade_usd from commodity_trade_statistics_data7 
group by  country_or_area  order by  trade_usd desc limit 20;
select  country_or_area, flow, trade_usd, year from commodity_trade_statistics_data7 WHERE  flow IN ('Export', 'import')
group by  country_or_area order by  trade_usd desc limit 20;
select max(category), sum(trade_usd), country_or_area , flow , year from commodity_trade_statistics_data7 
group by   country_or_area order by  sum(trade_usd)  desc;
select country_or_area, sum(trade_usd) , (year) from commodity_trade_statistics_data7 
group by   country_or_area order by  sum(trade_usd)  desc limit 10;
select max(category), sum(trade_usd), country_or_area , flow , year , (quantity_name) from commodity_trade_statistics_data7 
group by   country_or_area order by  sum(trade_usd)  desc;
select country_or_area, sum(trade_usd), quantity , category , year from commodity_trade_statistics_data7
where category = '01_live_animals' group by   country_or_area order by  quantity desc limit 10; 
select country_or_area, sum(trade_usd), quantity , category , year , flow  from commodity_trade_statistics_data7
where category = '01_live_animals' group by   country_or_area order by  quantity desc limit 10; 
select country_or_area, sum(trade_usd), quantity , category , year from commodity_trade_statistics_data7
where category = '02_meat_and_edible_meat_offal' group by   country_or_area order by  quantity desc limit 10;
select country_or_area, sum(trade_usd), quantity , category , year , flow  from commodity_trade_statistics_data7
where category = '02_meat_and_edible_meat_offal' group by   country_or_area order by  quantity desc limit 10;
select sum(quantity), country_or_area from commodity_trade_statistics_data7 
group by country_or_area order by  sum(quantity) desc ;
select  country_or_area, flow, trade_usd, year from commodity_trade_statistics_data7 WHERE  flow IN ('Re-Export', 'Re-import')
group by  country_or_area order by  trade_usd desc limit 20;
select max(category), sum(trade_usd), country_or_area , flow , year , (quantity_name) from commodity_trade_statistics_data7 
where flow  = 'Export'group by   country_or_area order by  sum(trade_usd)  desc;
select max(category), sum(trade_usd), country_or_area , flow , year , (quantity_name) from commodity_trade_statistics_data7 
where flow  = 'import 'group by   country_or_area order by  sum(trade_usd)  desc;
select country_or_area , max(commodity), max(flow) , (trade_usd)  from commodity_trade_statistics_data7 
group by country_or_area order by (trade_usd) desc ;
select country_or_area , flow , max(commodity) from commodity_trade_statistics_data7 
where flow = 'Export' group by country_or_area;
select country_or_area, (weight_kg) , commodity from commodity_trade_statistics_data7 
group by country_or_area order by (weight_kg) desc;
select max(country_or_area), max(trade_usd) from commodity_trade_statistics_data7;



