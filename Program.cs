using Npgsql;
var cs = "Host=172.18.0.3:5432;Username=vscode;Password=notsecure;Database=heinrich_health";

using var con = new NpgsqlConnection(cs);
con.Open();

var sql = "SELECT version()";

using var cmd = new NpgsqlCommand(sql, con);

var version = cmd.ExecuteScalar().ToString();

Console.WriteLine($"PostgreSQL version: {version}");


//#docker exec container1 ping container2 -c2


