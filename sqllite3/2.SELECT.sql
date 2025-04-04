-- Movie.objects.all()
SELECT * FROM movies_movie; -- * 는 전체 컬럼 갖고오기

-- User.objects.all()
SELECT * FROM movies_user;

-- Movie.objects.all().order_by('year') year순으로 오름차순으로 정렬
SELECT * FROM movies_movie 
ORDER BY year;

--  Movie.objects.all().order_by('-year') 내림차순으로 정렬
SELECT * FROM movies_movie 
ORDER BY year DESC;

SELECT * FROM movies_user
ORDER BY age;

-- User.objects.filter(age=31) 31살만 찾기
SELECT * FROM movies_user
WHERE age = 31;

SELECT COUNT(*) FROM movies_category
WHERE name = 'romance';

-- User.objects.filter(age__lt=20) less then = lt grater then = gt 
SELECT * FROM movies_user
WHERE age<20;

-- 20대 검색 User.objects.filter(age__gte=20, age__lt=30) gte 크거나 같다 
SELECT name, age FROM movies_user
WHERE age >=20 AND age<30;


-- Movie.objects.filter(Q(year__lt=2000)|Q(year__gt=2010))
SELECT title, year FROM movies_movie
WHERE year < 2000 OR year > 2010;

-- 가장 최근에 개봉한 영화보기 Movie.objects.aggregate(Max('year'))
SELECT title, MAX(year) FROM movies_movie;

-- 평균나이보기 User.objects.aggregate(Avg('age'))
SELECT AVG(age) FROM movies_user;


-- Movie.objects.filter(title__contains='the') the가 포함된 
SELECT * FROM movies_movie
WHERE title LIKE '%the%';


-- Movie.obhects.filter(title__startswith='the')
SELECT * FROM movies_movie
WHERE title LIKE 'the%'; -- the 앞는 아무것도 없어야하고 뒤에는 어떤 글자가와도 상관없음

-- Movie.objects.filter(title__endwith='on.')
SELECT * FROM movies_movie
WHERE title LIKE '%on.';


-- ORM 에서 사용하려면 정규표현식을 사용해야함 
SELECT * FROM movies_movie
WHERE title LIKE '%g__d%'; -- g로 시작해서 d로 끝나는 4글자 

-- 1번 영화의 평균 평점 Score.objects.filter(movie_id=1).aggregate(Max('value'), Avg('value'))
SELECT MAX(value), AVG(value) FROM movies_score
WHERE movie_id =1; -- 1번 영화만 가져옴

-- 1번 유저가 작성한 리뷰의 개수 Score.objects.filter(user_id=1).count() / len(Score.objects.filter(user_id=1))
SELECT COUNT(*) FROM movies_score
WHERE user_id = 1;

-- User.objects.values('country').distinct().count() 영화배우들의 중복을 제거한 출신지 
SELECT COUNT(DISTINCT country) FROM movies_user; -- DISTINCT 중복을 제거하는 코드

-- 20대의 배우 찾기 User.objects.filter(age__range=[20, 29])
SELECT * FROM movies_user
WHERE age BETWEEN 20 AND 29;

-- 2000, 2005, 2010년대 영화 찾기
-- Movie.objects.filter(year__in=[2000, 2005, 2010])
SELECT * FROM movies_movie
WHERE year IN (2000, 2005, 2010);