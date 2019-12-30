using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;
using System.Configuration;

namespace HappyTrip.DataAccessLayer.Common
{
    /// <summary>
    /// Class that represents the common abstraction for all database related activities
    /// </summary>
    public abstract class DAO
    {
        #region Method to get the database connection using enterprise library
        /// <summary>
        /// Gets the database connection for database. Inherited by all DAOs 
        /// </summary>
        /// <exception cref="ConnectToDatabaseException">Throws an exception if unable to connect to database</exception>
        /// <returns>The database object with which all activities can be performed</returns>  
        protected Database GetDatabaseConnection()
        {
            Database db = null;
            try
            {
                db = DatabaseFactory.CreateDatabase("HappyTripConnectionString");
            }
            catch (System.Configuration.ConfigurationException ex)
            {
                throw new ConnectToDatabaseException("System Configuration Failure", ex);
            }
            catch (System.Reflection.TargetInvocationException ex)
            {
                throw new ConnectToDatabaseException("Target Invocation Failure", ex);
            }
            catch (Exception ex)
            {
                throw new ConnectToDatabaseException("Unable To Connect To Database", ex);
            }

            return db;
        }
        #endregion

        #region Method to get database connection using Raw ADO.NET
        /// <summary>
        /// Gets the database connection for database. Inherited by all DAOs - ADO.NET Connection 
        /// </summary>
        /// <returns></returns>
        protected IDbConnection GetConnection()
        {
            string providerName = ConfigurationManager.ConnectionStrings["HappyTripConnectionString"].ProviderName;
            string connString = ConfigurationManager.ConnectionStrings["HappyTripConnectionString"].ConnectionString;
            DbConnection conn = DbProviderFactories.GetFactory(providerName).CreateConnection();
            conn.ConnectionString = connString;
            return conn;
        }
        #endregion 
    }
}
