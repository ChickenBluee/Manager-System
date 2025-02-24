USE Manager_System;

INSERT INTO ROLE_ACCOUNT (ROLE_NAME) 
VALUES (N'admin'), (N'moderator'), (N'user');

INSERT INTO ACCOUNT (_ACCOUNT_, _PASSWORD_, _ROLE_) 
VALUES 
    ('nhiet',           '1',        'admin'),
    ('Administrastor',  'abc123!',  'admin'), 
    ('admin',           '123',      'admin'), 
    ('khang',           '1',        'admin'),
    ('nhiet',           '1',        'admin');
    
    