CREATE TABLE  IF NOT EXISTS partners (
    id INT NOT NULL,
    hash VARCHAR(32) UNIQUE NOT NULL
);

CREATE TABLE  IF NOT EXISTS players (
    id INT NOT NULL,
    hash VARCHAR(32) REFERENCES partners(hash) NOT NULL,
    suds JSONB
);

CREATE TABLE  IF NOT EXISTS events (
    id INT PRIMARY KEY,
    previous_hash VARCHAR(32) REFERENCES partners(hash) NOT NULL,
    previous_subs JSONB,
    event_time TIMESTAMP WITH TIME ZONE NOT NULL,
    is_activations BOOLEAN NOT NULL
);
