var express = require('express');
var router = express.Router();
const mysql = require('mysql');

const getRndInteger=(min, max)=> {
  return Math.floor(Math.random() * (max - min + 1) ) + min;
}
/* GET home page. */
router.get('/', (req, res, next)=> {

  res.send('DALGA');
  
  });

router.post('/register', (req, res, next)=> {
const { username , password ,first_name,middle_name,last_name,birthday,gender,salary,emp_role,} = req.body;

var con = mysql.createConnection({
  host: 'localhost',
  user: 'admin',
  password: '123456',
  database : 'bim312_vacation_system'
});



  let created_ssn = getRndInteger(100000000,999999999);
  existed_ssn = con.query('SELECT SSN FROM deneme',(error,results)=>{
    if (error) throw error;

    while(results.includes(created_ssn)){
      created_ssn = getRndInteger(100000000,999999999);
  
    }
    4
    con.query(`INSERT INTO deneme (username,password,ssn) VALUES ('${username}', '${password}' , ${created_ssn})`);
    


  });
  












res.render('index',{userName : username,pass:password})

});

module.exports = router;
