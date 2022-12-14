USE [master]
GO
/****** Object:  Database [数据库迁移工具]    Script Date: 08/19/2022 08:31:38 ******/
CREATE DATABASE [数据库迁移工具] ON  PRIMARY 
( NAME = N'数据库迁移工具', FILENAME = N'F:\zz_数据库复制测试\数据库迁移工具.mdf' , SIZE = 24576KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'数据库迁移工具_log', FILENAME = N'F:\zz_数据库复制测试\数据库迁移工具_log.ldf' , SIZE = 241216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [数据库迁移工具] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [数据库迁移工具].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [数据库迁移工具] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [数据库迁移工具] SET ANSI_NULLS OFF
GO
ALTER DATABASE [数据库迁移工具] SET ANSI_PADDING OFF
GO
ALTER DATABASE [数据库迁移工具] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [数据库迁移工具] SET ARITHABORT OFF
GO
ALTER DATABASE [数据库迁移工具] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [数据库迁移工具] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [数据库迁移工具] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [数据库迁移工具] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [数据库迁移工具] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [数据库迁移工具] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [数据库迁移工具] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [数据库迁移工具] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [数据库迁移工具] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [数据库迁移工具] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [数据库迁移工具] SET  DISABLE_BROKER
GO
ALTER DATABASE [数据库迁移工具] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [数据库迁移工具] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [数据库迁移工具] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [数据库迁移工具] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [数据库迁移工具] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [数据库迁移工具] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [数据库迁移工具] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [数据库迁移工具] SET  READ_WRITE
GO
ALTER DATABASE [数据库迁移工具] SET RECOVERY FULL
GO
ALTER DATABASE [数据库迁移工具] SET  MULTI_USER
GO
ALTER DATABASE [数据库迁移工具] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [数据库迁移工具] SET DB_CHAINING OFF
GO
USE [数据库迁移工具]
GO
/****** Object:  Table [dbo].[TEMP_源数据库约束信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库约束信息](
	[CONSTRAINT_SCHEMA] [nvarchar](128) NULL,
	[CONSTRAINT_NAME] [sysname] NOT NULL,
	[CONSTRAINT_TYPE] [varchar](11) NULL,
	[TABLE_SCHEMA] [nvarchar](128) NULL,
	[TABLE_NAME] [sysname] NULL,
	[COLUMN_NAME] [nvarchar](128) NULL,
	[id] [int] NULL,
	[refer_constraint_schema] [nvarchar](128) NULL,
	[refer_table_name] [sysname] NULL,
	[refer_column_name] [nvarchar](128) NULL,
	[CHECK_CLAUSE] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库索引信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库索引信息](
	[TableId] [int] NOT NULL,
	[TableSchema] [sysname] NULL,
	[TableName] [sysname] NOT NULL,
	[IndexId] [int] NOT NULL,
	[IndexName] [sysname] NULL,
	[type_desc] [nvarchar](60) NULL,
	[IndexType] [nvarchar](60) NOT NULL,
	[Index_Column_id] [int] NOT NULL,
	[ColumnID] [int] NOT NULL,
	[ColumnName] [sysname] NULL,
	[Sort] [varchar](4) NOT NULL,
	[UQIQUE] [nvarchar](5) NOT NULL,
	[Ignore_dup_key] [nvarchar](5) NOT NULL,
	[Disabled] [nvarchar](5) NOT NULL,
	[Fill_factor] [tinyint] NOT NULL,
	[Padded] [nvarchar](5) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库视图信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库视图信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库列属性]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库列属性](
	[TABLE_SCHEMA] [nvarchar](128) NULL,
	[TABLE_NAME] [sysname] NOT NULL,
	[COLUMN_NAME] [sysname] NULL,
	[DATA_TYPE] [nvarchar](128) NULL,
	[numeric_precision] [tinyint] NULL,
	[numeric_scale] [int] NULL,
	[character_maximum_length] [int] NULL,
	[IS_NULLABLE] [varchar](3) NULL,
	[COLUMN_DEFAULT] [nvarchar](4000) NULL,
	[ordinal_position] [int] NULL,
	[IS_IDENTITY] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库函数信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库函数信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库存储过程信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库存储过程信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库触发器信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库触发器信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_源数据库表名称]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_源数据库表名称](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_视图重命名表]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_视图重命名表](
	[target_name] [sysname] NOT NULL,
	[ori_name] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_目标数据库约束信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库约束信息](
	[CONSTRAINT_SCHEMA] [nvarchar](128) NULL,
	[CONSTRAINT_NAME] [sysname] NOT NULL,
	[CONSTRAINT_TYPE] [varchar](11) NULL,
	[TABLE_SCHEMA] [nvarchar](128) NULL,
	[TABLE_NAME] [sysname] NULL,
	[COLUMN_NAME] [nvarchar](128) NULL,
	[id] [int] NULL,
	[refer_constraint_schema] [nvarchar](128) NULL,
	[refer_table_name] [sysname] NULL,
	[refer_column_name] [nvarchar](128) NULL,
	[CHECK_CLAUSE] [nvarchar](4000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库索引信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库索引信息](
	[TableId] [int] NOT NULL,
	[TableSchema] [sysname] NULL,
	[TableName] [sysname] NOT NULL,
	[IndexId] [int] NOT NULL,
	[IndexName] [sysname] NULL,
	[type_desc] [nvarchar](60) NULL,
	[IndexType] [nvarchar](60) NOT NULL,
	[Index_Column_id] [int] NOT NULL,
	[ColumnID] [int] NOT NULL,
	[ColumnName] [sysname] NULL,
	[Sort] [varchar](4) NOT NULL,
	[UQIQUE] [nvarchar](5) NOT NULL,
	[Ignore_dup_key] [nvarchar](5) NOT NULL,
	[Disabled] [nvarchar](5) NOT NULL,
	[Fill_factor] [tinyint] NOT NULL,
	[Padded] [nvarchar](5) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库视图信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库视图信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库列属性]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库列属性](
	[TABLE_SCHEMA] [nvarchar](128) NULL,
	[TABLE_NAME] [sysname] NOT NULL,
	[COLUMN_NAME] [sysname] NULL,
	[DATA_TYPE] [nvarchar](128) NULL,
	[numeric_precision] [tinyint] NULL,
	[numeric_scale] [int] NULL,
	[character_maximum_length] [int] NULL,
	[IS_NULLABLE] [varchar](3) NULL,
	[COLUMN_DEFAULT] [nvarchar](4000) NULL,
	[ordinal_position] [int] NULL,
	[IS_IDENTITY] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库函数信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库函数信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库存储过程信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库存储过程信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库触发器信息]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库触发器信息](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL,
	[object_id] [int] NOT NULL,
	[definition] [nvarchar](max) NULL,
	[uses_ansi_nulls] [bit] NULL,
	[uses_quoted_identifier] [bit] NULL,
	[is_schema_bound] [bit] NULL,
	[uses_database_collation] [bit] NULL,
	[is_recompiled] [bit] NULL,
	[null_on_null_input] [bit] NULL,
	[execute_as_principal_id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_目标数据库表名称]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_目标数据库表名称](
	[name] [sysname] NOT NULL,
	[id] [int] NOT NULL,
	[xtype] [char](2) NOT NULL,
	[uid] [smallint] NULL,
	[info] [smallint] NULL,
	[status] [int] NULL,
	[base_schema_ver] [int] NULL,
	[replinfo] [int] NULL,
	[parent_obj] [int] NOT NULL,
	[crdate] [datetime] NOT NULL,
	[ftcatid] [smallint] NULL,
	[schema_ver] [int] NULL,
	[stats_schema_ver] [int] NULL,
	[type] [char](2) NULL,
	[userstat] [smallint] NULL,
	[sysstat] [smallint] NULL,
	[indexdel] [smallint] NULL,
	[refdate] [datetime] NOT NULL,
	[version] [int] NULL,
	[deltrig] [int] NULL,
	[instrig] [int] NULL,
	[updtrig] [int] NULL,
	[seltrig] [int] NULL,
	[category] [int] NULL,
	[cache] [smallint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_函数重命名表]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_函数重命名表](
	[target_name] [sysname] NOT NULL,
	[ori_name] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_存储过程重命名表]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_存储过程重命名表](
	[target_name] [sysname] NOT NULL,
	[ori_name] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_触发器重命名表]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_触发器重命名表](
	[target_name] [sysname] NOT NULL,
	[ori_name] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_ROWcounter]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_ROWcounter](
	[count_num] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RULES_数据复制规则表_示例]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RULES_数据复制规则表_示例](
	[源数据库名称] [nvarchar](100) NULL,
	[源表名称] [nvarchar](100) NULL,
	[目标表名称] [nvarchar](100) NULL,
	[是否搬运] [nvarchar](10) NULL,
	[插入方式] [nvarchar](10) NULL,
	[搬运行数] [nvarchar](100) NULL,
	[排序语句] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RULES_qikan_datacheck_数据复制规则_默认]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RULES_qikan_datacheck_数据复制规则_默认](
	[源数据库名称] [nvarchar](100) NULL,
	[源表名称] [nvarchar](100) NULL,
	[目标表名称] [nvarchar](100) NULL,
	[是否搬运] [nvarchar](10) NULL,
	[插入方式] [nvarchar](10) NULL,
	[搬运行数] [nvarchar](100) NULL,
	[排序语句] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RERUN_问题复制表格_规则]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RERUN_问题复制表格_规则](
	[源数据库名称] [nvarchar](100) NULL,
	[源表名称] [nvarchar](100) NULL,
	[目标表名称] [nvarchar](100) NULL,
	[是否搬运] [nvarchar](10) NULL,
	[插入方式] [nvarchar](10) NULL,
	[搬运行数] [nvarchar](100) NULL,
	[排序语句] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_数据库结构一致性检查_本次操作]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_数据库结构一致性检查_本次操作](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[源数据库名] [nvarchar](100) NULL,
	[目标数据库名] [nvarchar](100) NULL,
	[存储过程] [nvarchar](10) NULL,
	[函数] [nvarchar](10) NULL,
	[表结构] [nvarchar](10) NULL,
	[视图] [nvarchar](10) NULL,
	[触发器] [nvarchar](10) NULL,
	[索引] [nvarchar](10) NULL,
	[约束] [nvarchar](10) NULL,
	[操作时间] [datetime] NULL,
	[批次号] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_数据库结构一致性检查]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_数据库结构一致性检查](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[源数据库名] [nvarchar](100) NULL,
	[目标数据库名] [nvarchar](100) NULL,
	[存储过程] [nvarchar](10) NULL,
	[函数] [nvarchar](10) NULL,
	[表结构] [nvarchar](10) NULL,
	[视图] [nvarchar](10) NULL,
	[触发器] [nvarchar](10) NULL,
	[索引] [nvarchar](10) NULL,
	[约束] [nvarchar](10) NULL,
	[操作时间] [datetime] NULL,
	[批次号] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_数据复制记录_本次操作]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_数据复制记录_本次操作](
	[任务ID] [int] IDENTITY(1,1) NOT NULL,
	[源数据库名称] [nvarchar](100) NULL,
	[源表名称] [nvarchar](100) NULL,
	[目标数据库名称] [nvarchar](100) NULL,
	[目标表名称] [nvarchar](100) NULL,
	[源表数据行数] [nvarchar](100) NULL,
	[目标表当前行数] [nvarchar](100) NULL,
	[任务迁移行数] [nvarchar](100) NULL,
	[任务开始时间] [datetime] NULL,
	[任务结束时间] [datetime] NULL,
	[任务状态] [nvarchar](max) NULL,
	[数据状态] [nvarchar](max) NULL,
	[任务批次] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_数据复制记录]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_数据复制记录](
	[任务ID] [int] IDENTITY(1,1) NOT NULL,
	[源数据库名称] [nvarchar](100) NULL,
	[源表名称] [nvarchar](100) NULL,
	[目标数据库名称] [nvarchar](100) NULL,
	[目标表名称] [nvarchar](100) NULL,
	[源表数据行数] [nvarchar](100) NULL,
	[目标表当前行数] [nvarchar](100) NULL,
	[任务迁移行数] [nvarchar](100) NULL,
	[任务开始时间] [datetime] NULL,
	[任务结束时间] [datetime] NULL,
	[任务状态] [nvarchar](max) NULL,
	[数据状态] [nvarchar](max) NULL,
	[任务批次] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_视图操作记录]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_视图操作记录](
	[数据库名称] [nvarchar](200) NULL,
	[视图名称] [nvarchar](200) NULL,
	[视图生成语句] [nvarchar](max) NULL,
	[操作说明] [nvarchar](200) NULL,
	[操作时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_函数操作记录]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_函数操作记录](
	[数据库名称] [nvarchar](200) NULL,
	[函数名称] [nvarchar](200) NULL,
	[函数生成语句] [nvarchar](max) NULL,
	[操作说明] [nvarchar](200) NULL,
	[操作时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_存储过程操作记录]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_存储过程操作记录](
	[数据库名称] [nvarchar](200) NULL,
	[存储过程名称] [nvarchar](200) NULL,
	[存储过程生成语句] [nvarchar](max) NULL,
	[操作说明] [nvarchar](200) NULL,
	[操作时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG_触发器操作记录]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG_触发器操作记录](
	[数据库名称] [nvarchar](200) NULL,
	[触发器名称] [nvarchar](200) NULL,
	[触发器生成语句] [nvarchar](max) NULL,
	[操作说明] [nvarchar](200) NULL,
	[操作时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Func_系统表Xtypes字段转实际意义]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		zy
-- Create date: 2022_07_12
-- Description:	将sysobjects表和syscolumns表中Xtypes字段转为其代表的实际意义
                
--              输入: Xtpye字段（@string）   表格类型（@table_type) 
--              [注：table_type置为1时对sysobjects表进行操作，table_type置为0时对syscolumns表进行操作]
-- =============================================

CREATE FUNCTION [dbo].[Func_系统表Xtypes字段转实际意义]
(
	@Xtpye nvarchar(200),
	@table_type int 
)
RETURNS nvarchar(100)
AS
BEGIN
     DECLARE @meaning nvarchar(100)
     Set @meaning='unknown type'
     
     if @table_type=0 
     begin
        if @Xtpye='34' set @meaning='image';
        if @Xtpye='35' set @meaning='text';
        if @Xtpye='36' set @meaning='uniqueidentifier';
        if @Xtpye='48' set @meaning='tinyint';
        if @Xtpye='52' set @meaning='smallint';
        if @Xtpye='56' set @meaning='int';
        if @Xtpye='58' set @meaning='smalldatetime';
        if @Xtpye='59' set @meaning='real';
        if @Xtpye='60' set @meaning='money';
        if @Xtpye='61' set @meaning='datetime';
        if @Xtpye='62' set @meaning='float';
        if @Xtpye='98' set @meaning='sql_variant';
        if @Xtpye='99' set @meaning='ntext';
        if @Xtpye='104' set @meaning='bit';
        if @Xtpye='106' set @meaning='decimal';
        if @Xtpye='108' set @meaning='numeric';
        if @Xtpye='122' set @meaning='smallmoney';
        if @Xtpye='127' set @meaning='bigint';
        if @Xtpye='165' set @meaning='varbinary';
        if @Xtpye='167' set @meaning='varchar';
        if @Xtpye='173' set @meaning='binary';
        if @Xtpye='175' set @meaning='char';
        if @Xtpye='189' set @meaning='timestamp';
        if @Xtpye='231' set @meaning='nvarchar';
        if @Xtpye='239' set @meaning='nchar';
        if @Xtpye='241' set @meaning='xml';
        if @Xtpye='231' set @meaning='sysname';
     end
     
     if @table_type=1
     begin
        if @Xtpye='TA' set @meaning='程序集 (CLR) DML 触发器';
        if @Xtpye='PC' set @meaning='程序集 (CLR) 存储过程';
        if @Xtpye='FT' set @meaning='程序集 (CLR) 表值函数';
        if @Xtpye='FS' set @meaning='程序集 (CLR) 标量函数';
        if @Xtpye='AF' set @meaning='聚合函数(CLR)';
        if @Xtpye='C' set @meaning='CHECK 约束';
        if @Xtpye='D' set @meaning='DEFAULT 约束';
        if @Xtpye='F' set @meaning='FOREIGN KEY 约束';
        if @Xtpye='L' set @meaning='日志';
        if @Xtpye='FN' set @meaning='标量函数';
        if @Xtpye='IF' set @meaning='内联表函数';
        if @Xtpye='P' set @meaning='存储过程';
        if @Xtpye='PK' set @meaning='PRIMARY KEY 约束';
        if @Xtpye='RF' set @meaning='复制筛选存储过程';
        if @Xtpye='S' set @meaning='系统表';
        if @Xtpye='TF' set @meaning='表函数';
        if @Xtpye='TR' set @meaning='触发器';
        if @Xtpye='U' set @meaning='用户表';
        if @Xtpye='UQ' set @meaning='UNIQUE 约束';
        if @Xtpye='V' set @meaning='视图';
        if @Xtpye='X' set @meaning='扩展存储过程';
        if @Xtpye='TR' set @meaning='SQL DML 触发器';
        
        
        
     end
     
     
     return @meaning
END
GO
/****** Object:  UserDefinedFunction [dbo].[Func_获取函数名]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Func_获取函数名]
(
	@原始语句 nvarchar(max)
)
RETURNS nvarchar(max)
AS
BEGIN
   declare @起始限定位 int
   declare @终止限定位 int
   declare @原始语句_lower nvarchar(max)
   declare @函数名 nvarchar(max)
   
   set @原始语句_lower=LOWER(@原始语句)
   
   set @起始限定位=CHARINDEX('create function',@原始语句_lower,1)+15
   set @终止限定位=PATINDEX('%(%@%)%',@原始语句_lower)
   
   set @函数名=SUBSTRING(@原始语句,@起始限定位,@终止限定位-@起始限定位)
   set @函数名=REPLACE(@函数名,'dbo','')
   set @函数名=REPLACE(@函数名,'Dbo','')
   set @函数名=REPLACE(@函数名,'DBO','')
   set @函数名=REPLACE(@函数名,'sys','')
   set @函数名=REPLACE(@函数名,'Sys','')
   set @函数名=REPLACE(@函数名,'SYS','')
   set @函数名=REPLACE(@函数名,'[','')
   set @函数名=REPLACE(@函数名,']','')
   
   return @函数名
END
GO
/****** Object:  UserDefinedFunction [dbo].[Func_函数语句更名]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Func_函数语句更名]
(
	@原始语句 nvarchar(max),
	@新名称 nvarchar(max)
)
RETURNS nvarchar(max)
AS
BEGIN
   declare @起始限定位 int
   declare @终止限定位 int
   declare @原始语句_lower nvarchar(max)
   declare @新语句 nvarchar(max)
   
   set @原始语句_lower=LOWER(@原始语句)
   
   set @起始限定位=CHARINDEX('create function',@原始语句_lower,1)+15
   set @终止限定位=PATINDEX('%(%@%)%',@原始语句_lower)
   
   set @新语句=SUBSTRING(@原始语句,1,@起始限定位)+' [dbo].['+@新名称+']  '+SUBSTRING(@原始语句,@终止限定位,LEN(@原始语句))
   
   
   
   return @新语句
END
GO
/****** Object:  UserDefinedFunction [dbo].[Func_xml_replace]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Func_xml_replace]
(
	@string nvarchar(max)
)
RETURNS nvarchar(max)
AS
BEGIN
   set @string=replace(@string,'&amp;','&')
   set @string=replace(@string,'&nbsp;',' ')
   set @string=replace(@string,'&lt;','<')
   set @string=replace(@string,'&gt;','>')
   set @string=replace(@string,'&quot;','"')
   set @string=replace(@string,'&apos;','''')
   set @string=replace(@string,'&times;','×')
   set @string=replace(@string,'&devide;','÷')
   
   return @string
END
GO
/****** Object:  Table [dbo].[ERROR_LOG_程序错误记录]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERROR_LOG_程序错误记录](
	[Err_id] [int] IDENTITY(1,1) NOT NULL,
	[错误类型] [nvarchar](100) NULL,
	[错误编号] [int] NULL,
	[错误严重性值] [nvarchar](max) NULL,
	[错误状态] [nvarchar](max) NULL,
	[错误来源] [nvarchar](max) NULL,
	[错误命令行] [nvarchar](max) NULL,
	[错误对象所属源数据库] [nvarchar](max) NULL,
	[错误对象目标数据库] [nvarchar](max) NULL,
	[错误对象种类] [nvarchar](max) NULL,
	[错误对象名称] [nvarchar](max) NULL,
	[错误信息] [nvarchar](max) NULL,
	[错误细节及处理意见] [nvarchar](max) NULL,
	[报错时间] [datetime] NULL,
	[批次标记] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAK_原视图备份]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAK_原视图备份](
	[数据库名称] [nvarchar](200) NULL,
	[视图名称] [nvarchar](200) NULL,
	[视图生成语句] [nvarchar](max) NULL,
	[备份时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAK_原函数备份]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAK_原函数备份](
	[数据库名称] [nvarchar](200) NULL,
	[函数名称] [nvarchar](200) NULL,
	[函数生成语句] [nvarchar](max) NULL,
	[备份时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAK_原存储过程备份]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAK_原存储过程备份](
	[数据库名称] [nvarchar](200) NULL,
	[存储过程名称] [nvarchar](200) NULL,
	[存储过程生成语句] [nvarchar](max) NULL,
	[备份时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAK_原触发器备份]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAK_原触发器备份](
	[数据库名称] [nvarchar](200) NULL,
	[触发器名称] [nvarchar](200) NULL,
	[触发器生成语句] [nvarchar](max) NULL,
	[备份时间] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Proc_refreash_tableinfo]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本存储过程将更新最新的表格状态到TEMP_源数据库表名称，TEMP_目标数据库表名称
--              影响：更新上述两个TEMP表，不产生新表
-- =============================================
CREATE PROCEDURE [dbo].[Proc_refreash_tableinfo]
     @源数据库 nvarchar(200),
     @目标数据库 nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    if OBJECT_ID('[dbo].[TEMP_源数据库表名称]','u') is not null exec('drop table [dbo].[TEMP_源数据库表名称]')
    exec('select * into dbo.TEMP_源数据库表名称 from '+@源数据库+'.DBO.sysobjects where xtype=''U'' order by name') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库表名称]','u') is not null exec('drop table [dbo].[TEMP_目标数据库表名称]')
    exec('select * into dbo.TEMP_目标数据库表名称 from '+@目标数据库+'.DBO.sysobjects where xtype=''U'' order by name') 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetErrorInfo]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetErrorInfo]
    @错误类型 nvarchar(100),
    @错误来源 nvarchar(100),
    @错误对象种类 nvarchar(100),
    @错误对象名称 nvarchar(100),
    @对象所属源数据库 nvarchar(100),
    @对象所属目标数据库 nvarchar(100),
    @错误细节及处理建议 nvarchar(max),
    @批次标记 nvarchar(100)
     
AS  
    if OBJECT_ID('[dbo].[ERROR_LOG_程序错误记录]','u') is null
    create table [dbo].[ERROR_LOG_程序错误记录]
    (Err_id int identity,
     错误类型 nvarchar(100),
     错误编号 int,
     错误严重性值 nvarchar(max),
     错误状态 nvarchar(max),
     错误来源 nvarchar(max),
     错误命令行 nvarchar(max),
     错误对象所属源数据库 nvarchar(max),
     错误对象目标数据库 nvarchar(max),
     错误对象种类 nvarchar(max),
     错误对象名称 nvarchar(max),
     错误信息 nvarchar(max),
     错误细节及处理意见 nvarchar(max),
     报错时间 datetime,
     批次标记 nvarchar(200)
    )
    
    insert into [dbo].[ERROR_LOG_程序错误记录] values(@错误类型,ERROR_NUMBER(),ERROR_SEVERITY(),ERROR_STATE(),@错误来源,
                                                     ERROR_LINE(),@对象所属源数据库,@对象所属目标数据库,@错误对象种类,@错误对象名称
                                                     ,ERROR_MESSAGE(),@错误细节及处理建议,GETDATE(),@批次标记)
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库结构一致性检查]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库结构一致性检查]
	-- Add the parameters for the stored procedure here
    @源数据库   nvarchar(100),
    @目标数据库 nvarchar(100),
    @批次号 nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	if OBJECT_ID('[dbo].[ERROR_LOG_程序错误记录]','u') is null
    create table [dbo].[ERROR_LOG_程序错误记录]
    (Err_id int identity,
     错误类型 nvarchar(100),
     错误编号 int,
     错误严重性值 nvarchar(max),
     错误状态 nvarchar(max),
     错误来源 nvarchar(max),
     错误命令行 nvarchar(max),
     错误对象所属源数据库 nvarchar(max),
     错误对象目标数据库 nvarchar(max),
     错误对象种类 nvarchar(max),
     错误对象名称 nvarchar(max),
     错误信息 nvarchar(max),
     错误细节及处理意见 nvarchar(max),
     报错时间 datetime,
     批次标记 nvarchar(200)
    )

    -- Insert statements for procedure here
    if OBJECT_ID('[dbo].[LOG_数据库结构一致性检查]','u') is null
    create table [dbo].[LOG_数据库结构一致性检查]
    (ID int identity,
     源数据库名 nvarchar(100),
     目标数据库名 nvarchar(100),
     存储过程 nvarchar(10),
     函数 nvarchar(10),
     表结构 nvarchar(10),
     视图 nvarchar(10),
     触发器 nvarchar(10),
     索引 nvarchar(10),
     约束 nvarchar(10),
     操作时间 datetime,
     批次号 nvarchar(100)
    )
    
    if OBJECT_ID('[dbo].[LOG_数据库结构一致性检查_本次操作]','u') is not null drop table [dbo].[LOG_数据库结构一致性检查_本次操作]
    create table [dbo].[LOG_数据库结构一致性检查_本次操作]
    (ID int identity,
     源数据库名 nvarchar(100),
     目标数据库名 nvarchar(100),
     存储过程 nvarchar(10),
     函数 nvarchar(10),
     表结构 nvarchar(10),
     视图 nvarchar(10),
     触发器 nvarchar(10),
     索引 nvarchar(10),
     约束 nvarchar(10),
     操作时间 datetime,
     批次号 nvarchar(100)
    )
    
    declare @存储过程一致性 nvarchar(100)
    declare @函数一致性 nvarchar(100)
    declare @视图一致性 nvarchar(100)
    declare @触发器一致性 nvarchar(100)
    declare @索引一致性 nvarchar(100)
    declare @约束一致性 nvarchar(100)
    declare @表结构一致性 nvarchar(100)
    declare @处理意见 nvarchar(max)
    
    declare @checkA int
    declare @checkB int
    declare @flag int
    
    ------存储过程检查------
    if OBJECT_ID('[dbo].[TEMP_源数据库存储过程信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库存储过程信息]')
    exec('
    SELECT * into [TEMP_源数据库存储过程信息] FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库存储过程信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库存储过程信息]')
    exec('
    SELECT * into [TEMP_目标数据库存储过程信息] FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''') 
  
    SELECT @checkA= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_源数据库存储过程信息 EXCEPT SELECT [name],[definition] FROM TEMP_目标数据库存储过程信息) AS T;
    SELECT @checkB= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_目标数据库存储过程信息 EXCEPT SELECT [name],[definition] FROM TEMP_源数据库存储过程信息) AS T;
    set @flag=@checkA+@checkB
    if @flag=0 begin set @存储过程一致性='存储过程一致' end
    else begin set @存储过程一致性='！存储过程不一致！'
    set @处理意见=
    'SELECT ''源数据库'' as [所属],* FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''
    SELECT ''目标数据库'' as [所属],* FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P'''
    insert into [dbo].[ERROR_LOG_程序错误记录] values('表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'存储过程','详细见处理意见表','两库存储过程存在差异,请执行处理意见语句进行查看',
    @处理意见,GETDATE(),@批次号)
    end
    
    ------函数检查------
    if OBJECT_ID('[dbo].[TEMP_源数据库函数信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库函数信息]')
    exec('
    SELECT * into [TEMP_源数据库函数信息] FROM ['+@源数据库+'].[DBO].[SYSOBJECTS] A join ['+@源数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库函数信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库函数信息]')
    exec('
    SELECT * into [TEMP_目标数据库函数信息] FROM ['+@目标数据库+'].[DBO].[SYSOBJECTS] A join ['+@目标数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''') 
    
    SELECT @checkA= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_源数据库函数信息 EXCEPT SELECT [name],[definition] FROM TEMP_目标数据库函数信息) AS T;
    SELECT @checkB= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_目标数据库函数信息 EXCEPT SELECT [name],[definition] FROM TEMP_源数据库函数信息) AS T;
    set @flag=@checkA+@checkB
    if @flag=0 begin set @函数一致性='函数一致' end
    else begin 
    set @函数一致性='！函数不一致！' 
    
    set @处理意见=
    'SELECT ''源数据库'' as [所属],* FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''
    SELECT ''目标数据库'' as [所属],* FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF'''
    insert into [dbo].[ERROR_LOG_程序错误记录] values('表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'函数','详细见处理意见表','两库函数存在差异,请执行处理意见语句进行查看',
    @处理意见,GETDATE(),@批次号)
    end
    
    ------视图检查------
    if OBJECT_ID('[dbo].[TEMP_源数据库视图信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库视图信息]')
    exec('
    SELECT * into [TEMP_源数据库视图信息] FROM ['+@源数据库+'].[DBO].[SYSOBJECTS] A join ['+@源数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''V''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库视图信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库视图信息]')
    exec('
    SELECT * into [TEMP_目标数据库视图信息] FROM ['+@目标数据库+'].[DBO].[SYSOBJECTS] A join ['+@目标数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''V''') 
    
    SELECT @checkA= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_源数据库视图信息 EXCEPT SELECT [name],[definition] FROM TEMP_目标数据库视图信息) AS T;
    SELECT @checkB= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_目标数据库视图信息 EXCEPT SELECT [name],[definition] FROM TEMP_源数据库视图信息) AS T;
    set @flag=@checkA+@checkB
    if @flag=0 begin set @视图一致性='视图一致' end
    else begin 
    set @视图一致性='！视图不一致！'
    set @处理意见=
    'SELECT ''源数据库'' as [所属], * FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''V''
    SELECT ''目标数据库'' as [所属], * FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''V'''
    insert into [dbo].[ERROR_LOG_程序错误记录] values('表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'视图','详细见处理意见表','两库视图存在差异,请执行处理意见语句进行查看',
    @处理意见,GETDATE(),@批次号)
     
    end
    
    ------触发器检查------
    if OBJECT_ID('[dbo].[TEMP_源数据库触发器信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库触发器信息]')
    exec('
    SELECT * into [TEMP_源数据库触发器信息] FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库触发器信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库触发器信息]')
    exec('
    SELECT * into [TEMP_目标数据库触发器信息] FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''') 
    
    SELECT @checkA= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_源数据库触发器信息 EXCEPT SELECT [name],[definition] FROM TEMP_目标数据库触发器信息) AS T;
    SELECT @checkB= COUNT(*) FROM ( SELECT [name],[definition] FROM TEMP_目标数据库触发器信息 EXCEPT SELECT [name],[definition] FROM TEMP_源数据库触发器信息) AS T;
    set @flag=@checkA+@checkB
    if @flag=0 begin set @触发器一致性='触发器一致' end
    else begin 
    set @触发器一致性='！触发器不一致！' 
    set @处理意见=
    'SELECT ''源数据库'' as [所属], * FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''
    SELECT ''目标数据库'' as [所属], * FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR'''
    insert into [dbo].[ERROR_LOG_程序错误记录] values('表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'触发器','详细见处理意见表','两库触发器存在差异,请执行处理意见语句进行查看',
    @处理意见,GETDATE(),@批次号)
    end
    
    ------约束检查------
    if OBJECT_ID('[dbo].[TEMP_源数据库约束信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库约束信息]')
    exec('
     select tc.CONSTRAINT_SCHEMA,tc.CONSTRAINT_NAME,tc.CONSTRAINT_TYPE,tc.TABLE_SCHEMA,tc.TABLE_NAME,ku.COLUMN_NAME,so.id ,refer.constraint_schema as refer_constraint_schema
     ,refer.table_name as refer_table_name,refer.column_name as refer_column_name, che.CHECK_CLAUSE
     into TEMP_源数据库约束信息
     from ['+@源数据库+'].[information_schema].[table_constraints] tc 
     left join ['+@源数据库+'].[information_schema].[key_column_usage] ku on tc.Constraint_Name=ku.Constraint_Name 
     left join ['+@源数据库+'].[SYS].[sysobjects] so on so.name= tc.Constraint_Name
     left join (
     SELECT
     kcu1.constraint_schema,kcu2.table_name, kcu2.column_name ,rc.constraint_catalog , rc.CONSTRAINT_NAME
     FROM ['+@源数据库+'].[information_schema].[referential_constraints] as rc
     JOIN ['+@源数据库+'].[information_schema].[key_column_usage] as kcu1 ON (kcu1.constraint_catalog = rc.constraint_catalog AND kcu1.constraint_schema = rc.constraint_schema AND kcu1.constraint_name = rc.constraint_name)
     JOIN ['+@源数据库+'].[information_schema].[key_column_usage] as kcu2 ON (kcu2.constraint_catalog = rc.unique_constraint_catalog AND kcu2.constraint_schema = rc.unique_constraint_schema AND kcu2.constraint_name = rc.unique_constraint_name AND kcu2.ordinal_position = KCU1.ordinal_position))as refer
     on
     refer.constraint_catalog = tc.constraint_catalog AND refer.constraint_schema = tc.constraint_schema AND refer.constraint_name = tc.constraint_name
     left join ['+@源数据库+'].[information_schema].[check_constraints] che on tc.CONSTRAINT_NAME= che.CONSTRAINT_NAME
     ') 
     
    declare @update_目标数据库约束表 nvarchar(max)
    set @update_目标数据库约束表=
     '
     select tc.CONSTRAINT_SCHEMA,tc.CONSTRAINT_NAME,tc.CONSTRAINT_TYPE,tc.TABLE_SCHEMA,tc.TABLE_NAME,ku.COLUMN_NAME,so.id ,refer.constraint_schema as refer_constraint_schema
     ,refer.table_name as refer_table_name,refer.column_name as refer_column_name, che.CHECK_CLAUSE
     into TEMP_目标数据库约束信息
     from ['+@目标数据库+'].[information_schema].[table_constraints] tc 
     left join ['+@目标数据库+'].[information_schema].[key_column_usage] ku on tc.Constraint_Name=ku.Constraint_Name 
     left join ['+@目标数据库+'].[SYS].[sysobjects] so on so.name= tc.Constraint_Name
     left join (
     SELECT
     kcu1.constraint_schema,kcu2.table_name, kcu2.column_name ,rc.constraint_catalog , rc.CONSTRAINT_NAME
     FROM ['+@目标数据库+'].[information_schema].[referential_constraints] as rc
     JOIN ['+@目标数据库+'].[information_schema].[key_column_usage] as kcu1 ON (kcu1.constraint_catalog = rc.constraint_catalog AND kcu1.constraint_schema = rc.constraint_schema AND kcu1.constraint_name = rc.constraint_name)
     JOIN ['+@目标数据库+'].[information_schema].[key_column_usage] as kcu2 ON (kcu2.constraint_catalog = rc.unique_constraint_catalog AND kcu2.constraint_schema = rc.unique_constraint_schema AND kcu2.constraint_name = rc.unique_constraint_name AND kcu2.ordinal_position = KCU1.ordinal_position))as refer
     on
     refer.constraint_catalog = tc.constraint_catalog AND refer.constraint_schema = tc.constraint_schema AND refer.constraint_name = tc.constraint_name
     left join ['+@目标数据库+'].[information_schema].[check_constraints] che on tc.CONSTRAINT_NAME= che.CONSTRAINT_NAME
     '
    if OBJECT_ID('[dbo].[TEMP_目标数据库约束信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库约束信息]')
    exec(@update_目标数据库约束表)
     
    SELECT @checkA= COUNT(*) FROM ( SELECT [CONSTRAINT_NAME],[CONSTRAINT_TYPE],[COLUMN_NAME],[TABLE_NAME],[refer_constraint_schema],[refer_table_name],[refer_column_name],[CHECK_CLAUSE] FROM TEMP_源数据库约束信息 
    EXCEPT SELECT [CONSTRAINT_NAME],[CONSTRAINT_TYPE],[COLUMN_NAME],[TABLE_NAME],[refer_constraint_schema],[refer_table_name],[refer_column_name],[CHECK_CLAUSE] FROM TEMP_目标数据库约束信息) AS T;
    SELECT @checkB= COUNT(*) FROM ( SELECT [CONSTRAINT_NAME],[CONSTRAINT_TYPE],[COLUMN_NAME],[TABLE_NAME],[refer_constraint_schema],[refer_table_name],[refer_column_name],[CHECK_CLAUSE] FROM TEMP_目标数据库约束信息
    EXCEPT SELECT [CONSTRAINT_NAME],[CONSTRAINT_TYPE],[COLUMN_NAME],[TABLE_NAME],[refer_constraint_schema],[refer_table_name],[refer_column_name],[CHECK_CLAUSE] FROM TEMP_源数据库约束信息) AS T;
    set @flag=@checkA+@checkB
    if @flag=0 begin set @约束一致性='约束一致' end
    else begin set @约束一致性='！约束不一致！'
    
    set @处理意见=
    'SELECT ''源数据库'' as [所属], tc.CONSTRAINT_SCHEMA,tc.CONSTRAINT_NAME,tc.CONSTRAINT_TYPE,tc.TABLE_SCHEMA,tc.TABLE_NAME,ku.COLUMN_NAME,so.id ,refer.constraint_schema as refer_constraint_schema
     ,refer.table_name as refer_table_name,refer.column_name as refer_column_name, che.CHECK_CLAUSE
     from ['+@源数据库+'].[information_schema].[table_constraints] tc 
     left join ['+@源数据库+'].[information_schema].[key_column_usage] ku on tc.Constraint_Name=ku.Constraint_Name 
     left join ['+@源数据库+'].[SYS].[sysobjects] so on so.name= tc.Constraint_Name
     left join (
     SELECT
     kcu1.constraint_schema,kcu2.table_name, kcu2.column_name ,rc.constraint_catalog , rc.CONSTRAINT_NAME
     FROM ['+@源数据库+'].[information_schema].[referential_constraints] as rc
     JOIN ['+@源数据库+'].[information_schema].[key_column_usage] as kcu1 ON (kcu1.constraint_catalog = rc.constraint_catalog AND kcu1.constraint_schema = rc.constraint_schema AND kcu1.constraint_name = rc.constraint_name)
     JOIN ['+@源数据库+'].[information_schema].[key_column_usage] as kcu2 ON (kcu2.constraint_catalog = rc.unique_constraint_catalog AND kcu2.constraint_schema = rc.unique_constraint_schema AND kcu2.constraint_name = rc.unique_constraint_name AND kcu2.ordinal_position = KCU1.ordinal_position))as refer
     on
     refer.constraint_catalog = tc.constraint_catalog AND refer.constraint_schema = tc.constraint_schema AND refer.constraint_name = tc.constraint_name
     left join ['+@源数据库+'].[information_schema].[check_constraints] che on tc.CONSTRAINT_NAME= che.CONSTRAINT_NAME
     SELECT ''目标数据库'' as [所属], tc.CONSTRAINT_SCHEMA,tc.CONSTRAINT_NAME,tc.CONSTRAINT_TYPE,tc.TABLE_SCHEMA,tc.TABLE_NAME,ku.COLUMN_NAME,so.id ,refer.constraint_schema as refer_constraint_schema
     ,refer.table_name as refer_table_name,refer.column_name as refer_column_name, che.CHECK_CLAUSE
     from ['+@目标数据库+'].[information_schema].[table_constraints] tc 
     left join ['+@目标数据库+'].[information_schema].[key_column_usage] ku on tc.Constraint_Name=ku.Constraint_Name 
     left join ['+@目标数据库+'].[SYS].[sysobjects] so on so.name= tc.Constraint_Name
     left join (
     SELECT
     kcu1.constraint_schema,kcu2.table_name, kcu2.column_name ,rc.constraint_catalog , rc.CONSTRAINT_NAME
     FROM ['+@目标数据库+'].[information_schema].[referential_constraints] as rc
     JOIN ['+@目标数据库+'].[information_schema].[key_column_usage] as kcu1 ON (kcu1.constraint_catalog = rc.constraint_catalog AND kcu1.constraint_schema = rc.constraint_schema AND kcu1.constraint_name = rc.constraint_name)
     JOIN ['+@目标数据库+'].[information_schema].[key_column_usage] as kcu2 ON (kcu2.constraint_catalog = rc.unique_constraint_catalog AND kcu2.constraint_schema = rc.unique_constraint_schema AND kcu2.constraint_name = rc.unique_constraint_name AND kcu2.ordinal_position = KCU1.ordinal_position))as refer
     on
     refer.constraint_catalog = tc.constraint_catalog AND refer.constraint_schema = tc.constraint_schema AND refer.constraint_name = tc.constraint_name
     left join ['+@目标数据库+'].[information_schema].[check_constraints] che on tc.CONSTRAINT_NAME= che.CONSTRAINT_NAME'
     
    insert into [dbo].[ERROR_LOG_程序错误记录] values('表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'约束','详细见处理意见表','两库约束存在差异,请执行处理意见语句进行查看',
    @处理意见,GETDATE(),@批次号)
    
    end
    
    ------索引检查------
         if OBJECT_ID('[dbo].[TEMP_源数据库索引信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库索引信息]')
     exec('
     use ['+@源数据库+']
     SELECT   TableId = O.[object_id],TableSchema=TABLE_SCHEMA,TableName = O.name ,IndexId = ISNULL(KC.[object_id], IDX.index_id) ,IndexName = IDX.name ,
     [type_desc] = IDX.type_desc,
     [IndexType] = ISNULL(KC.type_desc, ''Index'') , 
     [Index_Column_id] = IDXC.index_column_id ,ColumnID = C.column_id ,ColumnName = C.name ,
     [Sort] =CASE  INDEXKEY_PROPERTY(IDXC.[object_id],IDXC.index_id,IDXC.index_column_id,''IsDescending'')  WHEN 1 THEN ''DESC'' WHEN 0 THEN ''ASC'' ELSE '''' END ,
     [UQIQUE] = CASE WHEN IDX.is_unique = 1 THEN N''TRUE'' ELSE N''FALSE''END ,
     [Ignore_dup_key] = CASE WHEN IDX.ignore_dup_key = 1 THEN N''TRUE''ELSE N''FALSE''END ,
     [Disabled] = CASE WHEN IDX.is_disabled = 1 THEN N''TRUE''ELSE N''FALSE'' END ,
     [Fill_factor] = IDX.fill_factor ,
     [Padded] = CASE WHEN IDX.is_padded = 1 THEN N''TRUE''ELSE N''FALSE'' END  INTO [数据库迁移工具].[dbo].[TEMP_源数据库索引信息]
     FROM   ['+@源数据库+'].[sys].[indexes] IDX
     INNER JOIN ['+@源数据库+'].[sys].[index_columns] IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id
     LEFT JOIN ['+@源数据库+'].[sys].[key_constraints] KC ON IDX.[object_id] = KC.[parent_object_id]AND IDX.index_id = KC.unique_index_id
     INNER JOIN ['+@源数据库+'].[sys].[objects] O ON O.[object_id] = IDX.[object_id]
     INNER JOIN ['+@源数据库+'].[sys].[columns] C ON O.[object_id] = C.[object_id]AND O.type = ''U''AND O.is_ms_shipped = 0 AND IDXC.column_id = C.column_id
     INNER JOIN ['+@源数据库+'].[information_schema].[tables] IT on IT.TABLE_NAME=O.name')
     
     if OBJECT_ID('[dbo].[TEMP_目标数据库索引信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库索引信息]')
     exec('
     use ['+@目标数据库+']
     SELECT   TableId = O.[object_id],TableSchema=TABLE_SCHEMA,TableName = O.name ,IndexId = ISNULL(KC.[object_id], IDX.index_id) ,IndexName = IDX.name ,
     [type_desc] = IDX.type_desc,
     [IndexType] = ISNULL(KC.type_desc, ''Index'') , 
     [Index_Column_id] = IDXC.index_column_id ,ColumnID = C.column_id ,ColumnName = C.name ,
     [Sort] =CASE  INDEXKEY_PROPERTY(IDXC.[object_id],IDXC.index_id,IDXC.index_column_id,''IsDescending'')  WHEN 1 THEN ''DESC'' WHEN 0 THEN ''ASC'' ELSE '''' END ,
     [UQIQUE] = CASE WHEN IDX.is_unique = 1 THEN N''TRUE'' ELSE N''FALSE''END ,
     [Ignore_dup_key] = CASE WHEN IDX.ignore_dup_key = 1 THEN N''TRUE''ELSE N''FALSE''END ,
     [Disabled] = CASE WHEN IDX.is_disabled = 1 THEN N''TRUE''ELSE N''FALSE'' END ,
     [Fill_factor] = IDX.fill_factor ,
     [Padded] = CASE WHEN IDX.is_padded = 1 THEN N''TRUE''ELSE N''FALSE'' END  INTO [数据库迁移工具].[dbo].[TEMP_目标数据库索引信息]
     FROM     ['+@目标数据库+'].[sys].[indexes] IDX
     INNER JOIN ['+@目标数据库+'].[sys].[index_columns] IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id
     LEFT JOIN ['+@目标数据库+'].[sys].[key_constraints] KC ON IDX.[object_id] = KC.[parent_object_id]AND IDX.index_id = KC.unique_index_id
     INNER JOIN ['+@目标数据库+'].[sys].[objects] O ON O.[object_id] = IDX.[object_id]
     INNER JOIN ['+@目标数据库+'].[sys].[columns] C ON O.[object_id] = C.[object_id]AND O.type = ''U''AND O.is_ms_shipped = 0 AND IDXC.column_id = C.column_id
     INNER JOIN ['+@目标数据库+'].[information_schema].[tables] IT on IT.TABLE_NAME=O.name')
     
    SELECT @checkA= COUNT(*) FROM ( SELECT [TableName],[IndexName],[type_desc],[ColumnName],[Sort],[UQIQUE],[Ignore_dup_key],[Disabled],[Fill_factor],[Padded] FROM [dbo].[TEMP_源数据库索引信息]
    EXCEPT SELECT [TableName],[IndexName],[type_desc],[ColumnName],[Sort],[UQIQUE],[Ignore_dup_key],[Disabled],[Fill_factor],[Padded] FROM [dbo].[TEMP_目标数据库索引信息]) AS T;
    SELECT @checkB= COUNT(*) FROM ( SELECT [TableName],[IndexName],[type_desc],[ColumnName],[Sort],[UQIQUE],[Ignore_dup_key],[Disabled],[Fill_factor],[Padded] FROM [dbo].[TEMP_目标数据库索引信息] 
    EXCEPT SELECT [TableName],[IndexName],[type_desc],[ColumnName],[Sort],[UQIQUE],[Ignore_dup_key],[Disabled],[Fill_factor],[Padded] FROM [dbo].[TEMP_源数据库索引信息]) AS T;
    
    set @flag=@checkA+@checkB
    if @flag=0 begin set @索引一致性='索引一致' end
    else begin 
    set @索引一致性='！索引不一致！' 
    set @处理意见=
    'use ['+@源数据库+']
     SELECT  ''源数据库'' as [所属], TableId = O.[object_id],TableSchema=TABLE_SCHEMA,TableName = O.name ,IndexId = ISNULL(KC.[object_id], IDX.index_id) ,IndexName = IDX.name ,
     [type_desc] = IDX.type_desc,
     [IndexType] = ISNULL(KC.type_desc, ''Index'') , 
     [Index_Column_id] = IDXC.index_column_id ,ColumnID = C.column_id ,ColumnName = C.name ,
     [Sort] =CASE  INDEXKEY_PROPERTY(IDXC.[object_id],IDXC.index_id,IDXC.index_column_id,''IsDescending'')  WHEN 1 THEN ''DESC'' WHEN 0 THEN ''ASC'' ELSE '''' END ,
     [UQIQUE] = CASE WHEN IDX.is_unique = 1 THEN N''TRUE'' ELSE N''FALSE''END ,
     [Ignore_dup_key] = CASE WHEN IDX.ignore_dup_key = 1 THEN N''TRUE''ELSE N''FALSE''END ,
     [Disabled] = CASE WHEN IDX.is_disabled = 1 THEN N''TRUE''ELSE N''FALSE'' END ,
     [Fill_factor] = IDX.fill_factor ,
     [Padded] = CASE WHEN IDX.is_padded = 1 THEN N''TRUE''ELSE N''FALSE'' END 
     FROM   ['+@源数据库+'].[sys].[indexes] IDX
     INNER JOIN ['+@源数据库+'].[sys].[index_columns] IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id
     LEFT JOIN ['+@源数据库+'].[sys].[key_constraints] KC ON IDX.[object_id] = KC.[parent_object_id]AND IDX.index_id = KC.unique_index_id
     INNER JOIN ['+@源数据库+'].[sys].[objects] O ON O.[object_id] = IDX.[object_id]
     INNER JOIN ['+@源数据库+'].[sys].[columns] C ON O.[object_id] = C.[object_id]AND O.type = ''U''AND O.is_ms_shipped = 0 AND IDXC.column_id = C.column_id
     INNER JOIN ['+@源数据库+'].[information_schema].[tables] IT on IT.TABLE_NAME=O.name;
     use ['+@目标数据库+']
     SELECT ''目标数据库'' as [所属],  TableId = O.[object_id],TableSchema=TABLE_SCHEMA,TableName = O.name ,IndexId = ISNULL(KC.[object_id], IDX.index_id) ,IndexName = IDX.name ,
     [type_desc] = IDX.type_desc,
     [IndexType] = ISNULL(KC.type_desc, ''Index'') , 
     [Index_Column_id] = IDXC.index_column_id ,ColumnID = C.column_id ,ColumnName = C.name ,
     [Sort] =CASE  INDEXKEY_PROPERTY(IDXC.[object_id],IDXC.index_id,IDXC.index_column_id,''IsDescending'')  WHEN 1 THEN ''DESC'' WHEN 0 THEN ''ASC'' ELSE '''' END ,
     [UQIQUE] = CASE WHEN IDX.is_unique = 1 THEN N''TRUE'' ELSE N''FALSE''END ,
     [Ignore_dup_key] = CASE WHEN IDX.ignore_dup_key = 1 THEN N''TRUE''ELSE N''FALSE''END ,
     [Disabled] = CASE WHEN IDX.is_disabled = 1 THEN N''TRUE''ELSE N''FALSE'' END ,
     [Fill_factor] = IDX.fill_factor ,
     [Padded] = CASE WHEN IDX.is_padded = 1 THEN N''TRUE''ELSE N''FALSE'' END 
     FROM     ['+@目标数据库+'].[sys].[indexes] IDX
     INNER JOIN ['+@目标数据库+'].[sys].[index_columns] IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id
     LEFT JOIN ['+@目标数据库+'].[sys].[key_constraints] KC ON IDX.[object_id] = KC.[parent_object_id]AND IDX.index_id = KC.unique_index_id
     INNER JOIN ['+@目标数据库+'].[sys].[objects] O ON O.[object_id] = IDX.[object_id]
     INNER JOIN ['+@目标数据库+'].[sys].[columns] C ON O.[object_id] = C.[object_id]AND O.type = ''U''AND O.is_ms_shipped = 0 AND IDXC.column_id = C.column_id
     INNER JOIN ['+@目标数据库+'].[information_schema].[tables] IT on IT.TABLE_NAME=O.name'
    insert into [dbo].[ERROR_LOG_程序错误记录] values('表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'索引','详细见处理意见表','两库索引存在差异,请执行处理意见语句进行查看',
    @处理意见,GETDATE(),@批次号)
    end
    
    ------检查表格一致性------
    set @flag=0
    
    if OBJECT_ID('[dbo].[TEMP_源数据库表名称]','u') is not null exec('drop table [dbo].[TEMP_源数据库表名称]')
    exec('select * into [dbo].[TEMP_源数据库表名称] from ['+@源数据库+'].[DBO].[sysobjects] where xtype=''U'' order by name')  
    if OBJECT_ID('[dbo].[TEMP_目标数据库表名称]','u') is not null exec('drop table [dbo].[TEMP_目标数据库表名称]')
    exec('select * into [dbo].[TEMP_目标数据库表名称] from ['+@目标数据库+'].[DBO].[sysobjects] where xtype=''U'' order by name') 
    
    declare @表名称 nvarchar(200)
    declare A_cursor cursor for select name from TEMP_源数据库表名称
    open A_cursor
    fetch next from A_cursor into @表名称
    while @@fetch_status=0  
    begin 
       --print @表名称
       ---获取源表格列属性信息---
       if OBJECT_ID('[dbo].[TEMP_源数据库列属性]','u') is not null exec('drop table [dbo].[TEMP_源数据库列属性]')
       exec('
       use ['+@源数据库+']
       SELECT * ,columnproperty(OBJECT_ID('''+@表名称+'''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY  into [数据库迁移工具].[dbo].[TEMP_源数据库列属性] FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@源数据库+'].SYS.sysobjects so 
       left join ['+@源数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@源数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@表名称+''') A
       ORDER BY ORDINAL_POSITION
       ')
       if OBJECT_ID('[dbo].[TEMP_目标数据库列属性]','u') is not null exec('drop table [dbo].[TEMP_目标数据库列属性]')
       exec('
       use ['+@目标数据库+']
       SELECT * ,columnproperty(OBJECT_ID('''+@表名称+'''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY  into [数据库迁移工具].[dbo].[TEMP_目标数据库列属性] FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@目标数据库+'].SYS.sysobjects so 
       left join ['+@目标数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@目标数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@表名称+''') A
       ORDER BY ORDINAL_POSITION
       ')
       
       SELECT @checkA= COUNT(*) FROM ( SELECT [TABLE_NAME],[COLUMN_NAME],[DATA_TYPE],[numeric_precision],[numeric_scale],[character_maximum_length],[IS_NULLABLE],[COLUMN_DEFAULT],[ordinal_position],[IS_IDENTITY] FROM [dbo].[TEMP_源数据库列属性]
       EXCEPT SELECT [TABLE_NAME],[COLUMN_NAME],[DATA_TYPE],[numeric_precision],[numeric_scale],[character_maximum_length],[IS_NULLABLE],[COLUMN_DEFAULT],[ordinal_position],[IS_IDENTITY] FROM [dbo].[TEMP_目标数据库列属性]) AS T;
       SELECT @checkB= COUNT(*) FROM ( SELECT [TABLE_NAME],[COLUMN_NAME],[DATA_TYPE],[numeric_precision],[numeric_scale],[character_maximum_length],[IS_NULLABLE],[COLUMN_DEFAULT],[ordinal_position],[IS_IDENTITY] FROM [dbo].[TEMP_目标数据库列属性]
       EXCEPT SELECT [TABLE_NAME],[COLUMN_NAME],[DATA_TYPE],[numeric_precision],[numeric_scale],[character_maximum_length],[IS_NULLABLE],[COLUMN_DEFAULT],[ordinal_position],[IS_IDENTITY] FROM [dbo].[TEMP_源数据库列属性]) AS T;
       
       if @checkA>0 or @checkB>0
       begin
       set @处理意见=
      'use ['+@源数据库+']
       SELECT ''源数据库'' as [所属],* ,columnproperty(OBJECT_ID('''+@表名称+'''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@源数据库+'].SYS.sysobjects so 
       left join ['+@源数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@源数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@表名称+''') A
       ORDER BY ORDINAL_POSITION;
       use ['+@目标数据库+']
       SELECT ''目标数据库'' as [所属],* ,columnproperty(OBJECT_ID('''+@表名称+'''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@目标数据库+'].SYS.sysobjects so 
       left join ['+@目标数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@目标数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@表名称+''') A
       ORDER BY ORDINAL_POSITION;'
       
       insert into [dbo].[ERROR_LOG_程序错误记录] values('数据库表结构核对不一致',null,null,null,'dbo.proc_数据库一致性检查',null,@源数据库,@目标数据库,'触发器',@表名称,'两库触发器存在差异,请执行处理意见语句进行查看',
       @处理意见,GETDATE(),@批次号)
       
       
       end 
        
       set @flag=@flag+@checkA+@checkB
       
       fetch next from A_cursor into @表名称
    end
    close A_cursor
    deallocate A_cursor
    
    if @flag=0 begin set @表结构一致性='表结构一致' end
    else begin set @表结构一致性='！表结构不一致！' end
    
    select  
    @源数据库 as 源数据库,
    @目标数据库 as 目标数据库,
    @存储过程一致性 as 存储过程,
    @函数一致性 as 函数,
    @触发器一致性 as 触发器,
    @索引一致性 as 索引,
    @约束一致性 as 约束,
    @视图一致性 as 视图,
    @表结构一致性 as 表结构,
    GETDATE() as 操作时间,
    @批次号 as 批次编号
    
    insert into [dbo].[LOG_数据库结构一致性检查] values(@源数据库,@目标数据库,@存储过程一致性,@函数一致性
    ,@表结构一致性,@视图一致性,@触发器一致性,@索引一致性,@约束一致性,GETDATE(),@批次号)
    
     insert into [dbo].[LOG_数据库结构一致性检查_本次操作] values(@源数据库,@目标数据库,@存储过程一致性,@函数一致性
    ,@表结构一致性,@视图一致性,@触发器一致性,@索引一致性,@约束一致性,GETDATE(),@批次号)
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库约束搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本函数将把源数据库中所有函数搬运至目标数据库，
--              @是否覆盖_1为覆盖原有 置1时 若目标数据库存在同名约束，将对其进行覆盖。

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）   @是否覆盖_1为覆盖原有（置1则进行覆盖更新）
--              输出：将在目标库生成同名约束
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库约束搬运]
     @源数据库   nvarchar(100),
     @目标数据库 nvarchar(100),
     @是否覆盖_1为覆盖原有 int,
     @批次编号 nvarchar(100)
AS
BEGIN
     SET NOCOUNT ON
     -----1. 获取源数据库和目标库约束信息 传入 dbo.TEMP_XXX约束信息------
     if OBJECT_ID('[dbo].[TEMP_源数据库约束信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库约束信息]')
     exec('
     select tc.CONSTRAINT_SCHEMA,tc.CONSTRAINT_NAME,tc.CONSTRAINT_TYPE,tc.TABLE_SCHEMA,tc.TABLE_NAME,ku.COLUMN_NAME,so.id ,refer.constraint_schema as refer_constraint_schema
     ,refer.table_name as refer_table_name,refer.column_name as refer_column_name, che.CHECK_CLAUSE
     into TEMP_源数据库约束信息
     from ['+@源数据库+'].[information_schema].[table_constraints] tc 
     left join ['+@源数据库+'].[information_schema].[key_column_usage] ku on tc.Constraint_Name=ku.Constraint_Name 
     left join ['+@源数据库+'].[SYS].[sysobjects] so on so.name= tc.Constraint_Name
     left join (
     SELECT
     kcu1.constraint_schema,kcu2.table_name, kcu2.column_name ,rc.constraint_catalog , rc.CONSTRAINT_NAME
     FROM ['+@源数据库+'].[information_schema].[referential_constraints] as rc
     JOIN ['+@源数据库+'].[information_schema].[key_column_usage] as kcu1 ON (kcu1.constraint_catalog = rc.constraint_catalog AND kcu1.constraint_schema = rc.constraint_schema AND kcu1.constraint_name = rc.constraint_name)
     JOIN ['+@源数据库+'].[information_schema].[key_column_usage] as kcu2 ON (kcu2.constraint_catalog = rc.unique_constraint_catalog AND kcu2.constraint_schema = rc.unique_constraint_schema AND kcu2.constraint_name = rc.unique_constraint_name AND kcu2.ordinal_position = KCU1.ordinal_position))as refer
     on
     refer.constraint_catalog = tc.constraint_catalog AND refer.constraint_schema = tc.constraint_schema AND refer.constraint_name = tc.constraint_name
     left join ['+@源数据库+'].[information_schema].[check_constraints] che on tc.CONSTRAINT_NAME= che.CONSTRAINT_NAME
     ')
     
     
     declare @update_目标数据库约束表 nvarchar(max)
     set @update_目标数据库约束表=
     '
     select tc.CONSTRAINT_SCHEMA,tc.CONSTRAINT_NAME,tc.CONSTRAINT_TYPE,tc.TABLE_SCHEMA,tc.TABLE_NAME,ku.COLUMN_NAME,so.id ,refer.constraint_schema as refer_constraint_schema
     ,refer.table_name as refer_table_name,refer.column_name as refer_column_name, che.CHECK_CLAUSE
     into TEMP_目标数据库约束信息
     from ['+@目标数据库+'].[information_schema].[table_constraints] tc 
     left join ['+@目标数据库+'].[information_schema].[key_column_usage] ku on tc.Constraint_Name=ku.Constraint_Name 
     left join ['+@目标数据库+'].[SYS].[sysobjects] so on so.name= tc.Constraint_Name
     left join (
     SELECT
     kcu1.constraint_schema,kcu2.table_name, kcu2.column_name ,rc.constraint_catalog , rc.CONSTRAINT_NAME
     FROM ['+@目标数据库+'].[information_schema].[referential_constraints] as rc
     JOIN ['+@目标数据库+'].[information_schema].[key_column_usage] as kcu1 ON (kcu1.constraint_catalog = rc.constraint_catalog AND kcu1.constraint_schema = rc.constraint_schema AND kcu1.constraint_name = rc.constraint_name)
     JOIN ['+@目标数据库+'].[information_schema].[key_column_usage] as kcu2 ON (kcu2.constraint_catalog = rc.unique_constraint_catalog AND kcu2.constraint_schema = rc.unique_constraint_schema AND kcu2.constraint_name = rc.unique_constraint_name AND kcu2.ordinal_position = KCU1.ordinal_position))as refer
     on
     refer.constraint_catalog = tc.constraint_catalog AND refer.constraint_schema = tc.constraint_schema AND refer.constraint_name = tc.constraint_name
     left join ['+@目标数据库+'].[information_schema].[check_constraints] che on tc.CONSTRAINT_NAME= che.CONSTRAINT_NAME
     '
     
     if OBJECT_ID('[dbo].[TEMP_目标数据库约束信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库约束信息]')
     exec(@update_目标数据库约束表)
     
     
     ------2.遍历源数据库约束信息表，在目标库执行生成语句（除外键约束）------
     declare @CONSTRAINT_SCHEMA nvarchar(128)  --约束架构，通常是dbo
     declare @CONSTRAINT_NAME nvarchar(128)    --约束名称
     declare @CONSTRAINT_TYPE nvarchar(11)     --约束类型
     declare @TABLE_SCHEMA nvarchar(128)       --表架构，通常是dbo
     declare @TABLE_NAME nvarchar(128)         --表名称
     declare @COLUMN_NAME nvarchar(128)        --约束作用的列名
     declare @CHECK_CLAUSE nvarchar(4000)      --CHECK约束内容
     declare @refer_constraint_schema nvarchar(128)  --外键联系表架构
     declare @refer_table_name nvarchar(128)         --外键联系表名
     declare @refer_column_name nvarchar(128)        --外键联系列
     
     declare @SQL_CONSTRAINT nvarchar(max)     --约束生成语句
     declare @TABLE_SCHEMA_TEMP nvarchar(128) 
     declare @TABLE_NAME_TEMP nvarchar(128)  
     declare @CONSTRAINT_TYPE_TEMP nvarchar(128)
     declare @COLUMN_NAME_TEMP nvarchar(500)  --用于生成复合键
     declare @COLUMN_NAME_TEMP_2 nvarchar(500)
     
     declare A_cursor cursor for select distinct [CONSTRAINT_SCHEMA],[CONSTRAINT_NAME],[CONSTRAINT_TYPE],
     [TABLE_SCHEMA],[TABLE_NAME],[CHECK_CLAUSE] from [dbo].[TEMP_源数据库约束信息]
     open A_cursor
     fetch next from A_cursor into @CONSTRAINT_SCHEMA,@CONSTRAINT_NAME,@CONSTRAINT_TYPE,@TABLE_SCHEMA
     ,@TABLE_NAME,@CHECK_CLAUSE
     while @@fetch_status=0  
     begin
        if OBJECT_ID('[dbo].[TEMP_目标数据库约束信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库约束信息]')
        exec(@update_目标数据库约束表)
        if @是否覆盖_1为覆盖原有=1
        begin
        
            select @TABLE_SCHEMA_TEMP=[TABLE_SCHEMA] from TEMP_目标数据库约束信息 where [CONSTRAINT_NAME]=@CONSTRAINT_NAME
            select @TABLE_NAME_TEMP=[TABLE_NAME] from TEMP_目标数据库约束信息 where [CONSTRAINT_NAME]=@CONSTRAINT_NAME 
            select @CONSTRAINT_TYPE_TEMP=[CONSTRAINT_TYPE] from TEMP_目标数据库约束信息 where [CONSTRAINT_NAME]=@CONSTRAINT_NAME 
                 
            ------对目标数据库中同名约束进行删除,但当有同名主键时，不进行删除------ 
            IF (select COUNT(*) from  TEMP_目标数据库约束信息 where [CONSTRAINT_NAME] = @CONSTRAINT_NAME and [TABLE_NAME]=@TABLE_NAME) >0
            begin
               if @CONSTRAINT_TYPE_TEMP!='PRIMARY KEY'
               BEGIN
               exec('alter table ['+@目标数据库+'].['+@TABLE_SCHEMA_TEMP+'].['+@TABLE_NAME_TEMP+'] drop constraint '+@CONSTRAINT_NAME+'')
               print '原约束被删除： '+@CONSTRAINT_NAME
               END
               if OBJECT_ID('[dbo].[TEMP_目标数据库约束信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库约束信息]')
               exec(@update_目标数据库约束表)
            end 
            
            ------在目标库执行约束生成语句------
            if @CONSTRAINT_TYPE='PRIMARY KEY'
            begin
               if (select COUNT(*) from  TEMP_目标数据库约束信息 where [TABLE_NAME] = @TABLE_NAME and CONSTRAINT_TYPE='PRIMARY KEY') >0
               begin
                  --SELECT '主键插入失败，表格'+@TABLE_NAME+'有其他主键' AS ERROR_LOG
                  print '主键插入失败，表格'+@TABLE_NAME+'有其他主键'
               end
               else if (select COUNT(*) from  TEMP_源数据库表名称 where name = @TABLE_NAME)=0
               begin
                  --SELECT '主键'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME AS ERROR_LOG
                  print '主键'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME
               end
               
               else
               begin
                  
                  set @COLUMN_NAME_TEMP=stuff((select ','+COLUMN_NAME from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
                  set @COLUMN_NAME_TEMP=dbo.Func_xml_replace(@COLUMN_NAME_TEMP)
                  
                  set @SQL_CONSTRAINT='ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                          ADD CONSTRAINT ['+@CONSTRAINT_NAME+'] PRIMARY KEY ('+@COLUMN_NAME_TEMP+')'
                  begin try                        
                  exec(@SQL_CONSTRAINT)                           
                  --print 'executing:' +@SQL_CONSTRAINT
                  print '已生成主键：'+@CONSTRAINT_NAME
                  end try
                  begin catch
                  set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
                  exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
                  end catch
               end
            end
            
            if @CONSTRAINT_TYPE='CHECK'
            begin
               if (select COUNT(*) from  TEMP_源数据库表名称 where name = @TABLE_NAME)>0
               begin
               set @SQL_CONSTRAINT='ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                          ADD CONSTRAINT ['+@CONSTRAINT_NAME+'] CHECK ('+@CHECK_CLAUSE+')'
               begin try
               exec(@SQL_CONSTRAINT)
               --print 'executing:' +@SQL_CONSTRAINT 
               print '已生成CHECK约束：'+@CONSTRAINT_NAME
               end try
               begin catch
               set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
               exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
               end catch
               
            
               
               end
               else 
               begin
                   --SELECT 'CHECK约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME AS ERROR_LOG
                   print 'CHECK约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME
               end           
            end
            
            if @CONSTRAINT_TYPE='UNIQUE'
            begin
               if (select COUNT(*) from  TEMP_源数据库表名称 where name = @TABLE_NAME)>0
               begin
               
               set @COLUMN_NAME_TEMP=stuff((select ','+COLUMN_NAME from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
               set @COLUMN_NAME_TEMP=dbo.Func_xml_replace(@COLUMN_NAME_TEMP)
               set @SQL_CONSTRAINT='ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                          ADD CONSTRAINT ['+@CONSTRAINT_NAME+'] UNIQUE ('+@COLUMN_NAME_TEMP+')'
               begin try                        
               exec(@SQL_CONSTRAINT)
               --print 'executing:' +@SQL_CONSTRAINT    
               print '已生成UNIQUE约束：'+@CONSTRAINT_NAME
               end try
               begin catch
               set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
               exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
               end catch
               end
               else 
               begin
                   --SELECT 'UNIQUE约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME AS ERROR_LOG
                   print 'UNIQUE约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME
               end    
                                                      
            end
        end
        
        else
        begin
            IF (select COUNT(*) from  TEMP_目标数据库约束信息 where [CONSTRAINT_NAME] = @CONSTRAINT_NAME and [TABLE_NAME]=@TABLE_NAME) =0    
            begin
                ------在目标库执行约束生成语句------
               if @CONSTRAINT_TYPE='PRIMARY KEY'
               begin
                  if (select COUNT(*) from  TEMP_目标数据库约束信息 where [TABLE_NAME] = @TABLE_NAME and @CONSTRAINT_TYPE='PRIMARY KEY') >0
                  begin
                  --SELECT '主键插入失败，表格'+@TABLE_NAME+'有其他主键' AS ERROR_LOG
                  print '主键插入失败，表格'+@TABLE_NAME+'有其他主键'
                  end
                  else if (select COUNT(*) from  TEMP_源数据库表名称 where name = @TABLE_NAME)=0
                  begin
                  -- SELECT  '主键插入失败，未能找到表格：'+@TABLE_NAME AS ERROR_LOG
                  print '主键插入失败，未能找到表格：'+@TABLE_NAME
                  end
                  else
                  begin
                  
                  set @COLUMN_NAME_TEMP=stuff((select ','+COLUMN_NAME from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
                  set @COLUMN_NAME_TEMP=dbo.Func_xml_replace(@COLUMN_NAME_TEMP)
                  
                  set @SQL_CONSTRAINT='ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                          ADD CONSTRAINT ['+@CONSTRAINT_NAME+'] PRIMARY KEY ('+@COLUMN_NAME_TEMP+')'  
                  begin try                        
                  exec(@SQL_CONSTRAINT)
                  --print 'executing:' +@SQL_CONSTRAINT
                  print '已生成主键：'+@CONSTRAINT_NAME
                  end try
                  
                  begin catch
                  set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
                  exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
                  end catch
                  end
               end
               
               if @CONSTRAINT_TYPE='CHECK'
                 begin
                   if (select COUNT(*) from  TEMP_源数据库表名称 where name = @TABLE_NAME)>0
                   begin
                   set @SQL_CONSTRAINT='ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                          ADD CONSTRAINT ['+@CONSTRAINT_NAME+'] CHECK ('+@CHECK_CLAUSE+')'
                   begin try
                   exec(@SQL_CONSTRAINT)
                   -- print 'executing:' +@SQL_CONSTRAINT 
                   print '已生成CHECK约束：'+@CONSTRAINT_NAME
                   end try
                   begin catch
                   set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
                   exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
                   end catch
                   end
                   else 
                   begin
                       --SELECT 'CHECK约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME AS ERROR_LOG
                       print 'CHECK约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME
                   end           
                end
            
                if @CONSTRAINT_TYPE='UNIQUE'
                begin
                   if (select COUNT(*) from  TEMP_源数据库表名称 where name = @TABLE_NAME)>0
                   begin
                   set @COLUMN_NAME_TEMP=stuff((select ','+COLUMN_NAME from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
                   set @COLUMN_NAME_TEMP=dbo.Func_xml_replace(@COLUMN_NAME_TEMP)
                   set @SQL_CONSTRAINT='ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                          ADD CONSTRAINT ['+@CONSTRAINT_NAME+'] UNIQUE ('+@COLUMN_NAME_TEMP+')'
                   begin try                        
                    exec(@SQL_CONSTRAINT)
                   --print 'executing:' +@SQL_CONSTRAINT  
                    print '已生成UNIQUE约束：'+@CONSTRAINT_NAME  
                   end try
                   begin catch
                   set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
                   exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
                   end catch
                   end
                   else 
                   begin
                       --SELECT 'UNIQUE约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME AS ERROR_LOG
                       print 'UNIQUE约束'+@CONSTRAINT_NAME+'插入失败，未能找到表格：'+@TABLE_NAME
                   end    
                                                      
                end    
            end 
        end
        
        
        fetch next from A_cursor into @CONSTRAINT_SCHEMA,@CONSTRAINT_NAME,@CONSTRAINT_TYPE,@TABLE_SCHEMA
        ,@TABLE_NAME,@CHECK_CLAUSE
    end
    close A_cursor
    deallocate A_cursor
    
    
    
    
     ---生成外键，方法与前文一致---
     declare B_cursor cursor for select distinct [CONSTRAINT_SCHEMA],[CONSTRAINT_NAME],[CONSTRAINT_TYPE],
     [TABLE_SCHEMA],[TABLE_NAME] from [dbo].[TEMP_源数据库约束信息] where [CONSTRAINT_TYPE]='FOREIGN KEY'
     open B_cursor
     fetch next from B_cursor into @CONSTRAINT_SCHEMA,@CONSTRAINT_NAME,@CONSTRAINT_TYPE,@TABLE_SCHEMA
     ,@TABLE_NAME
     while @@fetch_status=0  
     begin
        if @是否覆盖_1为覆盖原有=1
        begin
        
            select @TABLE_SCHEMA_TEMP=[TABLE_SCHEMA] from [TEMP_源数据库约束信息] where [CONSTRAINT_NAME]=@CONSTRAINT_NAME and [TABLE_NAME]=TABLE_NAME
            select @TABLE_NAME_TEMP=[TABLE_NAME] from [TEMP_源数据库约束信息] where [CONSTRAINT_NAME]=@CONSTRAINT_NAME and [TABLE_NAME]=TABLE_NAME
            select @refer_table_name=[refer_table_name] from [TEMP_源数据库约束信息] where [CONSTRAINT_NAME]=@CONSTRAINT_NAME and [TABLE_NAME]=TABLE_NAME
                 
            ------对目标数据库中同名约束进行删除------ 
            IF (select COUNT(*) from  TEMP_目标数据库约束信息 where [CONSTRAINT_NAME] = @CONSTRAINT_NAME) >0
            begin
               exec('alter table ['+@目标数据库+'].['+@TABLE_SCHEMA_TEMP+'].['+@TABLE_NAME_TEMP+'] drop constraint '+@CONSTRAINT_NAME+'')
               --注意，这里没有优化，对于多字段unique约束，会循环删除再执行
               if (select COUNT(*) from  [TEMP_源数据库约束信息] where [CONSTRAINT_NAME] = @CONSTRAINT_NAME)=1
               print '原约束被删除： '+@CONSTRAINT_NAME
              
            end 
            ------在目标库执行约束生成语句-----
            set @COLUMN_NAME_TEMP=stuff((select distinct','+COLUMN_NAME from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
            set @COLUMN_NAME_TEMP=dbo.Func_xml_replace(@COLUMN_NAME_TEMP)
            set @COLUMN_NAME_TEMP_2=stuff((select distinct','+refer_column_name from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
            set @COLUMN_NAME_TEMP_2=dbo.Func_xml_replace(@COLUMN_NAME_TEMP_2)
            set @SQL_CONSTRAINT='alter table ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                 add constraint ['+@CONSTRAINT_NAME+'] foreign key('+@COLUMN_NAME_TEMP+') 
                                 REFERENCES ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@refer_table_name+'] ('+@COLUMN_NAME_TEMP_2+')'
            begin try                     
            exec (@SQL_CONSTRAINT)
            --print 'executing:' +@SQL_CONSTRAINT
            print '已生成外键:' +@CONSTRAINT_NAME
            end try
            begin catch
            set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
            exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
            end catch
            
            
        end
        
        else
        begin
            IF (select COUNT(*) from  TEMP_目标数据库约束信息 where [CONSTRAINT_NAME] = @CONSTRAINT_NAME) =0    
            begin
            
               select @TABLE_SCHEMA_TEMP=[TABLE_SCHEMA] from [TEMP_源数据库约束信息] where [CONSTRAINT_NAME]=@CONSTRAINT_NAME and [TABLE_NAME]=TABLE_NAME
               select @TABLE_NAME_TEMP=[TABLE_NAME] from [TEMP_源数据库约束信息] where [CONSTRAINT_NAME]=@CONSTRAINT_NAME and [TABLE_NAME]=TABLE_NAME
               select @refer_table_name=[refer_table_name] from [TEMP_源数据库约束信息] where [CONSTRAINT_NAME]=@CONSTRAINT_NAME and [TABLE_NAME]=TABLE_NAME
               
               
               ------在目标库执行约束生成语句------
               set @COLUMN_NAME_TEMP=stuff((select distinct','+COLUMN_NAME from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
               set @COLUMN_NAME_TEMP=dbo.Func_xml_replace(@COLUMN_NAME_TEMP)
               set @COLUMN_NAME_TEMP_2=stuff((select distinct','+refer_column_name from [TEMP_源数据库约束信息]  WHERE CONSTRAINT_name=@CONSTRAINT_NAME AND TABLE_NAME=@TABLE_NAME FOR xml PATH('')), 1, 1, '')
               set @COLUMN_NAME_TEMP_2=dbo.Func_xml_replace(@COLUMN_NAME_TEMP_2)
               set @SQL_CONSTRAINT='alter table ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']
                                 add constraint ['+@CONSTRAINT_NAME+'] foreign key('+@COLUMN_NAME_TEMP+') 
                                 REFERENCES ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@refer_table_name+'] ('+@COLUMN_NAME_TEMP_2+')'
               ---注意！这里reference table 的 @TABLE_SCHEMA偷懒了，要是不是dbo可能会报错---
               begin try
               exec (@SQL_CONSTRAINT)
               --print 'executing:' +@SQL_CONSTRAINT  
               print '已生成外键:' +@CONSTRAINT_NAME
               end try
               begin catch
               set  @SQL_CONSTRAINT='约束生成语句为：'+@SQL_CONSTRAINT
               exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库约束搬运','约束',@SQL_CONSTRAINT,@源数据库,@目标数据库,@CONSTRAINT_NAME,@批次编号
               end catch
          
            end 
        end
        
        fetch next from B_cursor into @CONSTRAINT_SCHEMA,@CONSTRAINT_NAME,@CONSTRAINT_TYPE,@TABLE_SCHEMA
     ,@TABLE_NAME
    end
    close B_cursor
    deallocate B_cursor 
     
     
     
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库索引搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本函数将把源数据库中所有索引搬运至目标数据库，
--               @是否覆盖_1为覆盖原有 置1时 若目标数据库存在同名索引，将对其进行覆盖。

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）   @是否覆盖_1为覆盖原有（置1则进行覆盖更新）
--              输出：将在目标库生成同名索引
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库索引搬运]
     @源数据库   nvarchar(100),
     @目标数据库 nvarchar(100),
     @是否覆盖_1为覆盖原有 int,
     @批次编号 nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	 SET NOCOUNT ON;
	   -----1. 获取源数据库和目标库索引信息 传入 dbo.TEMP_XXX约束信息------
     if OBJECT_ID('[dbo].[TEMP_源数据库索引信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库索引信息]')
     exec('
     use ['+@源数据库+']
     SELECT   TableId = O.[object_id],TableSchema=TABLE_SCHEMA,TableName = O.name ,IndexId = ISNULL(KC.[object_id], IDX.index_id) ,IndexName = IDX.name ,
     [type_desc] = IDX.type_desc,
     [IndexType] = ISNULL(KC.type_desc, ''Index'') , 
     [Index_Column_id] = IDXC.index_column_id ,ColumnID = C.column_id ,ColumnName = C.name ,
     [Sort] =CASE  INDEXKEY_PROPERTY(IDXC.[object_id],IDXC.index_id,IDXC.index_column_id,''IsDescending'')  WHEN 1 THEN ''DESC'' WHEN 0 THEN ''ASC'' ELSE '''' END ,
     [UQIQUE] = CASE WHEN IDX.is_unique = 1 THEN N''TRUE'' ELSE N''FALSE''END ,
     [Ignore_dup_key] = CASE WHEN IDX.ignore_dup_key = 1 THEN N''TRUE''ELSE N''FALSE''END ,
     [Disabled] = CASE WHEN IDX.is_disabled = 1 THEN N''TRUE''ELSE N''FALSE'' END ,
     [Fill_factor] = IDX.fill_factor ,
     [Padded] = CASE WHEN IDX.is_padded = 1 THEN N''TRUE''ELSE N''FALSE'' END  INTO [数据库迁移工具].[dbo].[TEMP_源数据库索引信息]
     FROM   ['+@源数据库+'].[sys].[indexes] IDX
     INNER JOIN ['+@源数据库+'].[sys].[index_columns] IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id
     LEFT JOIN ['+@源数据库+'].[sys].[key_constraints] KC ON IDX.[object_id] = KC.[parent_object_id]AND IDX.index_id = KC.unique_index_id
     INNER JOIN ['+@源数据库+'].[sys].[objects] O ON O.[object_id] = IDX.[object_id]
     INNER JOIN ['+@源数据库+'].[sys].[columns] C ON O.[object_id] = C.[object_id]AND O.type = ''U''AND O.is_ms_shipped = 0 AND IDXC.column_id = C.column_id
     INNER JOIN ['+@源数据库+'].[information_schema].[tables] IT on IT.TABLE_NAME=O.name')
     
     if OBJECT_ID('[dbo].[TEMP_目标数据库索引信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库索引信息]')
     exec('
     use ['+@目标数据库+']
     SELECT   TableId = O.[object_id],TableSchema=TABLE_SCHEMA,TableName = O.name ,IndexId = ISNULL(KC.[object_id], IDX.index_id) ,IndexName = IDX.name ,
     [type_desc] = IDX.type_desc,
     [IndexType] = ISNULL(KC.type_desc, ''Index'') , 
     [Index_Column_id] = IDXC.index_column_id ,ColumnID = C.column_id ,ColumnName = C.name ,
     [Sort] =CASE  INDEXKEY_PROPERTY(IDXC.[object_id],IDXC.index_id,IDXC.index_column_id,''IsDescending'')  WHEN 1 THEN ''DESC'' WHEN 0 THEN ''ASC'' ELSE '''' END ,
     [UQIQUE] = CASE WHEN IDX.is_unique = 1 THEN N''TRUE'' ELSE N''FALSE''END ,
     [Ignore_dup_key] = CASE WHEN IDX.ignore_dup_key = 1 THEN N''TRUE''ELSE N''FALSE''END ,
     [Disabled] = CASE WHEN IDX.is_disabled = 1 THEN N''TRUE''ELSE N''FALSE'' END ,
     [Fill_factor] = IDX.fill_factor ,
     [Padded] = CASE WHEN IDX.is_padded = 1 THEN N''TRUE''ELSE N''FALSE'' END  INTO [数据库迁移工具].[dbo].[TEMP_目标数据库索引信息]
     FROM     ['+@目标数据库+'].[sys].[indexes] IDX
     INNER JOIN ['+@目标数据库+'].[sys].[index_columns] IDXC ON IDX.[object_id] = IDXC.[object_id] AND IDX.index_id = IDXC.index_id
     LEFT JOIN ['+@目标数据库+'].[sys].[key_constraints] KC ON IDX.[object_id] = KC.[parent_object_id]AND IDX.index_id = KC.unique_index_id
     INNER JOIN ['+@目标数据库+'].[sys].[objects] O ON O.[object_id] = IDX.[object_id]
     INNER JOIN ['+@目标数据库+'].[sys].[columns] C ON O.[object_id] = C.[object_id]AND O.type = ''U''AND O.is_ms_shipped = 0 AND IDXC.column_id = C.column_id
     INNER JOIN ['+@目标数据库+'].[information_schema].[tables] IT on IT.TABLE_NAME=O.name')
     
     DECLARE @TABLE_SCEMA nvarchar(128) 
     DECLARE @TABLE_NAME nvarchar(128)
     DECLARE @INDEX_NAME nvarchar(128)
     DECLARE @INDEX_TYPE nvarchar(128)
     DECLARE @TYPE_DESC nvarchar(60)
     DECLARE @COLUMN_AND_SORT nvarchar(128) --列名和排序方式
     DECLARE @UNIQUE nvarchar(4)
     DECLARE @IGNORE_DUP_KEY nvarchar(4)
     DECLARE @DISABLED nvarchar(4)
     DECLARE @FILL_FACTOR varchar(10)
     DECLARE @PADDED nvarchar(4)
     
     DECLARE @TABLE_SCEMA_TEMP nvarchar(128)
     DECLARE @TABLE_NAME_TEMP nvarchar(128)
     
     DECLARE @SQL_INDEX nvarchar(max)
     
     ------2.遍历源数据库索引信息表，在目标库执行生成语句（仅执行index建立部分）------
     DECLARE A_cursor cursor for select distinct [IndexName] ,[TableName] from [dbo].[TEMP_源数据库索引信息] where IndexType='Index'
     OPEN A_cursor
     Fetch next from A_cursor into @INDEX_NAME, @TABLE_NAME
     while @@fetch_status=0  
     begin
        
        exec dbo.PROC_refreash_tableinfo @源数据库, @目标数据库
         
        select @TABLE_SCEMA= TableSchema from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME
        select @TYPE_DESC= type_desc from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME
        select @INDEX_NAME = IndexName from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME
        select @UNIQUE= UQIQUE from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME
        select @COLUMN_AND_SORT=stuff((select ',['+[ColumnName]+'] '+[Sort] from [TEMP_源数据库索引信息] WHERE [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME  FOR xml PATH('')), 1, 1, '')
        set @COLUMN_AND_SORT=dbo.Func_xml_replace(@COLUMN_AND_SORT)
        
        select @PADDED= Padded from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME
        select @FILL_FACTOR= cast(Fill_factor as varchar(10)) from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME
        select @IGNORE_DUP_KEY= [Ignore_dup_key] from TEMP_源数据库索引信息 where [IndexName]=@INDEX_NAME AND TableName=@TABLE_NAME

       
        IF @是否覆盖_1为覆盖原有=1
        begin 
        
          
           ----删除同名索引----
           IF (select COUNT(*) from  TEMP_目标数据库索引信息 where [IndexName] = @INDEX_NAME) >0
           begin   
              select @TABLE_SCEMA_TEMP = [TableSchema] from TEMP_目标数据库索引信息 where [IndexName] = @INDEX_NAME AND TableName=@TABLE_NAME
              select @TABLE_NAME_TEMP = [TableName] from TEMP_目标数据库索引信息 where [IndexName] = @INDEX_NAME AND TableName=@TABLE_NAME
              exec('drop index '+@INDEX_NAME+' on ['+@目标数据库+'].['+@TABLE_SCEMA_TEMP+'].['+@TABLE_NAME_TEMP+']')
              print '目标库索引被删除：'+@INDEX_NAME
           end
           
           ----生成索引---
           IF (select COUNT(*) from  TEMP_目标数据库表名称 where name = @TABLE_NAME) >0
           begin
                set @SQL_INDEX='CREATE '+ (case when @UNIQUE='TRUE' then ' UNIQUE ' else N'' end)
                               +@TYPE_DESC+' INDEX '+@INDEX_NAME+' ON ['+@目标数据库+'].['+@TABLE_SCEMA+'].['+@TABLE_NAME+']'
                               +'('+@COLUMN_AND_SORT+')'+ ' with (PAD_INDEX='+(case when @PADDED='TRUE' then 'ON' else 'OFF' end)
                               + (case when @FILL_FACTOR!='0' then ' FILLFACTOR '+@FILL_FACTOR  else N'' end)
                               + (case when @IGNORE_DUP_KEY='TRUE' then ' IGNORE_DUP_KEY = ON '+@FILL_FACTOR else N'' end)
                               +')'

                begin try
                exec(@SQL_INDEX)
                --print 'executing: '+@SQL_INDEX
                PRINT '已生成索引：'+@INDEX_NAME
                end try
                
                begin catch
                set  @SQL_INDEX='索引生成语句为：'+@SQL_INDEX
                exec dbo.usp_GetErrorInfo '程序错误','dbo.数据库索引搬运','索引',@INDEX_NAME,@源数据库,@目标数据库,@SQL_INDEX,@批次编号
                end catch 
                 
              
                            
                               
           end
           ----找不到索引依赖的表，则输出错误信息----
           IF (select COUNT(*) from  TEMP_目标数据库表名称 where name = @TABLE_NAME) =0
           begin
              --select 'ERROR:未能生成索引：' +@INDEX_NAME+ ',由于表格'+@TABLE_SCEMA+'.'+@TABLE_NAME+'未在目标数据库中' as ERROR_LOG
              print 'ERROR:未能生成索引：' +@INDEX_NAME+ ',由于表格'+@TABLE_SCEMA+'.'+@TABLE_NAME+'未在目标数据库中'
           end
          
        END  
        ----当覆盖指令为0时，与上文类似，但只加入新索引----   
        ELSE
        BEGIN  
            IF (select COUNT(*) from  TEMP_目标数据库索引信息 where [IndexName] = @INDEX_NAME) =0
            BEGIN
                IF (select COUNT(*) from  TEMP_目标数据库表名称 where name = @TABLE_NAME) >0
                begin
                    set @SQL_INDEX='CREATE '+ (case when @UNIQUE='TRUE' then ' UNIQUE ' else N'' end)
                               +@TYPE_DESC+' INDEX '+@INDEX_NAME+' ON ['+@目标数据库+'].['+@TABLE_SCEMA+'].['+@TABLE_NAME+']'
                               +'('+@COLUMN_AND_SORT+')'+ ' with (PAD_INDEX='+(case when @PADDED='TRUE' then 'ON' else 'OFF' end)
                               + (case when @FILL_FACTOR!='0' then ' FILLFACTOR '+@FILL_FACTOR  else N'' end)
                               + (case when @IGNORE_DUP_KEY='TRUE' then ' IGNORE_DUP_KEY = ON '+@FILL_FACTOR else N'' end)
                               +')'
                               
                   
                    begin try
                    exec(@SQL_INDEX)
                     --print 'executing: '+@SQL_INDEX
                    PRINT '已生成索引：'+@INDEX_NAME
                    end try 
                    begin catch
                    set  @SQL_INDEX='索引生成语句为：'+@SQL_INDEX
                    exec dbo.usp_GetErrorInfo '程序错误','dbo.数据库索引搬运','索引',@INDEX_NAME,@源数据库,@目标数据库,@SQL_INDEX,@批次编号
                    end catch
                             
                               
                end
           
                IF (select COUNT(*) from  TEMP_目标数据库表名称 where name = @TABLE_NAME) =0
                begin
                   --SELECT 'ERROR:未能生成索引：' +@INDEX_NAME+ ',由于表格'+@TABLE_SCEMA+'.'+@TABLE_NAME+'未在目标数据库中' AS ERROR_LOG
                   print 'ERROR:未能生成索引：' +@INDEX_NAME+ ',由于表格'+@TABLE_SCEMA+'.'+@TABLE_NAME+'未在目标数据库中'
                end
            
            END
        END

        
        Fetch next from A_cursor into @INDEX_NAME, @TABLE_NAME
     end
     close A_cursor
     deallocate A_cursor
     
    
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库函数搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本函数将把源数据库中所有函数搬运至目标数据库，
--              @是否覆盖_1为覆盖原有 设为1时，若目标数据库存在同名函数，将对其进行覆盖。
--              @是否覆盖_1为覆盖原有 非1时，若目标数据库存在同名函数，则不对其操作

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）  @是否覆盖_1为覆盖原有(置1为覆盖同名函数)
--              输出：dbo.BAK_原函数备份、dbo.LOG_函数操作记录
--                    函数将搬运到目标库

--              注意:如果源数据库 SYS.Sql_Modules 中definition存储生成过程的 create名称 与 DBO.SYSOBJECTS 中 name 不符，则检验同名步骤失效 
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库函数搬运]
   @源数据库   nvarchar(100),
   @目标数据库 nvarchar(100),
   @是否覆盖_1为覆盖原有 int,
   @批次编号 nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON
    -----1. 获取源数据库和目标库所有的函数名 和具体函数过程 传入 dbo.TEMP_XXX函数信息------   
    if OBJECT_ID('[dbo].[TEMP_源数据库函数信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库函数信息]')
    exec('
    SELECT * into [TEMP_源数据库函数信息] FROM ['+@源数据库+'].[DBO].[SYSOBJECTS] A join ['+@源数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF'' OR A.XTYPE=''AF''' ) 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库函数信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库函数信息]')
    exec('
    SELECT * into [TEMP_目标数据库函数信息] FROM ['+@目标数据库+'].[DBO].[SYSOBJECTS] A join ['+@目标数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF'' OR A.XTYPE=''AF''') 
    
     -----初始化备份表与LOG表-----
    if OBJECT_ID('[dbo].[BAK_原函数备份]','u') is  null 
    create table [dbo].[BAK_原函数备份] 
    ([数据库名称] nvarchar(200),
     [函数名称] nvarchar(200),
     [函数生成语句] nvarchar(max),
     [备份时间] datetime
    )
    if OBJECT_ID('[dbo].[LOG_函数操作记录]','u') is null 
    create table [dbo].[LOG_函数操作记录] 
    ([数据库名称] nvarchar(200),
     [函数名称] nvarchar(200),
     [函数生成语句] nvarchar(max),
     [操作说明] nvarchar(200),
     [操作时间] datetime
    )
        
    
    ------2.遍历源数据库函数信息表，在目标库执行生成语句------
    declare @函数名 nvarchar(200)
    declare @函数生成语句 nvarchar(max)
    declare @函数生成语句_初始备份 nvarchar(max)
    declare @sql_definition nvarchar(max)
    declare @sql nvarchar(max)
    declare @flag int

    declare A_cursor cursor for select [name],[definition] from TEMP_源数据库函数信息
    open A_cursor
    fetch next from A_cursor into @函数名,@函数生成语句
    while @@fetch_status=0  
    begin 
        print '正在处理：'+@函数名
        
        ----对目标数据库内函数进行备份----
        select @函数生成语句_初始备份= [definition] from TEMP_目标数据库函数信息 where name=@函数名
        insert into [BAK_原函数备份] values(@目标数据库,@函数名,@函数生成语句_初始备份,GETDATE())  
        
        
        set @flag=0
        if @是否覆盖_1为覆盖原有=1
        begin
            ------对目标数据库中同名函数进行删除------ 
            IF (select COUNT(*) from  TEMP_目标数据库函数信息 where [name] = @函数名) >0
            begin
               set @flag=1
               exec('use '+@目标数据库+' drop function dbo.'+@函数名+'')
               print '原函数被删除： '+@函数名
               insert into LOG_函数操作记录 values(@目标数据库,@函数名,@函数生成语句_初始备份,'删除原有同名函数',GETDATE())
            end 
            ------在目标库执行函数生成语句------
            SET @sql_definition = REPLACE(@函数生成语句,'''','''''')
            SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
            begin try
            exec (@sql)    
            print '新函数已复制/覆盖： '+ @函数名
            insert into LOG_函数操作记录 values(@目标数据库,@函数名,@函数生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
            end try 
            
            begin catch
            set  @sql='若错误信息为 数据库中已存在XX对象，为系统表存在问题，需要人工解决。函数生成语句为：'+@sql
            exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库函数搬运','函数',@函数名,@源数据库,@目标数据库,@sql,@批次编号
            end catch  
        end
        
        else
        begin
        
            declare @flaug int 
            select @flaug=COUNT(*) from  TEMP_目标数据库函数信息 where [name] = @函数名
            print @flaug
        
            IF (select COUNT(*) from  TEMP_目标数据库函数信息 where [name] = @函数名) =0    
            begin
                ------在目标库执行函数生成语句------
                SET @sql_definition = REPLACE(@函数生成语句,'''','''''')
                SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
                begin try
                exec (@sql)    
                print '新函数已复制/覆盖： '+ @函数名
                insert into LOG_函数操作记录 values(@目标数据库,@函数名,@函数生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
                end try
                begin catch
                set  @sql='若错误信息为 数据库中已存在XX对象，为系统表存在问题，需要人工解决。函数生成语句为：'+@sql
                exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库函数搬运','函数',@函数名,@源数据库,@目标数据库,@sql,@批次编号
                end catch  
            end 
        end 

        fetch next from A_cursor into @函数名,@函数生成语句
    
    end
    
    close A_cursor
    deallocate A_cursor
    
        ---消除重命名问题---
        
        if OBJECT_ID('[dbo].[TEMP_源数据库函数信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库函数信息]')
        exec('
        SELECT * into [TEMP_源数据库函数信息] FROM ['+@源数据库+'].[DBO].[SYSOBJECTS] A join ['+@源数据库+'].[SYS].[Sql_Modules] B 
        on A.id=B.object_id
        WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''') 
    
        if OBJECT_ID('[dbo].[TEMP_目标数据库函数信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库函数信息]')
        exec('
        SELECT * into [TEMP_目标数据库函数信息] FROM ['+@目标数据库+'].[DBO].[SYSOBJECTS] A join ['+@目标数据库+'].[SYS].[Sql_Modules] B 
        on A.id=B.object_id
        WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''') 
    
        declare @oriname nvarchar(1000)
        declare @targetname nvarchar(1000)
    
        if OBJECT_ID('[dbo].[TEMP_函数重命名表]','u') is not null exec('drop table [dbo].[TEMP_函数重命名表]')
        select A.name as target_name, B.name as ori_name into dbo.TEMP_函数重命名表 from TEMP_源数据库函数信息 A join TEMP_目标数据库函数信息 B on A.[definition]=B.[definition] 
        where A.name!=B.name
   
        declare re_cursor cursor for select ori_name,target_name from dbo.TEMP_函数重命名表
        open re_cursor
        fetch next from re_cursor into @oriname,@targetname
        while @@fetch_status=0  
        begin 
           begin try
           exec ('USE ['+@目标数据库+']; EXEC sp_rename '''+@oriname+''','''+@targetname+'''')
           end try
           begin catch
           set  @sql='函数重命名错误'
           exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库函数搬运','函数',@函数名,@源数据库,@目标数据库,@sql,@批次编号
           end catch  
           fetch next from re_cursor into @oriname,@targetname
        end
        close re_cursor
        deallocate re_cursor
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库存储过程搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本存储过程将把源数据库中所有存储过程搬运至目标数据库，
--              @是否覆盖_1为覆盖原有设为1时，若目标数据库存在同名存储过程，将对其进行覆盖。
--              @是否覆盖_1为覆盖原有非1时，若目标数据库存在同名存储过程，则不对其操作

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称） @是否覆盖_1为覆盖原有(置1为覆盖)
--              输出：dbo.BAK_原存储过程备份、dbo.LOG_存储过程操作记录
--                    存储过程将搬运到目标库

--              注意:如果源数据库 SYS.Sql_Modules 中definition存储生成过程的 create名称 与 DBO.SYSOBJECTS 中 name 不符，则检验同名步骤失效 
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库存储过程搬运]
   @源数据库   nvarchar(100),
   @目标数据库 nvarchar(100),
   @是否覆盖_1为覆盖原有 int,
   @批次编号 nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
    
    -----1. 获取源数据库和目标库所有的存储过程名 和具体存储过程 传入 dbo.TEMP_XXX存储过程信息------   
    if OBJECT_ID('[dbo].[TEMP_源数据库存储过程信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库存储过程信息]')
    exec('
    SELECT * into [TEMP_源数据库存储过程信息] FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库存储过程信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库存储过程信息]')
    exec('
    SELECT * into [TEMP_目标数据库存储过程信息] FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''') 
    
    
    -----初始化备份表与LOG表-----
    if OBJECT_ID('[dbo].[BAK_原存储过程备份]','u') is null 
    create table [dbo].[BAK_原存储过程备份] 
    ([数据库名称] nvarchar(200),
     [存储过程名称] nvarchar(200),
     [存储过程生成语句] nvarchar(max),
     [备份时间] datetime
    )
    if OBJECT_ID('[dbo].[LOG_存储过程操作记录]','u') is null 
    create table [dbo].[LOG_存储过程操作记录] 
    ([数据库名称] nvarchar(200),
     [存储过程名称] nvarchar(200),
     [存储过程生成语句] nvarchar(max),
     [操作说明] nvarchar(200),
     [操作时间] datetime
    )
        
    
    ------2.遍历源数据库存储过程信息表，在目标库执行生成语句------
    declare @存储过程名 nvarchar(100)
    declare @存储过程生成语句 nvarchar(max)
    declare @存储过程生成语句_初始备份 nvarchar(max)
    declare @sql_definition nvarchar(max)
    declare @sql nvarchar(max)
    declare @flag int

    declare A_cursor cursor for select [name],[definition] from TEMP_源数据库存储过程信息
    open A_cursor
    fetch next from A_cursor into @存储过程名,@存储过程生成语句
    while @@fetch_status=0  
    begin 
    
        print '正在处理：'+@存储过程名
        ----对目标数据库内存储过程进行备份----
        select @存储过程生成语句_初始备份= [definition] from TEMP_目标数据库存储过程信息 where name=@存储过程名
        insert into [BAK_原存储过程备份] values(@目标数据库,@存储过程名,@存储过程生成语句_初始备份,GETDATE())  
        
       
        set @flag=0
        if @是否覆盖_1为覆盖原有=1
        begin
            ------对目标数据库中同名存储过程进行删除------ 
            IF (select COUNT(*) from  TEMP_目标数据库存储过程信息 where [name] = @存储过程名) >0
            begin
               set @flag=1
               exec('use '+@目标数据库+' drop procedure dbo.'+@存储过程名+'')
               print '原存储过程被删除： '+@存储过程名
               insert into LOG_存储过程操作记录 values(@目标数据库,@存储过程名,@存储过程生成语句_初始备份,'删除原有同名存储过程',GETDATE())
            end 
            ------在目标库执行存储过程生成语句------
            SET @sql_definition = REPLACE(@存储过程生成语句,'''','''''')
            SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
            begin try
            exec (@sql)  
            print '新存储过程已复制/覆盖： '+ @存储过程名
            insert into LOG_存储过程操作记录 values(@目标数据库,@存储过程名,@存储过程生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
            end try
            begin catch
            set  @sql='若错误信息为 数据库中已存在XX对象，为系统表存在问题，需要人工解决。存储过程生成语句为：'+@sql
            exec dbo.usp_GetErrorInfo '程序错误','dbo.数据库存储过程搬运','存储过程',@存储过程名,@源数据库,@目标数据库,@sql,@批次编号
            end catch  
        end
        
        else
        begin
            IF (select COUNT(*) from  TEMP_目标数据库存储过程信息 where [name] = @存储过程名) =0
            begin
                ------在目标库执行存储过程生成语句------
                SET @sql_definition = REPLACE(@存储过程生成语句,'''','''''')
                SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
                begin try
                exec (@sql)    
                print '新存储过程已复制/覆盖： '+ @存储过程名
                insert into LOG_存储过程操作记录 values(@目标数据库,@存储过程名,@存储过程生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
                end try
                begin catch
                set  @sql='若错误信息为 数据库中已存在XX对象，为系统表存在问题，需要人工解决。存储过程生成语句为：'+@sql
                exec dbo.usp_GetErrorInfo '程序错误','dbo.数据库存储过程搬运','存储过程',@存储过程名,@源数据库,@目标数据库,@sql,@批次编号
                end catch  
            end 
        end
  
        
        fetch next from A_cursor into @存储过程名,@存储过程生成语句
        
    end   
    close A_cursor
    deallocate A_cursor
    
    ---消除重命名问题---
    if OBJECT_ID('[dbo].[TEMP_源数据库存储过程信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库存储过程信息]')
    exec('
    SELECT * into [TEMP_源数据库存储过程信息] FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库存储过程信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库存储过程信息]')
    exec('
    SELECT * into [TEMP_目标数据库存储过程信息] FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''P''') 
    
    declare @oriname nvarchar(1000)
    declare @targetname nvarchar(1000)
    
    if OBJECT_ID('[dbo].[TEMP_存储过程重命名表]','u') is not null exec('drop table [dbo].[TEMP_存储过程重命名表]')
    select A.name as target_name, B.name as ori_name into dbo.TEMP_存储过程重命名表 from TEMP_源数据库存储过程信息 A join TEMP_目标数据库存储过程信息 B on A.[definition]=B.[definition] 
    where A.name!=B.name
   
    declare re_cursor cursor for select ori_name,target_name from dbo.TEMP_存储过程重命名表
    open re_cursor
    fetch next from re_cursor into @oriname,@targetname
    while @@fetch_status=0  
    begin
       begin try 
       exec ('USE ['+@目标数据库+']; EXEC sp_rename '''+@oriname+''','''+@targetname+'''')
       end try
       begin catch
       set  @sql='存储过程重命名错误'
       exec dbo.usp_GetErrorInfo '程序错误','dbo.数据库存储过程搬运','存储过程',@存储过程名,@源数据库,@目标数据库,@sql,@批次编号
       end catch  
       fetch next from re_cursor into @oriname,@targetname
    end
    close re_cursor
    deallocate re_cursor
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库触发器搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本存储过程将把源数据库中所有触发器搬运至目标数据库，
--              @是否覆盖_1为覆盖原有 设为1时，若目标数据库存在同名触发器，将对其进行覆盖。
--              @是否覆盖_1为覆盖原有 非1时，若目标数据库存在同名触发器，则不对其操作

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）  @是否覆盖_1为覆盖原有(置1覆盖同名)
--              输出：dbo.BAK_原触发器备份、dbo.LOG_触发器操作记录
--                    同名触发器将搬运到目标库

--              注意:如果源数据库 SYS.Sql_Modules 中definition存储生成过程的 create名称 与 DBO.SYSOBJECTS 中 name 不符，则检验同名步骤失效 
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库触发器搬运]
    @源数据库   nvarchar(100),
    @目标数据库 nvarchar(100),
    @是否覆盖_1为覆盖原有 int ,
    @批次标记 nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON
    -----1. 获取源数据库和目标库所有的触发器名 和具体触发器 传入 dbo.TEMP_XXX触发器信息------   
    if OBJECT_ID('[dbo].[TEMP_源数据库触发器信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库触发器信息]')
    exec('
    SELECT * into [TEMP_源数据库触发器信息] FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库触发器信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库触发器信息]')
    exec('
    SELECT * into [TEMP_目标数据库触发器信息] FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''') 
    
    
 -----初始化备份表与LOG表-----
    if OBJECT_ID('[dbo].[BAK_原触发器备份]','u') is null 
    create table [dbo].[BAK_原触发器备份] 
    ([数据库名称] nvarchar(200),
     [触发器名称] nvarchar(200),
     [触发器生成语句] nvarchar(max),
     [备份时间] datetime
    )
    if OBJECT_ID('[dbo].[LOG_触发器操作记录]','u') is null 
    create table [dbo].[LOG_触发器操作记录] 
    ([数据库名称] nvarchar(200),
     [触发器名称] nvarchar(200),
     [触发器生成语句] nvarchar(max),
     [操作说明] nvarchar(200),
     [操作时间] datetime
    )
        
    
    ------2.遍历源数据库触发器信息表，在目标库执行生成语句------
    declare @触发器名 nvarchar(100)
    declare @触发器生成语句 nvarchar(max)
    declare @触发器生成语句_初始备份 nvarchar(max)
    declare @sql_definition nvarchar(max)
    declare @sql nvarchar(max)
    declare @flag int

    declare A_cursor cursor for select [name],[definition] from TEMP_源数据库触发器信息
    open A_cursor
    fetch next from A_cursor into @触发器名,@触发器生成语句
    while @@fetch_status=0  
    begin 
    
     
        ----对目标数据库内触发器进行备份----
        select @触发器生成语句_初始备份= [definition] from TEMP_目标数据库触发器信息 where name=@触发器名
        insert into [BAK_原触发器备份] values(@目标数据库,@触发器名,@触发器生成语句_初始备份,GETDATE())  
        
        begin try
        set @flag=0
        if @是否覆盖_1为覆盖原有=1
        begin
            ------对目标数据库中同名触发器进行删除------ 
            IF (select COUNT(*) from  TEMP_目标数据库触发器信息 where [name] = @触发器名) >0
            begin
               set @flag=1
               BEGIN TRY 
               exec('use '+@目标数据库+' drop trigger dbo.'+@触发器名+'')
               print '原触发器被删除： '+@触发器名
               insert into LOG_触发器操作记录 values(@目标数据库,@触发器名,@触发器生成语句_初始备份,'删除原有同名触发器',GETDATE())
               END TRY
               BEGIN CATCH   
                   exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库触发器搬运','触发器',@触发器名,@源数据库,@目标数据库,'若出现 数据库中已有某某对象 错误，为系统表definition出错，当前程序版本暂不能处理，请人工进行复制',@批次标记
               END CATCH;   
               
            end 
            
            ------在目标库执行触发器生成语句------
            BEGIN TRY 
            SET @sql_definition = REPLACE(@触发器生成语句,'''','''''')
            SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
            exec (@sql)    
            print '新触发器已复制/覆盖： '+ @触发器名
            insert into LOG_触发器操作记录 values(@目标数据库,@触发器名,@触发器生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
            END TRY
            BEGIN CATCH   
                exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库触发器搬运','触发器',@触发器名,@源数据库,@目标数据库,'若出现 数据库中已有某某对象 错误，为系统表definition出错，当前程序版本暂不能处理，请人工进行复制',@批次标记
            END CATCH; 
        end
        
        else
        begin
            IF (select COUNT(*) from  TEMP_目标数据库触发器信息 where [name] = @触发器名) =0
            begin
                BEGIN TRY
                ------在目标库执行触发器生成语句------
                SET @sql_definition = REPLACE(@触发器生成语句,'''','''''')
                SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
                exec (@sql)    
                print '新触发器已复制/覆盖： '+ @触发器名
                insert into LOG_触发器操作记录 values(@目标数据库,@触发器名,@触发器生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
                END TRY
                BEGIN CATCH   
                    exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库触发器搬运','触发器',@触发器名,@源数据库,@目标数据库,'若出现 数据库中已有某某对象 错误，为系统表definition出错，当前程序版本暂不能处理，请人工进行复制',@批次标记
                END CATCH;  
            end 
        end
        end try
        begin catch
            exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库触发器搬运','触发器',@触发器名,@源数据库,@目标数据库,'若出现 数据库中已有某某对象 错误，为系统表definition出错，当前程序版本暂不能处理，请人工进行复制',@批次标记
        end catch
        fetch next from A_cursor into @触发器名,@触发器生成语句
       
    end
    
    close A_cursor
    deallocate A_cursor
    
    ---消除重命名问题---
    if OBJECT_ID('[dbo].[TEMP_源数据库触发器信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库触发器信息]')
    exec('
    SELECT * into [TEMP_源数据库触发器信息] FROM ['+@源数据库+'].DBO.SYSOBJECTS A join ['+@源数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库触发器信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库触发器信息]')
    exec('
    SELECT * into [TEMP_目标数据库触发器信息] FROM ['+@目标数据库+'].DBO.SYSOBJECTS A join ['+@目标数据库+'].SYS.Sql_Modules B 
    on A.id=B.object_id
    WHERE A.XTYPE=''TR''') 
    
    declare @oriname nvarchar(1000)
    declare @targetname nvarchar(1000)
    
    if OBJECT_ID('[dbo].[TEMP_触发器重命名表]','u') is not null exec('drop table [dbo].[TEMP_触发器重命名表]')
    select A.name as target_name, B.name as ori_name into dbo.TEMP_触发器重命名表 from TEMP_源数据库触发器信息 A join TEMP_目标数据库触发器信息 B on A.[definition]=B.[definition] 
    where A.name!=B.name
   
    declare re_cursor cursor for select ori_name,target_name from dbo.TEMP_触发器重命名表
    open re_cursor
    fetch next from re_cursor into @oriname,@targetname
    while @@fetch_status=0  
    begin 
       begin try 
       exec ('USE ['+@目标数据库+']; EXEC sp_rename '''+@oriname+''','''+@targetname+'''')
       end try
       
       begin catch 
       exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库触发器搬运','触发器',@触发器名,@源数据库,@目标数据库,'触发器重命名时出现错误！',@批次标记
       end catch
       
       fetch next from re_cursor into @oriname,@targetname
    end
    close re_cursor
    deallocate re_cursor
    
     
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库表结构搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本存储过程将把源数据库中所有表结构搬运至目标数据库
--              @是否覆盖_1为覆盖原有 置1时将删除目标库同名表格并重建空表
--              @是否覆盖_1为覆盖原有 非1时将保留目标数据库同名表格

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）   @是否覆盖_1为覆盖原有 int(置1为覆盖原有同名表格)
--              输出：在目标库生成空表
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库表结构搬运]
   @源数据库   nvarchar(100),
   @目标数据库 nvarchar(100),
   @是否覆盖_1为覆盖原有 int,
   @批次标记 nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON
    -----1. 获取源数据库和目标库所有表名称 传入 dbo.TEMP_XXX存储过程信息------   
    if OBJECT_ID('[dbo].[TEMP_源数据库表名称]','u') is not null exec('drop table [dbo].[TEMP_源数据库表名称]')
    exec('select * into [dbo].[TEMP_源数据库表名称] from ['+@源数据库+'].[DBO].[sysobjects] where xtype=''U'' order by name') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库表名称]','u') is not null exec('drop table [dbo].[TEMP_目标数据库表名称]')
    exec('select * into [dbo].[TEMP_目标数据库表名称] from ['+@目标数据库+'].[DBO].[sysobjects] where xtype=''U'' order by name') 
    
    
    declare @表名称 nvarchar(200)
    
    declare A_cursor cursor for select name from TEMP_源数据库表名称
    open A_cursor
    fetch next from A_cursor into @表名称
    while @@fetch_status=0  
    begin 
       --print @表名称
       ---获取源表格列属性信息---
       if OBJECT_ID('[dbo].[TEMP_源数据库列属性]','u') is not null exec('drop table [dbo].[TEMP_源数据库列属性]')
       
       exec('
       use ['+@源数据库+']
       SELECT * ,columnproperty(OBJECT_ID('''+@表名称+'''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY  into [数据库迁移工具].[dbo].[TEMP_源数据库列属性] FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@源数据库+'].SYS.sysobjects so 
       left join ['+@源数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@源数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@表名称+''') A
       ORDER BY ORDINAL_POSITION
       ')
       
       ---如果不是空表，即源表格中有列，则执行操作---
       if (select COUNT(*) from TEMP_源数据库列属性)>0
       begin
       
       declare @TABLE_SCHEMA nvarchar(128)
       declare @TABLE_NAME nvarchar(128)
       declare @COLUMN_NAME nvarchar(128)
       declare @DATA_TYPE nvarchar(128)
       declare @numeric_precision tinyint
       declare @numric_scale int
       declare @CHARACTER_MAXIMUM_LENGTH int
       declare @IS_IDENTITY int
       declare @IS_NULLABLE varchar(3)
       declare @COLUMN_DEFAULT nvarchar(4000)
       declare @ORDINAL_POSITION INT
       
       declare @column_generate_SQL nvarchar(max)     
       
       select @TABLE_SCHEMA=TABLE_SCHEMA from TEMP_源数据库列属性 where ORDINAL_POSITION=1
       select @TABLE_NAME=TABLE_NAME from TEMP_源数据库列属性 where ORDINAL_POSITION=1
       
       
       ---判断目标数据库是否有同名表格---
       if OBJECT_ID('['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']','u') is not null
       ---删除同名表并重新建表,生成临时填充列-----
       exec ('drop table ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+']')
       exec ('create table ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+'] (填充列けすちヘεηφοÂÎЖЕРюäóœú int)')
       
       
       
       ---遍历所有列属性，向表中加入新列----
       declare B_cursor cursor for select [TABLE_SCHEMA],[TABLE_NAME],[COLUMN_NAME],[DATA_TYPE],[numeric_precision],[numeric_scale],[character_maximum_length],[IS_IDENTITY]
                                         ,[IS_NULLABLE],[COLUMN_DEFAULT],[ordinal_position] from TEMP_源数据库列属性
       open B_cursor
       fetch next from B_cursor into @TABLE_SCHEMA,@TABLE_NAME,@COLUMN_NAME,@DATA_TYPE,@numeric_precision,@numric_scale,@CHARACTER_MAXIMUM_LENGTH,
                                     @IS_IDENTITY,@IS_NULLABLE,@COLUMN_DEFAULT,@ORDINAL_POSITION
       while @@fetch_status=0  
       begin
          IF @COLUMN_DEFAULT is not null
          begin set @COLUMN_DEFAULT=substring(@COLUMN_DEFAULT,2,len(@COLUMN_DEFAULT)-2) end  --去除左右括号
          
          
          set @column_generate_SQL=
           -----增加新字段----
           'ALTER TABLE ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+ @表名称+ '] ADD'+' ['+@COLUMN_NAME+'] ' +
           ----字段数据类型与字段长度----   
           @DATA_TYPE +    
                                                                         
           (case ltrim(rtrim(@DATA_TYPE)) when 'sql_variant' then '' when 'text' then '' when 'ntext' then '' when 'xml' then '' when 'image' then ''
            when 'decimal' then '(' + cast(@numeric_precision as varchar) + ', ' + cast(@numric_scale as varchar) + ')'
            else coalesce('('+case when @CHARACTER_MAXIMUM_LENGTH = -1 then 'MAX' else cast(@CHARACTER_MAXIMUM_LENGTH as varchar) end +')','') end )+' '+
           ----判断自增字段---- 
           (case when @IS_IDENTITY=1 then 'IDENTITY(' + cast(ident_seed('['+@源数据库+'].['+@TABLE_SCHEMA+'].['+ @表名称+ ']') as varchar) + ',' + cast(ident_incr('['+@源数据库+'].['+@TABLE_SCHEMA+'].['+ @表名称+ ']') as varchar) + ')' else '' end) +' '+
           ----是否可为空---- 
           (case when UPPER(@IS_NULLABLE) = 'NO' then 'NOT ' else '' end ) + 'NULL ' + 
           ----是否有默认值----
           (case when @COLUMN_DEFAULT IS NOT NULL THEN 'DEFAULT '+ @COLUMN_DEFAULT ELSE '' END)
           begin try 
           exec (@column_generate_SQL)
           end try
           begin catch
              set @column_generate_SQL='生成语句存在错误，语句为：'+@column_generate_SQL
              exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库表结构搬运','表结构',@表名称,@源数据库,@目标数据库,@column_generate_SQL,@批次标记
           end catch
           
           fetch next from B_cursor into @TABLE_SCHEMA,@TABLE_NAME,@COLUMN_NAME,@DATA_TYPE,@numeric_precision,@numric_scale,@CHARACTER_MAXIMUM_LENGTH,
                                     @IS_IDENTITY,@IS_NULLABLE,@COLUMN_DEFAULT,@ORDINAL_POSITION
       end
       close B_cursor
       deallocate B_cursor     
       ---删除临时填充列---
       exec ('alter table ['+@目标数据库+'].['+@TABLE_SCHEMA+'].['+@TABLE_NAME+'] drop column 填充列けすちヘεηφοÂÎЖЕРюäóœú')
     
       end
       fetch next from A_cursor into @表名称    
        
       print 'DONE: '+@表名称+' 已添加'
    end
    close A_cursor
    deallocate A_cursor
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库数据搬运_单个表格]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022.07.26
-- Description:	运行本存储过程将把源数据库中选定表格数据按要求复制至目标数据库选定数据库
-- 输入: @源数据库   nvarchar(100),     源数据库名称                                                  例：qikan_datacheck
--      @源表名称   nvarchar(100),     源表格名  注意！这里的表格名称不携带schema 即没有 dbo.       例：COUNT_COUNT
--      @目标数据库 nvarchar(100),     目标数据库名称                                                 例：目标数据库
--      @目标表名称 nvarchar(100),     源表格名  注意！这里的表格名称不携带schema 即没有 dbo.       例: COUNT_COUNT
--      @插入方式   nvarchar(100),     需要填入 [增量] 或 [全量]    置全量会删除原有数据             例: 全量
--      @搬运行数   nvarchar(100),     需要填入  数据行数（搬运top n 行） 或 百分比 （搬运top a%）  或  [all] (全部数据)   例：50%  
--      @排序语句   nvarchar(max)      可选项，规定数据填入次序/限定   where ...  order by ... 无此种需求时置''       例： order by qcode

-- 输出：数据将被按规则填入目标表
-- =============================================

CREATE PROCEDURE [dbo].[Proc_数据库数据搬运_单个表格]
     @源数据库   nvarchar(100),
     @源表名称   nvarchar(100),
     @目标数据库 nvarchar(100),
     @目标表名称 nvarchar(100),
     @插入方式   nvarchar(100),  -- '增量' 保留原数据并插入  '全量' 清除原数据并覆盖
     @搬运行数   nvarchar(100),  -- 'all' 为全部搬运， 数字为搬运行数， 百分数为按
     @排序语句   nvarchar(max),   -- '搬运数据时 order by **** 或 where *** order by ***'
     @批次标记   nvarchar(100)
AS
BEGIN
       SET NOCOUNT ON
       
       ---1.比较两表结构，当且仅当表结构完全一致时才进行数据复制过程---
       
       
       if OBJECT_ID('[dbo].[TEMP_源数据库列属性]','u') is not null exec('drop table [dbo].[TEMP_源数据库列属性]')
       exec('
       use ['+@源数据库+']
       SELECT * ,columnproperty(OBJECT_ID(''['+@源表名称+']''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY  into [数据库迁移工具].[dbo].[TEMP_源数据库列属性] FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@源数据库+'].SYS.sysobjects so 
       left join ['+@源数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@源数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@源表名称+''') A
       ORDER BY ORDINAL_POSITION
       ')    
       
       if OBJECT_ID('[dbo].[TEMP_目标数据库列属性]','u') is not null exec('drop table [dbo].[TEMP_目标数据库列属性]')
       exec('
       use ['+@目标数据库+']
       SELECT * ,columnproperty(OBJECT_ID(''['+@目标表名称+']''),COLUMN_NAME,''IsIdentity'') as IS_IDENTITY  into [数据库迁移工具].[dbo].[TEMP_目标数据库列属性] FROM (
       select DISTINCT TABLE_SCHEMA, so.name as TABLE_NAME, COLUMN_NAME, DATA_TYPE,numeric_precision,numeric_scale,character_maximum_length, 
       IS_NULLABLE,COLUMN_DEFAULT,ordinal_position 
       from ['+@目标数据库+'].SYS.sysobjects so 
       left join ['+@目标数据库+'].information_schema.columns c on c.table_name = so.name
       left join ['+@目标数据库+'].SYS.syscolumns sc on sc.id=so.id
       WHERE so.xtype = ''U'' and so.name='''+@目标表名称+''') A
       ORDER BY ORDINAL_POSITION
       ')  
       
       declare @check_result_A int
       declare @check_result_B int
       declare @final_result int
       
       declare @TABLE_SCHEMA_ORI nvarchar(128)
       declare @TABLE_SCHEMA_TARGET nvarchar(128)
       
       declare @non_identity_column nvarchar(max)
   
       select @check_result_A =count(*) from (select * from dbo.TEMP_目标数据库列属性 except select * from dbo.TEMP_源数据库列属性) A
       select @check_result_B =count(*) from (select * from dbo.TEMP_源数据库列属性 except select * from dbo.TEMP_目标数据库列属性) A
       select @TABLE_SCHEMA_ORI= TABLE_SCHEMA from dbo.TEMP_源数据库列属性 
       select @TABLE_SCHEMA_TARGET= TABLE_SCHEMA from dbo.TEMP_目标数据库列属性
       
       set @final_result = @check_result_A + @check_result_B
       IF @final_result!=0
       begin
          print 'ERROR：数据库-'+@源数据库+'-中表 '+@源表名称+ '与数据库-'+@目标数据库+'-中表 '+@目标表名称+'结构不一致，未能进行数据复制'
       end
       IF (select COUNT(*) from dbo.TEMP_目标数据库列属性)=0
       begin
          print 'RESULT FROM: 目标数据库中没有生成对应表格'
       end 
       
       ---2.获取数据迁移行数---
       ELSE 
       BEGIN
          declare @数据总量 int
          declare @数据迁移量 int 
          declare @数据迁移量_char nvarchar(100)
          declare @temp_num float 
          declare @sql_insert nvarchar(max)
          
          if OBJECT_ID('[dbo].[TEMP_ROWcounter]','u') is not null exec('drop table [dbo].[TEMP_ROWcounter]')
          exec('use ['+@源数据库+']; select count(*) as count_num into 数据库迁移工具.dbo.TEMP_ROWcounter from ['+@源表名称+']') 
          select @数据总量 = count_num from TEMP_ROWcounter
          
          
          IF @搬运行数='all'
          begin                       
             set @数据迁移量=@数据总量
             --print @数据迁移量
          end
          
          ELSE IF CHARINDEX('%',@搬运行数)!=0
          begin
             begin try
                set @temp_num= cast(SUBSTRING(@搬运行数,0,CHARINDEX('%',@搬运行数)) as float)
                set @数据迁移量=FLOOR(@temp_num*@数据总量/100)
                --print @数据迁移量
             
             end try 
             BEGIN CATCH
             
                 print 'ERROR:请输入正确的行数（数字整数）或占比（带百分号的百分数）'   
                 EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_单个表格','表格数据',@源表名称,@源数据库,@目标数据库,'请输入正确的行数（数字整数）或占比（带百分号的百分数）',@批次标记
             END CATCH;  
          end
          ELSE 
          begin 
             begin try
                set @数据迁移量=CAST(@搬运行数  as int)
                --print @数据迁移量
             end try
             begin catch
          
                print 'ERROR:请输入正确的行数（数字整数）或占比（带百分号的百分数）'   
                EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_单个表格','表格数据',@源表名称,@源数据库,@目标数据库,'请输入正确的行数（数字整数）或占比（带百分号的百分数）',@批次标记    
             end catch    
          end
          
          ---排序语句规范---
          if @排序语句 is null or @排序语句=' '
          begin
             set @排序语句=''
          end
          
          ---3.进行数据输入-----
          IF @插入方式='增量' and @数据迁移量>0
          BEGIN
              begin try              
              -- @non_identity_column 为所有非自增名的拼合,逗号分隔 例：[a],[b],[d]
              set @数据迁移量_char=CAST(@数据迁移量 as nvarchar(100))
              select @non_identity_column = stuff((select ','+'['+[COLUMN_NAME]+']' from [dbo].[TEMP_源数据库列属性] WHERE IS_IDENTITY =0 FOR xml PATH('')), 1, 1, '')
              print '复制数据(增量):top '+@数据迁移量_char+' ['+@源数据库+'].['+@TABLE_SCHEMA_ORI+'].['+@源表名称+']'+@排序语句+' --> ['+@目标数据库+'].['+@TABLE_SCHEMA_TARGET+'].['+@目标表名称+']'
              print '开始时间：'+cast (getdate() as nvarchar(50))
              set @sql_insert=
                    'insert into ['+@目标数据库+'].['+@TABLE_SCHEMA_TARGET+'].['+@目标表名称+'] ('+@non_identity_column+') 
                    select top '+@数据迁移量_char+' '+@non_identity_column+' from
                    ['+@源数据库+'].['+@TABLE_SCHEMA_ORI+'].['+@源表名称+']'+(case when @排序语句 IS null then '' else @排序语句 end)+''
                    
              print @sql_insert
              exec(@sql_insert)
              
              print '完成复制. 结束时间：'+cast (getdate() as nvarchar(50))             
              end try
              
              begin catch
              
                print 'ERROR:请检查存储过程输入参数（包括排序语句）是否正确'   
                EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_单个表格','表格数据',@源表名称,@源数据库,@目标数据库,'请检查存储过程输入参数（包括排序语句）是否正确',@批次标记     
              end catch   
          END
          ELSE IF @插入方式='全量' and @数据迁移量>0
          BEGIN
              begin try  
              
              ---清空目标表格---
              exec('truncate table ['+@目标数据库+'].['+@TABLE_SCHEMA_TARGET+'].['+@目标表名称+']')    
              set @数据迁移量_char=CAST(@数据迁移量 as nvarchar(100))     
              -- @non_identity_column 为所有非自增名的拼合,逗号分隔 例：[a],[b],[d]
              select @non_identity_column = stuff((select ','+'['+[COLUMN_NAME]+']' from [dbo].[TEMP_源数据库列属性] WHERE IS_IDENTITY =0 FOR xml PATH('')), 1, 1, '')
              set @non_identity_column=dbo.Func_xml_replace(@non_identity_column)
              
              print '复制数据（覆盖）:top '+@数据迁移量_char+' ['+@源数据库+'].['+@TABLE_SCHEMA_ORI+'].['+@源表名称+']'+@排序语句+' --> ['+@目标数据库+'].['+@TABLE_SCHEMA_TARGET+'].['+@目标表名称+']'
              print '开始时间：'+cast (getdate() as nvarchar(50))
        
              set @sql_insert=
                    'insert into ['+@目标数据库+'].['+@TABLE_SCHEMA_TARGET+'].['+@目标表名称+'] ('+@non_identity_column+')
                    select top '+@数据迁移量_char+' '+@non_identity_column+' from
                    ['+@源数据库+'].['+@TABLE_SCHEMA_ORI+'].['+@源表名称+']'+(case when @排序语句 IS null then '' else @排序语句 end)+''
                    
              print @sql_insert
              
              exec(@sql_insert)
              print '完成复制. 结束时间：'+cast (getdate() as nvarchar(50))             
              end try
              
              begin catch
             
                print 'ERROR:请检查存储过程输入参数（包括排序语句）是否正确'   
                EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_单个表格','表格数据',@源表名称,@源数据库,@目标数据库,'请检查存储过程输入参数（包括排序语句）是否正确',@批次标记         
              end catch  
          
          END
          ELSE
          BEGIN
             set @数据迁移量_char=CAST(@数据迁移量 as nvarchar(100)) 
             print '复制数据（覆盖）:top '+@数据迁移量_char+' ['+@源数据库+'].['+@TABLE_SCHEMA_ORI+'].['+@源表名称+']'+@排序语句+' --> ['+@目标数据库+'].['+@TABLE_SCHEMA_TARGET+'].['+@目标表名称+']'
             PRINT 'WARNING INFO：未能传输数据，可传输的数据量为0，请检查原表格是否为空或者插入方式参数是否有误'              
          END
       
       END
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库视图搬运]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	运行本视图将把源数据库中所有视图搬运至目标数据库，
--              @是否覆盖_1为覆盖原有 设为1时，若目标数据库存在同名视图，将对其进行覆盖。
--              @是否覆盖_1为覆盖原有 非1时，若目标数据库存在同名视图，则不对其操作

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）  @是否覆盖_1为覆盖原有(置1为覆盖同名视图)
--              输出：dbo.BAK_原视图备份、dbo.LOG_视图操作记录
--                    视图将搬运到目标库

--              注意:如果源数据库 SYS.Sql_Modules 中definition存储生成过程的 create名称 与 DBO.SYSOBJECTS 中 name 不符，则检验同名步骤失效 
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库视图搬运]
   @源数据库   nvarchar(100),
   @目标数据库 nvarchar(100),
   @是否覆盖_1为覆盖原有 int,
   @批次编号 nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON
    -----1. 获取源数据库和目标库所有的视图名 和具体视图过程 传入 dbo.TEMP_XXX视图信息------   
    if OBJECT_ID('[dbo].[TEMP_源数据库视图信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库视图信息]')
    exec('
    SELECT * into [TEMP_源数据库视图信息] FROM ['+@源数据库+'].[DBO].[SYSOBJECTS] A join ['+@源数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''V''') 
    
    if OBJECT_ID('[dbo].[TEMP_目标数据库视图信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库视图信息]')
    exec('
    SELECT * into [TEMP_目标数据库视图信息] FROM ['+@目标数据库+'].[DBO].[SYSOBJECTS] A join ['+@目标数据库+'].[SYS].[Sql_Modules] B 
    on A.id=B.object_id
    WHERE A.XTYPE=''V''') 
    
     -----初始化备份表与LOG表-----
    if OBJECT_ID('[dbo].[BAK_原视图备份]','u') is  null 
    create table [dbo].[BAK_原视图备份] 
    ([数据库名称] nvarchar(200),
     [视图名称] nvarchar(200),
     [视图生成语句] nvarchar(max),
     [备份时间] datetime
    )
    if OBJECT_ID('[dbo].[LOG_视图操作记录]','u') is null 
    create table [dbo].[LOG_视图操作记录] 
    ([数据库名称] nvarchar(200),
     [视图名称] nvarchar(200),
     [视图生成语句] nvarchar(max),
     [操作说明] nvarchar(200),
     [操作时间] datetime
    )
        
    
    ------2.遍历源数据库视图信息表，在目标库执行生成语句------
    declare @视图名 nvarchar(200)
    declare @视图生成语句 nvarchar(max)
    declare @视图生成语句_初始备份 nvarchar(max)
    declare @sql_definition nvarchar(max)
    declare @sql nvarchar(max)
    declare @flag int

    declare A_cursor cursor for select [name],[definition] from TEMP_源数据库视图信息
    open A_cursor
    fetch next from A_cursor into @视图名,@视图生成语句
    while @@fetch_status=0  
    begin 
        print '正在处理：'+@视图名
        
        ----对目标数据库内视图进行备份----
        select @视图生成语句_初始备份= [definition] from TEMP_目标数据库视图信息 where name=@视图名
        insert into [BAK_原视图备份] values(@目标数据库,@视图名,@视图生成语句_初始备份,GETDATE())  
        
        
        set @flag=0
        if @是否覆盖_1为覆盖原有=1
        begin
            ------对目标数据库中同名视图进行删除------ 
            IF (select COUNT(*) from  TEMP_目标数据库视图信息 where [name] = @视图名) >0
            begin
               set @flag=1
               exec('use '+@目标数据库+' drop function dbo.'+@视图名+'')
               print '原视图被删除： '+@视图名
               insert into LOG_视图操作记录 values(@目标数据库,@视图名,@视图生成语句_初始备份,'删除原有同名视图',GETDATE())
            end 
            ------在目标库执行视图生成语句------
            SET @sql_definition = REPLACE(@视图生成语句,'''','''''')
            SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
            begin try
            exec (@sql)    
            print '新视图已复制/覆盖： '+ @视图名
            insert into LOG_视图操作记录 values(@目标数据库,@视图名,@视图生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
            end try 
            
            begin catch
            set  @sql='若错误信息为 数据库中已存在XX对象，为系统表存在问题，需要人工解决。视图生成语句为：'+@sql
            exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库视图搬运','视图',@视图名,@源数据库,@目标数据库,@sql,@批次编号
            end catch  
        end
        
        else
        begin
        
            declare @flaug int 
            select @flaug=COUNT(*) from  TEMP_目标数据库视图信息 where [name] = @视图名
            print @flaug
        
            IF (select COUNT(*) from  TEMP_目标数据库视图信息 where [name] = @视图名) =0    
            begin
                ------在目标库执行视图生成语句------
                SET @sql_definition = REPLACE(@视图生成语句,'''','''''')
                SET @sql = 'USE ['+@目标数据库+']; EXEC('''+@sql_definition+''')'
                begin try
                exec (@sql)    
                print '新视图已复制/覆盖： '+ @视图名
                insert into LOG_视图操作记录 values(@目标数据库,@视图名,@视图生成语句,(case when @flag=0 then '新增' else '覆盖原有' end),GETDATE())
                end try
                begin catch
                set  @sql='若错误信息为 数据库中已存在XX对象，为系统表存在问题，需要人工解决。视图生成语句为：'+@sql
                exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库视图搬运','视图',@视图名,@源数据库,@目标数据库,@sql,@批次编号
                end catch  
            end 
        end 

        fetch next from A_cursor into @视图名,@视图生成语句
    
    end
    
    close A_cursor
    deallocate A_cursor
    
        ---消除重命名问题---
        
        if OBJECT_ID('[dbo].[TEMP_源数据库视图信息]','u') is not null exec('drop table [dbo].[TEMP_源数据库视图信息]')
        exec('
        SELECT * into [TEMP_源数据库视图信息] FROM ['+@源数据库+'].[DBO].[SYSOBJECTS] A join ['+@源数据库+'].[SYS].[Sql_Modules] B 
        on A.id=B.object_id
        WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''') 
    
        if OBJECT_ID('[dbo].[TEMP_目标数据库视图信息]','u') is not null exec('drop table [dbo].[TEMP_目标数据库视图信息]')
        exec('
        SELECT * into [TEMP_目标数据库视图信息] FROM ['+@目标数据库+'].[DBO].[SYSOBJECTS] A join ['+@目标数据库+'].[SYS].[Sql_Modules] B 
        on A.id=B.object_id
        WHERE A.XTYPE=''FN''OR A.XTYPE=''IF'' OR A.XTYPE=''TF''') 
    
        declare @oriname nvarchar(1000)
        declare @targetname nvarchar(1000)
    
        if OBJECT_ID('[dbo].[TEMP_视图重命名表]','u') is not null exec('drop table [dbo].[TEMP_视图重命名表]')
        select A.name as target_name, B.name as ori_name into dbo.TEMP_视图重命名表 from TEMP_源数据库视图信息 A join TEMP_目标数据库视图信息 B on A.[definition]=B.[definition] 
        where A.name!=B.name
   
        declare re_cursor cursor for select ori_name,target_name from dbo.TEMP_视图重命名表
        open re_cursor
        fetch next from re_cursor into @oriname,@targetname
        while @@fetch_status=0  
        begin 
           begin try
           exec ('USE ['+@目标数据库+']; EXEC sp_rename '''+@oriname+''','''+@targetname+'''')
           end try
           begin catch
           set  @sql='视图重命名错误'
           exec dbo.usp_GetErrorInfo '程序错误','dbo.Proc_数据库视图搬运','视图',@视图名,@源数据库,@目标数据库,@sql,@批次编号
           end catch  
           fetch next from re_cursor into @oriname,@targetname
        end
        close re_cursor
        deallocate re_cursor
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_ASSIST_生成数据复制默认规则表]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 22/07/28
-- Description:	这是一个辅助存储过程，帮助生成默认的数据复制规则表
--              默认数据搬运规则：对源库所有表所有数据搬运到目标库，如果目标库有同名表则删除其原有数据后插入新数据，未设置插入order
--              输入：待搬运的源数据库名称
--              输出：此数据库默认规则表  命名为 [dbo].[RULES_'+@源数据库+'_数据复制规则_默认]
-- =============================================
CREATE PROCEDURE [dbo].[Proc_ASSIST_生成数据复制默认规则表]
	-- Add the parameters for the stored procedure here
    @源数据库 nvarchar(100)
AS
BEGIN
    SET NOCOUNT ON
    begin try 
    if OBJECT_ID('[dbo].[RULES_'+@源数据库+'_数据复制规则_默认]','u') is not null exec('drop table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认]')
    exec('select '''+@源数据库+''' as [源数据库名称], [name] as [源表名称], [name] as [目标表名称], ''TRUE'' as [是否搬运],
          ''全量'' as [插入方式], ''all'' as [搬运行数] , '''' as [排序语句]
          into [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] from '+@源数据库+'.DBO.sysobjects where xtype=''U'' order by name') 
    end try
    begin catch
    exec dbo.usp_GetErrorInfo
    end catch
    
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [源数据库名称] nvarchar(100)') 
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [源表名称] nvarchar(100)')  
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [目标表名称] nvarchar(100)')  
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [是否搬运] nvarchar(10)')  
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [插入方式] nvarchar(10)')  
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [搬运行数] nvarchar(100)')  
    exec ('alter table [dbo].[RULES_'+@源数据库+'_数据复制规则_默认] alter column [排序语句] nvarchar(max)')
    
    select  '[dbo].[RULES_'+@源数据库+'_数据复制规则_默认]' as  输出的默认规则表名称
      
    
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_MAIN_复制库结构到新库]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***
-- =============================================
-- Author:		ZY
-- Create date: 2022/07/14
-- Description:	功能：
                新建数据库 并从源数据库复制数据以外内容进入此库
                包含：  存储过程 (用户自建部分)
                       函数    (用户自建部分，包含标量函数，表函数，内联表函数)   
                       表结构  (字段名，数据类型及长度，是否自增，是否可为空，默认值)
                       索引    (目前只支持有限参数  UNIQUE， clustered/nonclustered, pad_index, fillfactor, ignore_dup_key)
                       约束    (主键、外键、unique、check约束)
                       触发器

--              输入:@源数据库 (源数据库名称)    @目标数据库（目标数据库名称）  @目标数据库保存位置(mdf和ldf文件需要保存到的目录位置)
                输出：不包含数据的目标数据库 
                      dbo.BAK_原触发器备份
                      dbo.BAK_原存储过程备份
                      dbo.BAK_原函数备份
                      dbo.BAK_原视图备份
                      
                      dbo.LOG_数据库结构一致性检查
                      dbo.LOG_数据库结构一致性检查_本次操作
                      dbo.LOG_触发器操作记录
                      dbo.LOG_存储过程操作记录
                      dbo.LOG_函数操作记录
                      dbo.LOG_视图操作记录
                      
                依赖存储过程：dbo.Proc_数据库存储过程搬运
                             dbo.Proc_数据库函数搬运
                             dbo.Proc_数据库表结构搬运
                             dbo.Proc_数据库索引搬运
                             dbo.Proc_数据库视图搬运
                             dbo.Proc_数据库约束搬运
                             dbo.proc_数据库触发器搬运
                             
                             dbo.Proc_数据库结构一致性检查 @源数据库,@目标数据库,@操作编号 
                             
--              注意:如果源数据库 SYS.Sql_Modules 中definition存储生成过程的 create名称 与 DBO.SYSOBJECTS 中 name 不符，则
                     目标数据库不为空时检验同名步骤失效 
-- =============================================
***/
CREATE PROCEDURE [dbo].[Proc_MAIN_复制库结构到新库]
   @源数据库   nvarchar(100),
   @目标数据库 nvarchar(100),
   @目标数据库保存位置 nvarchar(max),
   @操作编号 nvarchar(100)
AS
BEGIN

   IF (EXISTS(SELECT * FROM master.dbo.sysdatabases WHERE dbid=db_ID(@目标数据库)))
   begin
   print('发现已有同名数据库！请核对其无作用后删除或更换目标数据库名称')
   end
   
   ELSE
   BEGIN
   
   ----生成数据库----
   BEGIN TRY
   exec ('
   create database ['+@目标数据库+'] on
    (
	   NAME = '''+@目标数据库+''',
	   FILENAME = '''+@目标数据库保存位置+'\'+@目标数据库+'.mdf'',
	   SIZE = 5,
	   FILEGROWTH = 10%
    )
    LOG ON
    (
	   NAME = '''+@目标数据库+'_log'',
	   FILENAME = '''+@目标数据库保存位置+'\'+@目标数据库+'_log.ldf'',
	   SIZE = 5,
	   FILEGROWTH = 10%
     )
   ')

   ----复制数据库----
   print char(10)+'复制存储过程....'
   exec dbo.Proc_数据库存储过程搬运 @源数据库,@目标数据库,1,@操作编号
   print char(10)+'复制函数....'
   exec dbo.Proc_数据库函数搬运 @源数据库,@目标数据库,1,@操作编号
   print char(10)+'复制表结构....'
   exec dbo.Proc_数据库表结构搬运 @源数据库,@目标数据库,1,@操作编号
   print char(10)+'复制索引....'
   exec dbo.Proc_数据库索引搬运 @源数据库,@目标数据库,1,@操作编号
   print char(10)+'复制视图....'
   exec dbo.Proc_数据库视图搬运 @源数据库,@目标数据库,1,@操作编号
   print char(10)+'复制约束....'
   exec dbo.Proc_数据库约束搬运 @源数据库,@目标数据库,1,@操作编号
   print char(10)+'复制触发器....'
   exec dbo.proc_数据库触发器搬运 @源数据库,@目标数据库,1,@操作编号
   
   ----输出数据库一致性结果----
   exec dbo.Proc_数据库结构一致性检查 @源数据库,@目标数据库,@操作编号 
   
   
   
   print 'DONE'
   END TRY
   BEGIN CATCH
     print '程序未能正常运行结束，请查看 dbo.ERROR_LOG_程序错误记录, 检查数据库保存路径是否存在'
     EXEC dbo.usp_GetErrorInfo '程序错误','Proc_MAIN_复制库结构到新库','主函数错误',null,null,null,null,@操作编号
   END CATCH
   END
   
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库数据搬运_依照规则表]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 22/07/29
-- Description:	功能：依照数据搬运规则表中规则将源数据库中数据复制到目标数据库
--              输入： @目标数据库 nvarchar(100)     目标数据库名称
--                    @数据搬运规则表 nvarchar(100)  格式示例见:dbo.RULES_qikan_datacheck_数据复制规则_默认
--                    @批次号                          本次操作的批次编码（或备注），本值只写入log表中
--              输出：dbo.LOG_数据复制记录
--                   dbo.LOG_数据复制记录_本次操作
--                   消息页面显示当前进程
--                   数据将搬运至目标数据库
--              依赖存储过程：Proc_数据库数据搬运_单个表格
--              依赖表格：@数据搬运规则表
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库数据搬运_依照规则表]
	-- Add the parameters for the stored procedure here
    @目标数据库 nvarchar(100),
    @数据搬运规则表 nvarchar(100),
    @批次号 nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @date nvarchar(100)
	set @date=GETDATE()
	---如果LOG表为空，重建LOG表---
    if OBJECT_ID('[dbo].[LOG_数据复制记录]','u') is null 
    begin
    exec('create table [dbo].[LOG_数据复制记录]
       ([任务ID] int identity(1,1) ,
        [源数据库名称] nvarchar(100),
        [源表名称] nvarchar(100),
        [目标数据库名称] nvarchar(100),
        [目标表名称] nvarchar(100),
        [源表数据行数] nvarchar(100),
        [目标表当前行数] nvarchar(100),
        [任务迁移行数] nvarchar(100),
        [任务开始时间] datetime,
        [任务结束时间] datetime,
        [任务状态] nvarchar(max) default ''未完成操作'' ,
        [数据状态] nvarchar(max),
        [任务批次] nvarchar(max)
       )')
    end
    
    if OBJECT_ID('[dbo].[LOG_数据复制记录_本次操作]','u') is not null begin drop table [dbo].[LOG_数据复制记录_本次操作] end   
    exec('create table [dbo].[LOG_数据复制记录_本次操作]
       ([任务ID] int identity(1,1) ,
        [源数据库名称] nvarchar(100),
        [源表名称] nvarchar(100),
        [目标数据库名称] nvarchar(100),
        [目标表名称] nvarchar(100),
        [源表数据行数] nvarchar(100),
        [目标表当前行数] nvarchar(100),
        [任务迁移行数] nvarchar(100),
        [任务开始时间] datetime,
        [任务结束时间] datetime,
        [任务状态] nvarchar(max) default ''未完成操作'' ,
        [数据状态] nvarchar(max),
        [任务批次] nvarchar(max)
       )')

    
    declare @源数据库名称 nvarchar(100)
    declare @源表名称 nvarchar(100)
    declare @目标表名称 nvarchar(100)
    declare @是否搬运 nvarchar(100)
    declare @插入方式 nvarchar(100)
    declare @搬运行数 nvarchar(100)
    declare @排序语句 nvarchar(max)
    
    declare @column_num_source nvarchar(100)
    declare @colume_num_target_ori nvarchar(100)
    declare @colume_num_target_aft nvarchar(100)
    declare @colume_num_target_det int
    
    declare @源数据总量 int
    declare @数据应迁移量 int 
    declare @temp_num int
    declare @数据状态 nvarchar(100)
    

    exec('
    declare a_cursor cursor for select [源数据库名称],[源表名称],[目标表名称],[是否搬运],[插入方式],[搬运行数],[排序语句] from '+@数据搬运规则表+'') 
    open a_cursor
    fetch next from a_cursor into @源数据库名称,@源表名称,@目标表名称,@是否搬运,@插入方式,@搬运行数,@排序语句
    while @@FETCH_STATUS=0
    begin
         if @是否搬运='TRUE'
         begin
               begin try
               ---获取原始两表数据量---
               if OBJECT_ID('[dbo].[TEMP_ROWcounter]','u') is not null exec('drop table [dbo].[TEMP_ROWcounter]')
               exec('use ['+@源数据库名称+']; select count(*) as count_num into 数据库迁移工具.dbo.TEMP_ROWcounter from ['+@源表名称+']') 
               select @column_num_source = count_num from TEMP_ROWcounter
               set @column_num_source= cast(@column_num_source as nvarchar(100)) 
               
               if @插入方式='增量'  --增量模式下记录原数据量
               begin
               if OBJECT_ID('[dbo].[TEMP_ROWcounter]','u') is not null exec('drop table [dbo].[TEMP_ROWcounter]')
               exec('use ['+@目标数据库+']; select count(*) as count_num into 数据库迁移工具.dbo.TEMP_ROWcounter from ['+@目标表名称+']') 
               select @colume_num_target_ori = count_num from TEMP_ROWcounter
               set @colume_num_target_ori= cast(@colume_num_target_ori as nvarchar(100)) 

               end
               else     --全量模式下设置为0
               begin  
                   set @colume_num_target_ori='0' 
               end 
                                
               
               
               ---初始化本次操作log---
               insert into [dbo].[LOG_数据复制记录] values(@源数据库名称,@源表名称,@目标数据库,@目标表名称,@column_num_source,@colume_num_target_ori,0,GETDATE(),GETDATE(),'未完成操作','未完成操作',@批次号) 
               insert into [dbo].[LOG_数据复制记录_本次操作] values(@源数据库名称,@源表名称,@目标数据库,@目标表名称,@column_num_source,@colume_num_target_ori,0,GETDATE(),GETDATE(),'未完成操作','未完成操作',@批次号) 
               ---执行单表数据复制语句---
               begin try
               exec dbo.Proc_数据库数据搬运_单个表格 @源数据库名称,@源表名称,@目标数据库,@目标表名称,@插入方式,@搬运行数,@排序语句,@批次号
               end try
               begin catch
               EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_依照规则表','表格数据',@源表名称,@源数据库名称,@目标数据库,'本次数据插入出错',@批次号        
               end catch  
               
               ----获取实际迁移表的数据行数和迁移行数----   
               if OBJECT_ID('[dbo].[TEMP_ROWcounter]','u') is not null exec('drop table [dbo].[TEMP_ROWcounter]')
               exec('use ['+@目标数据库+']; select count(*) as count_num into 数据库迁移工具.dbo.TEMP_ROWcounter from ['+@目标表名称+']') 
               select @colume_num_target_aft = count_num from TEMP_ROWcounter
               set @colume_num_target_aft= cast(@colume_num_target_aft as nvarchar(100)) 
                
               set @colume_num_target_det=CAST(@colume_num_target_aft as int) - CAST(@colume_num_target_ori as int)
   
               ----获取应迁移数据行数----
               set @源数据总量= CAST (@column_num_source as int)
               IF @搬运行数='all'
               begin                       
                  set @数据应迁移量=@源数据总量
                  --print @数据应迁移量
               end
 
               ELSE IF CHARINDEX('%',@搬运行数)!=0
               begin
                 begin try
                   set @temp_num= cast(SUBSTRING(@搬运行数,0,CHARINDEX('%',@搬运行数)) as float)
                   set @数据应迁移量=FLOOR(@temp_num*@源数据总量/100)
                   --print @数据应迁移量
                 end try 
                 BEGIN CATCH
                   print 'ERROR:请输入正确的行数（数字整数）或占比（带百分号的百分数）'   
                   EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_依照规则表','表格数据',@源表名称,@源数据库名称,@目标数据库,'请输入正确的行数（数字整数）或占比（带百分号的百分数）',@批次号   
                 END CATCH;  
               end
               ELSE 
               begin 
                 begin try
                    set @数据应迁移量= (CAST(@搬运行数  as int)+cast(@column_num_source as int)-ABS((CAST(@搬运行数  as int)-cast(@column_num_source as int))))/2 
                    --print @数据应迁移量
                 end try
                 begin catch
                    print 'ERROR:请输入正确的行数（数字整数）或占比（带百分号的百分数）'   
                    EXEC dbo.usp_GetErrorInfo '程序错误','dbo.proc_数据库数据搬运_依照规则表','表格数据',@源表名称,@源数据库名称,@目标数据库,'请输入正确的行数（数字整数）或占比（带百分号的百分数）',@批次号        
                 end catch    
               end
               
               ----更新日志表----
               IF @数据应迁移量=@colume_num_target_det 
               begin set @数据状态='数据迁移量正常' end 
               ELSE  
               begin set @数据状态='数据迁移量有误' end
               
               update [dbo].[LOG_数据复制记录] set 目标表当前行数=@colume_num_target_aft, 任务结束时间=GETDATE(), 任务迁移行数=@colume_num_target_det
                                           ,任务状态= '完成迁移', 数据状态=@数据状态 where 源表名称=@源表名称 and 目标表名称=@目标表名称
               update [dbo].[LOG_数据复制记录_本次操作] set 目标表当前行数=@colume_num_target_aft, 任务结束时间=GETDATE(), 任务迁移行数=@colume_num_target_det
                                           ,任务状态= '完成迁移', 数据状态=@数据状态 where 源表名称=@源表名称 and 目标表名称=@目标表名称
                                           
               end try
               begin catch
                  exec dbo.usp_GetErrorInfo '程序错误','Proc_数据库数据搬运_依照规则表','表数据',@源表名称,@源数据库名称,@目标数据库,'未能取得表格列信息，可能该表未能生成或不存在',@批次号
               end catch
                                           
         end
         fetch next from a_cursor into @源数据库名称,@源表名称,@目标表名称,@是否搬运,@插入方式,@搬运行数,@排序语句
    end
    close a_cursor
    deallocate a_cursor
    
   
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_数据库数据搬运_复制检查]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ZY
-- Create date: 2022.08
-- Description:	对于出现数据复制问题的表格进行重新复制，
--              注意！不适用于增量复制出问题的表格！
--              增量复制出问题的情况会较为复杂
-- =============================================
CREATE PROCEDURE [dbo].[Proc_数据库数据搬运_复制检查]
    @目标数据库 nvarchar(100),
    @数据搬运规则表 nvarchar(100),
    @批次号 nvarchar(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    declare @check_flag int
    select @check_flag = COUNT(*) from  dbo.LOG_数据复制记录_本次操作 where 任务批次=@批次号 and (任务状态!='完成迁移' or 数据状态!= '数据迁移量正常')
    
    if @check_flag=0 
    begin
       select '数据迁移正常,结束' as 数据迁移结果
    end
    else if (select COUNT(*) from  dbo.LOG_数据复制记录_本次操作)=0
    begin
       select '未发生数据迁移，请检查变量输入是否有误' as 数据迁移结果
    end
    else 
    begin
    ---把存在问题的全量复制数据重新进行复制---
       if OBJECT_ID('[dbo].[RERUN_问题复制表格_规则]','u') is not null begin drop table [dbo].[RERUN_问题复制表格_规则] end 
       exec('  
       select A.* INTO [dbo].[RERUN_问题复制表格_规则] from '+@数据搬运规则表+' as A join 
       (select 源数据库名称, 源表名称 from LOG_数据复制记录_本次操作 where 任务批次='''+@批次号+''' and (任务状态!=''完成迁移'' or 数据状态!= ''数据迁移量正常''))B 
       on A.源数据库名称=B.源数据库名称 and A.源表名称=B.源表名称 where A.插入方式=''全量''
       ')
       
       ---执行重新复制---
       exec Proc_数据库数据搬运_依照规则表 @目标数据库,[RERUN_问题复制表格_规则],@批次号
    
       select @check_flag = COUNT(*) from  dbo.LOG_数据复制记录_本次操作 where 任务批次=@批次号 and (任务状态!='完成迁移' or 数据状态!= '数据迁移量正常')
    
       if @check_flag=0
       begin
          select '数据迁移正常,结束' as 数据迁移结果
       end
       else
       begin 
       
          if OBJECT_ID('[dbo].[RERUN_问题复制表格_规则]','u') is not null begin drop table [dbo].[RERUN_问题复制表格_规则] end 
          exec('  
          select A.* INTO [dbo].[RERUN_问题复制表格_规则] from '+@数据搬运规则表+' as A join 
          (select 源数据库名称, 源表名称 from LOG_数据复制记录_本次操作 where 任务批次='''+@批次号+''' and (任务状态!=''完成迁移'' or 数据状态!= ''数据迁移量正常''))B 
          on A.源数据库名称=B.源数据库名称 and A.源表名称=B.源表名称 where A.插入方式=''全量''
          ')
          select '重新复制后仍有错误迁移数据，请查看[dbo].[ERROR_LOG_程序错误记录],或依照参考规则手动重新进行复制' as 数据迁移结果
                 ,'exec Proc_数据库数据搬运_依照规则表 @目标数据库,[RERUN_问题复制表格_规则],@批次号' as 参考修正语句
                
          select * from  LOG_数据复制记录_本次操作    
          
       end
    end
END
GO
/****** Object:  StoredProcedure [dbo].[Proc_MAIN_复制数据到新库]    Script Date: 08/19/2022 08:31:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- =============================================
-- Author:		ZY
-- Create date: 2022.08.10
-- Description:	功能：将源数据库数据依照规则表输入目标数据库
                

--              输入:@目标数据库 (目标数据库名称)  @数据搬运规则表   @批次号
                输出：包含数据的目标数据库 
                      dbo.LOG_数据复制记录
                      dbo.LOG_数据复制记录_本次操作
                
                依赖存储过程：dbo.Proc_数据库数据搬运_依照规则表
                             dbo.Proc_数据库数据搬运_复制检查

                依赖表格：RULES_数据复制规则表（@数据搬运规则表）
                        
-- =============================================*/

CREATE PROCEDURE [dbo].[Proc_MAIN_复制数据到新库]
    @目标数据库 nvarchar(100),
    @数据搬运规则表 nvarchar(100),
    @批次号 nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    
    begin try
    ---依照规则表执行数据复制过程---
    exec Proc_数据库数据搬运_依照规则表 @目标数据库,@数据搬运规则表,@批次号
    ---对存在复制问题的数据重新执行一次复制，输出简略审查结果---
    exec Proc_数据库数据搬运_复制检查  @目标数据库,@数据搬运规则表,@批次号
    end try
    begin catch
       print '程序执行错误，请检查输入是否有误'
       EXEC dbo.usp_GetErrorInfo '程序错误','Proc_MAIN_复制数据到新库','主函数错误',null,null,null,null,@批次号
    end catch
    
END
GO
/****** Object:  Default [DF__LOG_数据复制记录__任务状态__64D7DFA6]    Script Date: 08/19/2022 08:31:39 ******/
ALTER TABLE [dbo].[LOG_数据复制记录_本次操作] ADD  DEFAULT ('未完成操作') FOR [任务状态]
GO
/****** Object:  Default [DF__LOG_数据复制记录__任务状态__2E1BDC42]    Script Date: 08/19/2022 08:31:39 ******/
ALTER TABLE [dbo].[LOG_数据复制记录] ADD  DEFAULT ('未完成操作') FOR [任务状态]
GO
