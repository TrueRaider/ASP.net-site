﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="u0187499_dbOrg")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertList_(List_ instance);
  partial void UpdateList_(List_ instance);
  partial void DeleteList_(List_ instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["sberbankQRConnectionString1"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<List_> List_s
	{
		get
		{
			return this.GetTable<List_>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.List$")]
public partial class List_ : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _Name;
	
	private string _BIC;
	
	private string _PersonalAcc;
	
	private string _PayeeINN;
	
	private string _CorrespAcc;
	
	private double _OrdNum;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnBICChanging(string value);
    partial void OnBICChanged();
    partial void OnPersonalAccChanging(string value);
    partial void OnPersonalAccChanged();
    partial void OnPayeeINNChanging(string value);
    partial void OnPayeeINNChanged();
    partial void OnCorrespAccChanging(string value);
    partial void OnCorrespAccChanged();
    partial void OnOrdNumChanging(double value);
    partial void OnOrdNumChanged();
    #endregion
	
	public List_()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_BIC", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
	public string BIC
	{
		get
		{
			return this._BIC;
		}
		set
		{
			if ((this._BIC != value))
			{
				this.OnBICChanging(value);
				this.SendPropertyChanging();
				this._BIC = value;
				this.SendPropertyChanged("BIC");
				this.OnBICChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersonalAcc", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
	public string PersonalAcc
	{
		get
		{
			return this._PersonalAcc;
		}
		set
		{
			if ((this._PersonalAcc != value))
			{
				this.OnPersonalAccChanging(value);
				this.SendPropertyChanging();
				this._PersonalAcc = value;
				this.SendPropertyChanged("PersonalAcc");
				this.OnPersonalAccChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PayeeINN", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
	public string PayeeINN
	{
		get
		{
			return this._PayeeINN;
		}
		set
		{
			if ((this._PayeeINN != value))
			{
				this.OnPayeeINNChanging(value);
				this.SendPropertyChanging();
				this._PayeeINN = value;
				this.SendPropertyChanged("PayeeINN");
				this.OnPayeeINNChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CorrespAcc", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
	public string CorrespAcc
	{
		get
		{
			return this._CorrespAcc;
		}
		set
		{
			if ((this._CorrespAcc != value))
			{
				this.OnCorrespAccChanging(value);
				this.SendPropertyChanging();
				this._CorrespAcc = value;
				this.SendPropertyChanged("CorrespAcc");
				this.OnCorrespAccChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OrdNum", DbType="Float NOT NULL", IsPrimaryKey=true)]
	public double OrdNum
	{
		get
		{
			return this._OrdNum;
		}
		set
		{
			if ((this._OrdNum != value))
			{
				this.OnOrdNumChanging(value);
				this.SendPropertyChanging();
				this._OrdNum = value;
				this.SendPropertyChanged("OrdNum");
				this.OnOrdNumChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
