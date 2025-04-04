-- 특정 인물이 작성한 게시물을 찾아보고싶을 때 
-- user와 score를 합쳐서 같이 찾아봐야함 
-- 1번 유저가 작성한 모든 점수(score)

-- 1번 유저를 먼저 골라냄
-- user = User.objects.get(id=1)
-- 그 유저가 갖고있는
-- user.score_set.all()

-- Score.objects.filter(user_id=1)

SELECT * 
FROM movies_user JOIN movies_score
ON movies_user.id = movies_score.user_id
WHERE movies_user.id = 1;


-- Movie.objects.get(id=100).categories.all() 
-- models.py에서 category 모델이랑 movies 모델이랑 다대다 관계로 category라는 이름으로 엮여있음
-- 100번 영화의 모든 카테고리를 찾기

-- 100번 영화가 어떤 카테고리인지

SELECT *
FROM movies_movie JOIN movies_category_movies
ON movies_movie.id = movies_category_movies.movie_id -- 위에 줄이랑 같은 코드로 테이블 한개가 만들어짐
JOIN movies_category
ON movies_category_movies.category_id = movies_category.id 
WHERE movies_movie.id=100;

-- drama 카테고리에 속한 모든 영화 출력
-- Category.objects.get(name='drama').movies.all()
-- Category.objects.filter(name='drama').movies.all()



SELECT *
FROM movies_category JOIN movies_category_movies
ON movies_category.id = movies_category_movies.category_id
JOIN movies_movie
ON movies_category_movies.movie_id = movies_movie.id
WHERE movies_category.name ='drama';
