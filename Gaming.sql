create database Gaming;
use Gaming;
select * from gaming.online_gaming_behavior_dataset;
rename table online_gaming_behavior_dataset to online_game;
select * from online_game;
describe online_game;
select * from online_game
limit 10;

# total players
select count(distinct PlayerID) as total_players from online_game;

# averge play time
select avg(PlayTimeHours) as avg_play_time from online_game;

# total revenue
select sum(InGamePurchases) as total_revenue from online_game;

# revenue by game gener
select GameGenre,sum(InGamePurchases) as total_revenue from online_game
group by GameGenre
order by total_revenue desc;

# engement by game difficulty
select GameDifficulty,count(*) as total_players from online_game
group by GameDifficulty;

# averge session duration by gender
select Gender,avg(AvgSessionDurationMinutes) as avg_session from online_game
group by Gender
order by avg_session desc;

# distribution
select EngagementLevel,count(*) as total_players from online_game
group by EngagementLevel
order by total_players;

# high engement players
select PlayerID,PlayTimeHours,SessionsPerWeek from online_game
where EngagementLevel="High"
order by PlayTimeHours desc;

# Does more session = more purchase?
select case
 when SessionsPerWeek <3 then "Low"
 when SessionsPerWeek between 3 and 6 then "Medium"
 else "High"
 end  as session_category,
 avg(InGamePurchases) as avg_purchase from online_game
 group by session_category;
 
 
