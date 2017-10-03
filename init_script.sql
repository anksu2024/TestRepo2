create schema myDB;
use schema myDB;

create table issues (
    issue_id string,
    created_date string,
    severity string,
    priority string,
    status string,
    last_update_date string
);

insert into issues (issue_id, created_date, severity, priority, status, last_update_date) values ('I1', '2017-09-01 10:00:00', 'Medium', 'P1', 'Closed', '2017-09-30 19:30:00');
insert into issues (issue_id, created_date, severity, priority, status, last_update_date) values ('I2', '2017-09-05 11:00:01', 'Low', 'P4', 'Resolved', '2017-10-01 16:25:08');
insert into issues (issue_id, created_date, severity, priority, status, last_update_date) values ('I3', '2017-09-18 21:13:45', NULL, NULL, 'TODO', '2017-09-18 21:13:45');
insert into issues (issue_id, created_date, severity, priority, status, last_update_date) values ('I4', '2017-10-01 00:00:18', 'High', 'P2', 'In-Progress', '2017-10-01 00:00:18');

create table history (
    issue_id string,
    history_created_date string,
    field string,
    from_val string,
    to_val string
);

insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-01 18:00:00', 'Severity', '1', '2');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-02 18:30:00', 'Severity', '2', '3');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-08 18:30:00', 'Severity', '3', '2');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-02 19:17:01', 'Priority', NULL, '4');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-07 09:27:11', 'Priority', '4', '1');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-05 08:22:06', 'Status', NULL, 'TODO');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-06 01:32:53', 'Status', 'TODO', 'In-Progress');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-07 11:42:16', 'Status', 'In-Progress', 'Resolved');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I1', '2017-09-10 13:12:47', 'Status', 'Resolved', 'Closed');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I2', '2017-09-18 11:22:33', 'Status', 'TODO', 'In-Progress');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I2', '2017-09-25 18:36:54', 'Status', 'In-Progress', 'Deferred');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I2', '2017-10-01 00:07:01', 'Status', 'Deferred', 'Resolved');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I2', '2017-09-27 11:22:33', 'Priority', '2', '3');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I2', '2017-09-27 13:21:48', 'Priority', '3', '5');
insert into history (issue_id, history_created_date, field, from_val, to_val) values ('I2', '2017-09-29 07:28:19', 'Priority', '5', '4');

create table severity_lookup (
    s_id bigint,
    s_value string
);

insert into severity_lookup (s_id, s_value) values (1, 'High');
insert into severity_lookup (s_id, s_value) values (2, 'Medium');
insert into severity_lookup (s_id, s_value) values (3, 'Low');

create table priority_lookup (
    p_id bigint,
    p_value string
);

insert into priority_lookup (p_id, p_value) values (1, 'P1');
insert into priority_lookup (p_id, p_value) values (2, 'P2');
insert into priority_lookup (p_id, p_value) values (3, 'P3');
insert into priority_lookup (p_id, p_value) values (4, 'P4');
insert into priority_lookup (p_id, p_value) values (5, 'P5');


