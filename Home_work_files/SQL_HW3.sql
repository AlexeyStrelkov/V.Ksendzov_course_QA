-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select E.employee_name, S.monthly_salary  
	from employee_salary as ES
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select E.employee_name, S.monthly_salary  
	from employee_salary as ES
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. 
--    (ЗП есть, но не понятно кто её получает.)

select S.monthly_salary 
	from employee_salary as ES
	join salary S on ES.salary_id = S.id
	left join employees E on ES.employee_id = E.id
	where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним
--    не назначен. (ЗП есть, но не понятно кто её получает.)

select S.monthly_salary 
	from employee_salary as ES
	join salary S on ES.salary_id = S.id
	left join employees E on ES.employee_id = E.id
	where employee_name is null and monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.

select E.employee_name 
	from employee_salary as ES
	join salary S on ES.salary_id = S.id
	right join employees E on ES.employee_id = E.id
	where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.

select E.employee_name, R.role_name
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id;

-- 7. Вывести имена и должность только Java разработчиков.

select E.employee_name, R.role_name
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% Java %';

-- 8. Вывести имена и должность только Python разработчиков.

select E.employee_name, R.role_name
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% Python %';

-- 9. Вывести имена и должность всех QA инженеров.

select E.employee_name, R.role_name
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% QA %';

-- 10. Вывести имена и должность ручных QA инженеров.

select E.employee_name, R.role_name
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% Manual QA %';

-- 11. Вывести имена и должность автоматизаторов QA

select E.employee_name, R.role_name
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% Automation QA %';

-- 12. Вывести имена и зарплаты Junior специалистов

select E.employee_name, S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Junior %';

-- 13. Вывести имена и зарплаты Middle специалистов

select E.employee_name, S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Middle %';

-- 14. Вывести имена и зарплаты Senior специалистов

select E.employee_name, S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Senior %';

-- 15. Вывести зарплаты Java разработчиков

select S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '% Java %';

-- 16. Вывести зарплаты Python разработчиков

select S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '% Python %';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select E.employee_name, S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Junior Python %';

-- 18. Вывести имена и зарплаты Middle JS разработчиков

select E.employee_name, S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Middle JavaScript %';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select E.employee_name, S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Senior Java %';

-- 20. Вывести зарплаты Junior QA инженеров

select S.monthly_salary 
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Junior %' 
	and role_name like '% QA %';

-- 21. Вывести среднюю зарплату всех Junior специалистов

select avg(S.monthly_salary)
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '%Junior %';

-- 22. Вывести сумму зарплат JS разработчиков

select sum(S.monthly_salary)
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '% JavaScript %';

-- 23. Вывести минимальную ЗП QA инженеров

select min(S.monthly_salary)
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '% QA %';

-- 24. Вывести максимальную ЗП QA инженеров

select max(S.monthly_salary)
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '% QA %';

-- 25. Вывести количество QA инженеров

select count(E.employee_name)
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% QA %';

-- 26. Вывести количество Middle специалистов.

select count(E.employee_name)
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '%Middle %';

-- 27. Вывести количество разработчиков

select count(E.employee_name)
	from roles_employee as RE
	join employees E on RE.employee_id = E.id
	join roles R on RE.role_id = R.id
	where role_name like '% developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(S.monthly_salary)
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	where role_name like '% developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select E.employee_name, R.role_name, S.monthly_salary
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id
	order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию
--     у специалистов у которых ЗП от 1700 до 2300

select E.employee_name, R.role_name, S.monthly_salary
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id	
	where monthly_salary > 1700 
	and monthly_salary < 2300
	order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию
--     у специалистов у которых ЗП меньше 2300

select E.employee_name, R.role_name, S.monthly_salary
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id	
	and monthly_salary < 2300
	order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию
--     у специалистов у которых ЗП равна 1100, 1500, 2000

select E.employee_name, R.role_name, S.monthly_salary
	from employee_salary as ES
	join roles_employee RE on ES.employee_id = RE.employee_id
	join employees E on ES.employee_id = E.id
	join salary S on ES.salary_id = S.id
	join roles R on RE.role_id = R.id	
	and monthly_salary in (1100, 1500, 2000)
	order by monthly_salary;

