Q1 . write a (simple!) query to output locations (documents) with a popularity of >=50. Create a second collection (in the same DB) called 'Spiro', and insert the above data into it [you can have the step size be 0.1 so that it's not too much data. Create a third collection called 'NPS' [https://www.nps.gov/], grab this data, add it (just the features array): https://www.nps.gov/lib/npmap.js/4.0.0/examples/data/national-parks.geojson.

Q2 . Visualize your 13 locations

Q3 . Write a query (in the chart area) where you would specify a bounding box (lower-left location, upper-right location) to display just the northern half of your 13 locations. Take a screenshot of the query and the result.

Q4 . Bring your Spirograph data into a new map :) Take a screenshot.

Q5 .  Bring in all the national parks into another map - cool! All 396 are visible, on a map of the entire US. Write a query to output just the locations that are contained within a triangle that you'd specify - here is a suggested triangle. Make the triangle be equilateral, as best as you can. It's very useful to be able to specify an arbitrary bounding polygon (in this case, a triangle). Take a screenshot.

Q6 . Visualize all your 13 locations again, using this chart type instead: https://docs.mongodb.com/charts/saas/chart-type-reference/geospatial-scatter/#std-label-scatter-ref [be sure to use the 'Size' aggregation encoding channel to vary the displayed location size, based on the 'popularity' key you created :)] If you like, you can even add another key called 'locationType', and provide values such as 'home', 'library'. 'restaurant' etc. - then you can use the 'Color' encoding channel together with this key, to color the locations according to type
