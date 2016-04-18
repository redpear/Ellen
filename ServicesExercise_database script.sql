USE [master]
GO

/****** Object:  Database [ServicesExercise]    Script Date: 4/17/2016 7:01:58 PM ******/
DROP DATABASE [ServicesExercise]
GO

/****** Object:  Database [ServicesExercise]    Script Date: 4/17/2016 7:01:58 PM ******/
CREATE DATABASE [ServicesExercise] ON  PRIMARY 
( NAME = N'ServicesExercise', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.2\MSSQL\DATA\ServicesExercise.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ServicesExercise_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL.2\MSSQL\DATA\ServicesExercise_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ServicesExercise] SET COMPATIBILITY_LEVEL = 90
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServicesExercise].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO

ALTER DATABASE [ServicesExercise] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ServicesExercise] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ServicesExercise] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ServicesExercise] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ServicesExercise] SET ARITHABORT OFF 
GO

ALTER DATABASE [ServicesExercise] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ServicesExercise] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ServicesExercise] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ServicesExercise] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ServicesExercise] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ServicesExercise] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ServicesExercise] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ServicesExercise] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ServicesExercise] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ServicesExercise] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ServicesExercise] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ServicesExercise] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ServicesExercise] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ServicesExercise] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ServicesExercise] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ServicesExercise] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ServicesExercise] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ServicesExercise] SET  MULTI_USER 
GO

ALTER DATABASE [ServicesExercise] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ServicesExercise] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ServicesExercise] SET  READ_WRITE 
GO


