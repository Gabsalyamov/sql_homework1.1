CREATE table if not exists style (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) not null
);


CREATE table if not exists executor (
    id SERIAL PRIMARY KEY,
    nickname VARCHAR(60) NOT NULL,
    style_id INTEGER REFERENCES style(id)
);

CREATE table if not exists album (
    id SERIAL primary KEY,
    name VARCHAR(100) NOT NULL,
    release INTEGER,
    executor_id INTEGER REFERENCES executor(id)
);

CREATE table if not exists music (
    id SERIAL primary KEY,
    name VARCHAR(100) NOT NULL,
    duration TIME,
    album_id INTEGER REFERENCES album(id)
);