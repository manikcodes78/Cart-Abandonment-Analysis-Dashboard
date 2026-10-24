--1--
CREATE TABLE session_summary (
    session_id TEXT PRIMARY KEY,
    visitorid BIGINT,
    session_start TIMESTAMP,
    session_end TIMESTAMP,
    total_events INTEGER,
    viewed BOOLEAN,
    added_to_cart BOOLEAN,
    purchased BOOLEAN
);

CREATE TABLE kpi_summary (
    metric TEXT PRIMARY KEY,
    value NUMERIC
);

--2--
SELECT COUNT(*) AS total_sessions
FROM session_summary;

--3--
SELECT
    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
    ) AS cart_sessions,

    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
          AND purchased = FALSE
    ) AS abandoned_sessions,

    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
          AND purchased = TRUE
    ) AS purchased_sessions
FROM session_summary;

--4--
SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE added_to_cart = TRUE
              AND purchased = FALSE
        )
        / NULLIF(
            COUNT(*) FILTER (
                WHERE added_to_cart = TRUE
            ),
            0
        ),
        2
    ) AS abandonment_rate_pct
FROM session_summary;

--5--
SELECT COUNT(*) AS total_sessions
FROM session_summary;

--6--

SELECT
    COUNT(*) AS total_sessions,
    COUNT(*) FILTER (
        WHERE viewed = TRUE
    ) AS viewed_sessions,
    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
    ) AS cart_sessions,
    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
          AND purchased = TRUE
    ) AS purchased_cart_sessions,
    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
          AND purchased = FALSE
    ) AS abandoned_sessions
FROM session_summary;

--7--
SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE added_to_cart = TRUE
              AND purchased = TRUE
        ) / NULLIF(
            COUNT(*) FILTER (
                WHERE added_to_cart = TRUE
            ), 0
        ),
        2
    ) AS cart_purchase_rate_pct
FROM session_summary;

--8--
SELECT
    DATE_TRUNC('month', session_start)::date AS month,
    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
    ) AS cart_sessions,
    COUNT(*) FILTER (
        WHERE added_to_cart = TRUE
          AND purchased = FALSE
    ) AS abandoned_sessions,
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE added_to_cart = TRUE
              AND purchased = FALSE
        ) / NULLIF(
            COUNT(*) FILTER (
                WHERE added_to_cart = TRUE
            ), 0
        ),
        2
    ) AS abandonment_rate_pct
FROM session_summary
GROUP BY 1
ORDER BY 1;