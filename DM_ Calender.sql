-- Cleaning DIMDATE TABLE 
SELECT 
  TOP (1000) [DateKey], 
  [FullDateAlternateKey] as Date, 
  --[DayNumberOfWeek],
  [EnglishDayNameOfWeek] as Day, 
  --[SpanishDayNameOfWeek],
  --[FrenchDayNameOfWeek],
  -- [DayNumberOfMonth],
  --[DayNumberOfYear],
  [WeekNumberOfYear] as Week, 
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName], 3) As MonthShot, 
  --,[SpanishMonthName],
  --,[FrenchMonthName],
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quater, 
  [CalendarYear] as Year -- [CalendarSemester],
  -- [FiscalQuarter],
  -- [FiscalYear],
  -- [FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear >= 2019;
