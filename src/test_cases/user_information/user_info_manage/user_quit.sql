USE test;

-- 회원 탈퇴
UPDATE user
   SET is_deleted = 1
 WHERE user_email = 'abc9541@gmail.com'
   AND user_pwd = 'hashed_pwd';

-- 회원 탈퇴 조회
SELECT
       user_name
     , user_email
     , user_nickname
     , is_deleted
  FROM user
 WHERE user_email = 'abc9541@gmail.com'
   AND is_deleted = TRUE;
