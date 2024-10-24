CREATE TABLE status
(
    id      BIGINT GENERATED BY DEFAULT AS IDENTITY,
    version INT          NOT NULL,
    name    VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE company
(
    id      BIGINT GENERATED BY DEFAULT AS IDENTITY,
    version INT          NOT NULL,
    name    VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE contact
(
    id         BIGINT GENERATED BY DEFAULT AS IDENTITY,
    version    INT          NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL,
    email      VARCHAR(255) NOT NULL,
    company_id BIGINT       NOT NULL,
    status_id  BIGINT       NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_contact_company FOREIGN KEY (company_id) REFERENCES company (id),
    CONSTRAINT fk_contact_status FOREIGN KEY (status_id) REFERENCES status (id)
);