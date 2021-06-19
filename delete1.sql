Delete from books_subjects where subject in (select id from subjects where name = 'History');

Delete from subjects where name = 'History';