CREATE TABLE IF NOT EXISTS symbols (
    symbol VARCHAR(20) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS daily_data (
    date DATE NOT NULL,
    time TIME,
    symbol VARCHAR(20) NOT NULL,
    open FLOAT,
    high FLOAT,
    low FLOAT,
    close FLOAT,
    volume BIGINT,
    CONSTRAINT fk_symbol FOREIGN KEY(symbol) REFERENCES symbols(symbol)
);

CREATE INDEX IF NOT EXISTS idx_symbol ON daily_data(symbol);
CREATE INDEX IF NOT EXISTS idx_date ON daily_data(date);

