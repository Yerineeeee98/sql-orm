-- 데이터 수정 UPDATE -> SET -> WHERE  

-- movie = Movie.objects.get(id=1)
-- movie.title = 'spider man'
-- movie.save()

-- 영화 이름 수정
SELECT * FROM movies_movie
WHERE  id = 1;

UPDATE movies_movie
SET title = 'iron man'
WHERE id =1;