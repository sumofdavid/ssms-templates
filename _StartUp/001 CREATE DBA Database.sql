USE master
GO

-- All servers should have a DBA database on them.
IF NOT EXISTS(SELECT 1 FROM sys.databases WHERE [name] = N'DBA')
	BEGIN
		CREATE DATABASE DBA;
	END

-- db settings
ALTER DATABASE [DBA] SET ANSI_NULL_DEFAULT OFF 
ALTER DATABASE [DBA] SET ANSI_NULLS OFF 
ALTER DATABASE [DBA] SET ANSI_PADDING OFF 
ALTER DATABASE [DBA] SET ANSI_WARNINGS OFF 
ALTER DATABASE [DBA] SET ARITHABORT OFF 
ALTER DATABASE [DBA] SET AUTO_CLOSE OFF 
ALTER DATABASE [DBA] SET AUTO_CREATE_STATISTICS ON 
ALTER DATABASE [DBA] SET AUTO_SHRINK OFF 
ALTER DATABASE [DBA] SET AUTO_UPDATE_STATISTICS ON 
ALTER DATABASE [DBA] SET CURSOR_CLOSE_ON_COMMIT OFF s
ALTER DATABASE [DBA] SET CURSOR_DEFAULT  GLOBAL 
ALTER DATABASE [DBA] SET CONCAT_NULL_YIELDS_NULL OFF 
ALTER DATABASE [DBA] SET NUMERIC_ROUNDABORT OFF 
ALTER DATABASE [DBA] SET QUOTED_IDENTIFIER OFF 
ALTER DATABASE [DBA] SET RECURSIVE_TRIGGERS OFF 
ALTER DATABASE [DBA] SET ENABLE_BROKER 
ALTER DATABASE [DBA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
ALTER DATABASE [DBA] SET DATE_CORRELATION_OPTIMIZATION OFF 
ALTER DATABASE [DBA] SET TRUSTWORTHY ON 
ALTER DATABASE [DBA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
ALTER DATABASE [DBA] SET PARAMETERIZATION SIMPLE 
ALTER DATABASE [DBA] SET READ_COMMITTED_SNAPSHOT OFF 
ALTER DATABASE [DBA] SET HONOR_BROKER_PRIORITY OFF 
ALTER DATABASE [DBA] SET RECOVERY SIMPLE
ALTER DATABASE [DBA] SET MULTI_USER 
ALTER DATABASE [DBA] SET PAGE_VERIFY CHECKSUM  
ALTER DATABASE [DBA] SET DB_CHAINING OFF 
ALTER DATABASE [DBA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
ALTER DATABASE [DBA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
ALTER DATABASE [DBA] SET READ_WRITE 
GO

EXEC sp_configure 
	@configname = 'CLR_ENABLED',
	@configvalue = 1;
GO

RECONFIGURE;