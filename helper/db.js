
module.exports.connect=(host,user,password)=>{

    var con = mysql.createConnection({
        host: host,
        user: user,
        password: password
      });
      
      con.connect(function(err) {
        if (err) throw err;
        console.log("Connected!");
      });

}
module.exports.addUser=(host,user,password)=>{
    var con = mysql.createConnection({
        host: host,
        user: user,
        password: password
      });

    

}