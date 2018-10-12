CREATE TABLE user_subscription(
channel_id INT8 NOT NULL REFERENCES usr,
subscriber_id INT8 NOT NULL REFERENCES usr,
PRIMARY KEY (channel_id, subscriber_id)
)