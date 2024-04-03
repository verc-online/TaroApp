using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Dapper;

namespace TaroAppLibrary.Database;

public class SqlDataAccess : ISqlDataAccess
{
    private readonly IConfiguration _configuration;

    public SqlDataAccess(IConfiguration configuration)
    {
        _configuration = configuration;
    }

    public List<T> LoadData<T, U>(string sqlStatement, U parameters, string connectionStringName,
        bool isStoredProcedure = false)
    {
        string connectionString = _configuration.GetConnectionString(connectionStringName);
        CommandType commandType = CommandType.Text;
        if (isStoredProcedure)
        {
            commandType = CommandType.StoredProcedure;
        }

        using (IDbConnection connection = new SqlConnection(connectionString))
        {
            List<T> rows = connection.Query<T>(sqlStatement, parameters, commandType: commandType).ToList();
            return rows;
        }
    }

    public void SaveData<T>(string sqlStatement, T parameters, string connectionStringName,
        bool isStoredProcedure = false)
    {
        string connectionString = _configuration.GetConnectionString(connectionStringName);
        CommandType commandType = CommandType.Text;
        if (isStoredProcedure)
        {
            commandType = CommandType.StoredProcedure;
        }

        using (IDbConnection connection = new SqlConnection(connectionString))
        {
            connection.Execute(sqlStatement, parameters, commandType: commandType);
        }
    }
}