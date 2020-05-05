drop procedure if exists `best_match`;
DELIMITER  //
create procedure best_match (IN searchUIN INTEGER, IN rate DECIMAL(4,2))
BEGIN
declare job_id INTEGER;
declare job_sum INTEGER;
declare finished INTEGER default 0;
declare mycursor cursor for
select r.jobid as id, count(*) as c from requires r join skilled s on s.skillname=r.skillname where s.uin=searchUIN and s.proficiency>=r.level group by r.jobid;
declare continue handler for not found set finished=1;

drop table if exists `match_job`;
create table match_job(
	match_jobid INT,
	count_job INT,
    primary key(match_jobid)
);

open mycursor;
	judge:loop
	    fetch mycursor into job_id, job_sum;
	    if(finished=1) then
   	        leave judge;
        end if;
	    insert into match_job(match_jobid,count_job) values (job_id,job_sum);
	end loop;
close mycursor;

select c.companyName, j.jobName, j.Location, j.Type, j.Field, j.Title from jobs j join company c on c.companyID=j.companyID where j.jobID in (select m.match_jobid as id from match_job m join (select jobid as id, count(*) as c from requires group by jobid)temp on m.match_jobid=temp.id where (m.count_job*1.00)/(temp.c*1.00)>=rate);
END //
DELIMITER ;





