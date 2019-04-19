select a.firstname, a.lastname, g.name
	from actor a
    inner join
     moviegenre mg
     on a.ID = mg.movieID
     inner join
     genre g
     on g.id = mg.genreID;
     