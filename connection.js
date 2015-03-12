

//http server
var http = require('http');
//url.parse
var url = require('url');
//id to query from db
var id;
//response
var body;
//# of responses sucessfully attended
var nResponses=0;
//mysql + conf
var _mysql = require('mysql');

var firstTime = true;
var last_insert_id;
var edif = 0;
var salon = 0;
var edif_status = false;
var salon_status = false;
var stvmajr_desc;
var carrera;
var area_desc;
var area_code;


/*var HOST = 'localhost';
var PORT = 3306;
var MYSQL_USER = 'root';
var MYSQL_PASS = '';
*/
var DATABASE = 'local_swfrasp';
var TABLE = 'data';

var pool  = _mysql.createPool({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'local_swfrasp'
  //,debug : 'true'
});





http.createServer(function (req, res) {
  
    //get id from url_parts
    var url_parts = url.parse(req.url, true);
    var action = url_parts.query.action; 
    var id = url_parts.query.id; 
    var query;
    var query1;
    var query2;
    var query3;
    var query4;
    var body;
    var data2;
    var v = [];
    var tmp;
 

    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Headers", "X-Requested-With"); 

    if (action === undefined);
    else{

        pool.getConnection(function(err, connection) {
            
            if (err)
            {
                res.write('[{connectionError}]');
                res.end();
                console.log(err);
                return;
            }
            
            if (!connection){
                res.write('[{connectionError}]');
                res.end();
                console.log(connection.toString());
                return;
            }

            if (firstTime===true){
                connection.query('use ' + DATABASE);
                connection.query('ALTER TABLE data AUTO_INCREMENT = 201312344;');
                connection.query("INSERT INTO data values ('','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');");
                firstTime = false;
            }

            if (action === 'getData'){
                query  = 'select d.*, s.stvmajr_desc, a.area_desc from data as d, stvmajr as s,  area as a'
                        + ' where d.spriden_id ='+_mysql.escape(id)
                        + ' and d.SARADAP_PROGRAM_1 = s.stvmajr_key'
                        + ' and a.area_code = s.area_code' + ';';
                console.log("I'm in get");
                console.log(query);
                //return;

                connection.query(query,
                function(err, result, fields) {
                    if (err){ console.log("error");throw err;}
                    else {
                            
                                body = result;
                                res.writeHead(200, {'Content-Type': 'application/json; charset=utf-8'});
                                if (typeof body === "undefined")
                                    response = '[{}]';
                                else{
                                    response =  JSON.stringify(body);
                                    //console.log(string);
                                    //res.write(string);
                                    //console.log('nResponses: '+nResponses);  
                                }
                                res.end(response);
                                connection.end(); 
                            }
                });
            }

            else if (action === 'getReport'){
                query  = 'select d.*, s.stvmajr_desc, a.area_desc from data as d, stvmajr as s,  area as a'
                        + ' where d.SARADAP_PROGRAM_1 = s.stvmajr_key'
                        + ' and a.area_code = s.area_code' + ';';
                console.log("I'm in report");
               // console.log(query);
                //return;

                connection.query(query,
                function(err, result, fields) {
                    if (err){ console.log("error");throw err;}
                    else {
                            
                                body = result;
                                res.writeHead(200, {'Content-Type': 'application/json; charset=utf-8'});
                                if (typeof body === "undefined")
                                    response = '[{}]';
                                else{
                                    response =  JSON.stringify(body);
                                    //console.log(string);
                                    //res.write(string);
                                    //console.log('nResponses: '+nResponses);  
                                }
                                res.end(response);
                                connection.end(); 
                            }
                });
            }
         
            else if ( action === 'postData'){

                req.on('data', function (data) {
                    body += data;
                    console.log(body);
                    data2 = body.split("&");
                    data2.forEach(function (e) {
                        tmp = e.split("=");
                        if ( tmp[0] === 'data2.SARADAP_PROGRAM_1' )
                            carrera = tmp[1];                            

                        v.push(tmp[1].replace('+',' '));
                    });
                    console.log(v);
                    console.log(carrera);
                    //return;
/*
                    query1 = "SELECT area_code,stvmajr_desc from stvmajr where stvmajr_key = " + _mysql.escape(carrera) +';';
                    console.log(query1);
                    getContent = connection.query(query1,
                        function(err, result) {
                            if (err){ console.log("error");throw err;}
                            else {
                                    if (typeof body === "undefined")
                                        res.end('error');
                                    else{
                                        //for (i in result)
                                        //console.log(result[i]);
                                        area_code = result[0].area_code;
                                        stvmajr_desc = result[0].stvmajr_desc;
                                        query2 = "SELECT area_desc from area where area_code = " + _mysql.escape(area_code) + ';';

                                        connection.query(query2, 
                                        function(err, result, fields) {
                                            if (err){ console.log("error");throw err;}
                                            else {
                                                    console.log(result);
                                                    if (typeof body === "undefined")
                                                        res.end('error');
                                                    else{
                                                        area_desc = result.stvmajr_desc;
                                                    }
                                            }
                                        });
                                    }
                            }
                   });
                    console.log(query2);
                    return;
*/
                });


                req.on("end", function() {
                   query3  = 'INSERT INTO ' + TABLE + ' VALUES ('
                        +_mysql.escape('0')+','
                        +_mysql.escape(v[1] )+',' /*data2.SPRIDEN_LAST_NAME*/
                        +_mysql.escape(v[2] )+',' /*data2.SPRIDEN_FIRST_NAME*/
                        +_mysql.escape(v[3])+',' /*data2.SPRIDEN_MI*/
                        +_mysql.escape(v[4])+',' /*data2.PR_SPRADDR_STREET_LINE1*/
                        +_mysql.escape(v[5])+',' /*data2.PR_SPRADDR_STREET_LINE2*/
                        +_mysql.escape(v[6])+',' /*data2.PR_SPRADDR_STREET_LINE3*/
                        +_mysql.escape(v[7])+',' /*data2.PR_SPRADDR_ZIP*/
                        +_mysql.escape(v[8])+',' /*data2.PR_STVCNTY_DESC*/
                        +_mysql.escape(v[9])+',' /*data2.PR_STVSTAT_DESC*/
                        +_mysql.escape(v[10])+',' /*data2.PR_SPRADDR_CITY*/
                        +_mysql.escape(v[11])+',' /*data2.PR_SPRADDR_NATN_CODE*/
                        +_mysql.escape(v[12])+',' /*data2.PR_SPRADDR_PHONE_AREA*/
                        +_mysql.escape(v[13])+',' /*data2.PR_SPRADDR_PHONE_NUMBER*/
                        +_mysql.escape(v[14])+',' /*data2.PR_SPRADDR_PHONE_EXT*/
                        +_mysql.escape(v[15])+',' /*data2.LN_SPRADDR_STREET_LINE1*/
                        +_mysql.escape(v[16])+',' /*data2.LN_SPRADDR_STREET_LINE2*/
                        +_mysql.escape(v[17])+',' /*data2.LN_SPRADDR_STREET_LINE3*/
                        +_mysql.escape(v[18])+',' /*data2.LN_SPRADDR_ZIP*/
                        +_mysql.escape(v[19])+',' /*data2.LN_STVCNTY_DESC*/
                        +_mysql.escape(v[20])+',' /*data2.LN_STVSTAT_DESC*/
                        +_mysql.escape(v[21])+',' /*data2.LN_SPRADDR_CITY*/
                        +_mysql.escape(v[22])+','/*data2.LN_SPRADDR_NATN_CODE */
                        +_mysql.escape(v[23])+',' /*data2.LN_SPRADDR_PHONE_AREA*/
                        +_mysql.escape(v[24])+','/*data2.LN_SPRADDR_PHONE_NUMBER*/
                        +_mysql.escape(v[25])+',' /*data2.LN_SPRADDR_PHONE_EXT*/
                        +_mysql.escape(v[26])+',' /*data2.SPBPERS_SEX*/
                        +_mysql.escape(v[27])+',' /*data2.SPBPERS_ITIN*/
                        +_mysql.escape(v[28])+','/*data2.SPBPERS_BIRTH_DATE*/
                        //+_mysql.escape(v[29])+','/*data2.SARADAP_PROGRAM_1*/
                        +_mysql.escape(carrera)+','/*data2.SARADAP_PROGRAM_1*/
                        +_mysql.escape(v[30])+','/*data2.SORHSCH_SBGI_DESC*/
                        +_mysql.escape(v[31])+','/*data2.SORHSCH_GRADUATION_DATE*/
                        +_mysql.escape(v[32])+','/*data2.SORHSCH_GPA*/
                        +_mysql.escape(v[0])+','/*data2.folio*/
                        +_mysql.escape(v[33])+','/*data2.edificio*/
                        +_mysql.escape(v[34])+/*data2.salon*/
                    ');';

    
                //console.log('query3 : ' + query3);
               // return;
                    connection.query(query3,
                    function(err, result, fields) {
                        if (err){ console.log("error");throw err;}
                        else {
                                body = result;
                                last_insert_id = body.insertId;
                                console.log(last_insert_id);
                                if (typeof body === "undefined")
                                    res.end('error');
                                else{
                                    //console.log(string);
                                    /*res.writeHead(200,
                                        {'Content-Type': 'text/html; charset=utf-8'}
                                    );*/
                                    res.end('<script>window.location.href="'+'http://127.0.0.1/swfwrasp/poliza.html?id='+last_insert_id +'"</script>');
                                    //console.log('nResponses: '+nResponses);  
                                }
                        }
                        connection.end();
                    });
                });
            }


           
          /*  else if ( action === 'getLast' ){
                console.log("I'm in Last");
                query  = 'select last_insert_id() from ' + TABLE +';';   
            }*/

               // console.log('select * from ' + TABLE + ' where id ='+_mysql.escape(id) + ';');
        	   // connection.query('select * from ' + TABLE + ' where id ='+_mysql.escape(id) + ';'

            /**
                console.log(results[0]); // [{1: 1}]
                  console.log(results[1]); // [{2: 2}]
                });
            */

            //connection.query('select * from ' + TABLE + ' where spriden_id ='+_mysql.escape(id) + ';',
            /*var checkSalonQuery = 'select count(*)  from assignExam where SWTSEDE_EDIFICIO = '
                + _mysql.escape(edif) + ' and SWT_SEDE_SALON = ' _mysql.escape(salon) + '';
            var checkSalon = connection.query('',function(err,result,fields){

            });
            */
            nResponses++;

        });//pool connection
    } // else
}).listen(55556, '127.0.0.1');
