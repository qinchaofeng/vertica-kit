---实现类似Oracle中的ws_concat功能

SELECT node_state,
    MAX(DECODE(row_number, 1, a.node_name)) ||
    NVL(MAX(DECODE(row_number, 2, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 3, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 4, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 5, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 6, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 7, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 8, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 9, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 10, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 11, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 12, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 13, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 14, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 15, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 16, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 17, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 18, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 19, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 20, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 21, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 22, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 23, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 24, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 25, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 26, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 27, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 28, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 29, ',' || a.node_name)), '') ||
    NVL(MAX(DECODE(row_number, 30, ',' || a.node_name)), '') node_name
FROM (select node_state,node_name,row_number() over (partition by node_state order by node_name) row_number from nodes) a
group by node_state;
