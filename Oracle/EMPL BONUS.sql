
SET SERVEROUTPUT ON;
declare
TYPE BonusCompensation
                       IS RECORD (  
                                    CashPayment NUMBER(6),
                                    CompanyCar BOOLEAN,
                                    Vacation_Day NUMBER(2)
                                  );
TYPE EmpRecord
                IS RECORD (
                              E_ID        Employees.Employee_Id%TYPE,
                              FIRST_NAME  Employees.First_Name%TYPE,
                              LAST_NAME   Employees.LAST_NAME%Type,
                              BONUS       BonusCompensation
                );
  BestEmployee EmpRecord;
 
BEGIN 
      SELECT 
             EMP.EMPLOYEE_ID, 
             EMP.FIRST_NAME , 
             EMP.LAST_NAME      
             INTO   BESTEMPLOYEE.E_ID, 
             BESTEMPLOYEE.FIRST_NAME,
             BESTEMPLOYEE.LAST_NAME  
      FROM EMPLOYEES EMP
       JOIN JOB_HISTORY JBH
      ON EMP.EMPLOYEE_ID = JBH.EMPLOYEE_ID
      JOIN DEPARTMENTS DEP
      ON DEP.DEPARTMENT_ID = JBH.DEPARTMENT_ID
      WHERE DEP.DEPARTMENT_NAME ='IT' AND ROWNUM <=1;
      BestEmployee.BONUS.CashPayment := 650;
      BestEmployee.BONUS.CompanyCar := true;
      BestEmployee.BONUS.Vacation_Day := 3;      
      DBMS_OUTPUT.PUT_LINE('BEST EMPLOYEE IS '
          ||BestEmployee.FIRST_NAME||
      '  '||BestEmployee.lAST_NAME||
      '. WITH ID : ' ||BestEmployee.E_ID);
      IF BestEmployee.BONUS.Vacation_Day > 0 AND BestEmployee.BONUS.CashPayment> 0 THEN
      DBMS_OUTPUT.PUT_LINE('FOR  '||BestEmployee.FIRST_NAME||' COMPANY PROVIDED ' 
      ||BestEmployee.BONUS.Vacation_Day||' VACATION DAY(S)  AND ALSO PRESENTED WITH BONUS '
      ||BestEmployee.BONUS.CashPayment||'$.');

      END IF;
            IF BestEmployee.BONUS.CompanyCar = TRUE THEN
            DBMS_OUTPUT.PUT_LINE(' COMPANY CAR ALSO PROVIDED FOR ' ||BestEmployee.FIRST_NAME|| '.');
            END IF; 
 END;
