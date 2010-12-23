/// <summary>
/// Unit generated using the Delphi Wmi class generator tool, Copyright Rodrigo Ruz V. 2010
/// Application version 0.1.0.112
/// WMI version 7600.16385
/// Creation Date 23-12-2010 06:06:25
/// Namespace root\CIMV2 Class Win32_LogicalShareSecuritySetting
/// MSDN info about this class http://msdn2.microsoft.com/library/default.asp?url=/library/en-us/wmisdk/wmi/Win32_LogicalShareSecuritySetting.asp
/// </summary>

{$IFDEF FPC}
 {$MODE DELPHI} {$H+}
 {$DEFINE OLD_DELPHI}
{$ENDIF}

unit uWin32_LogicalShareSecuritySetting;

interface

uses
 Classes,
 Activex,
 Variants,
 ComObj,
 uWmiDelphiClass;

type
{$IFDEF FPC}
  Cardinal=Longint;
  Int64=Integer;
  Word=Longint;
{$ENDIF}
{$IFNDEF FPC}
  {$IF CompilerVersion <= 15}
    {$DEFINE OLD_DELPHI}
  {$IFEND}
{$ENDIF}
  {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  /// security settings for a logical file
  /// </summary>
  {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
  TWin32_LogicalShareSecuritySetting=class(TWmiClass)
  private
    FCaption                            : String;
    FControlFlags                       : Cardinal;
    FDescription                        : String;
    FName                               : String;
    FSettingID                          : String;
  public
   constructor Create(LoadWmiData : boolean=True); overload;
   destructor Destroy;Override;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// A short textual description (one-line string) of the CIM_Setting object.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Caption : String read FCaption;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// Inheritance-related flags.  See SECURITY_DESCRIPTOR_CONTROL
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property ControlFlags : Cardinal read FControlFlags;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// A textual description of the CIM_Setting object.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Description : String read FDescription;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The name of the share
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property Name : String read FName;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// The identifier by which the CIM_Setting object is known.
   /// </summary>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   property SettingID : String read FSettingID;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// Retrieves a structural representation of the object's security descriptor.
   /// The method returns an integer value that can be interpreted as follows: 
   /// 0 - Successful completion.
   /// 2 - The user does not have access to the requested information.
   /// 8 - Unknown failure.
   /// 9 - The user does not have adequate privileges.
   /// 21 - The specified parameter is invalid.
   /// Other - For integer values other than those listed above, refer to Win32 error code documentation.
   /// </summary>
   /// <param name="Descriptor">
   /// Retrieves a structural representation of the object's security descriptor.
   /// The method returns an integer value that can be interpreted as follows: 
   /// 0 - Successful completion.
   /// 2 - The user does not have access to the requested information.
   /// 8 - Unknown failure.
   /// 9 - The user does not have adequate privileges.
   /// 21 - The specified parameter is invalid.
   /// Other - For integer values other than those listed above, refer to Win32 error code documentation.
   /// </param>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   function GetSecurityDescriptor(var Descriptor : OleVariant): Integer;
   {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
   /// <summary>
   /// Sets security descriptor to the specified structure.
   /// The method returns an integer value that can be interpreted as follows: 
   /// 0 - Successful completion.
   /// 2 - The user does not have access to the requested information.
   /// 8 - Unknown failure.
   /// 9 - The user does not have adequate privileges.
   /// 21 - The specified parameter is invalid.
   /// Other - For integer values other than those listed above, refer to Win32 error code documentation.
   /// </summary>
   /// <param name="Descriptor">
   /// Sets security descriptor to the specified structure.
   /// The method returns an 
   /// integer value that can be interpreted as follows: 
   /// 0 - Successful completion.
   /// 2 
   /// - The user does not have access to the requested information.
   /// 8 - Unknown 
   /// failure.
   /// 9 - The user does not have adequate privileges.
   /// 21 - The specified 
   /// parameter is invalid.
   /// Other - For integer values other than those listed above, 
   /// refer to Win32 error code documentation.
   /// </param>
   {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
   function SetSecurityDescriptor(const Descriptor : OleVariant): Integer;
   procedure SetCollectionIndex(Index : Integer); override;
  end;


  {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  /// Return the description for the result of the function 
  /// TWin32_LogicalShareSecuritySetting.GetSecurityDescriptor
  /// </summary>
  {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
  function GetResultGetSecurityDescriptorAsString(const ReturnValue:Integer) : string;
  {$IFDEF UNDEF}{$REGION 'Documentation'}{$ENDIF}
  /// <summary>
  /// Return the description for the result of the function 
  /// TWin32_LogicalShareSecuritySetting.SetSecurityDescriptor
  /// </summary>
  {$IFDEF UNDEF}{$ENDREGION}{$ENDIF}
  function GetResultSetSecurityDescriptorAsString(const ReturnValue:Integer) : string;

implementation


function GetResultGetSecurityDescriptorAsString(const ReturnValue:Integer) : string;
begin
Result:='';
  case ReturnValue of
    0 : Result:='Success';
    2 : Result:='Access denied';
    8 : Result:='Unknown failure';
    9 : Result:='Privilege missing';
    21 : Result:='Invalid parameter'
    else Result:='Other';
  end;
end;

function GetResultSetSecurityDescriptorAsString(const ReturnValue:Integer) : string;
begin
Result:='';
  case ReturnValue of
    0 : Result:='Success';
    2 : Result:='Access denied';
    8 : Result:='Unknown failure';
    9 : Result:='Privilege missing';
    21 : Result:='Invalid parameter'
    else Result:='Other';
  end;
end;

{TWin32_LogicalShareSecuritySetting}

constructor TWin32_LogicalShareSecuritySetting.Create(LoadWmiData : boolean=True);
begin
  inherited Create(LoadWmiData,'root\CIMV2','Win32_LogicalShareSecuritySetting');
end;

destructor TWin32_LogicalShareSecuritySetting.Destroy;
begin
  inherited;
end;

procedure TWin32_LogicalShareSecuritySetting.SetCollectionIndex(Index : Integer);
begin
  if (Index>=0) and (Index<=FWmiCollection.Count-1) and (FWmiCollectionIndex<>Index) then
  begin
    FWmiCollectionIndex:=Index;
    FCaption           := VarStrNull(inherited Value['Caption']);
    FControlFlags      := VarCardinalNull(inherited Value['ControlFlags']);
    FDescription       := VarStrNull(inherited Value['Description']);
    FName              := VarStrNull(inherited Value['Name']);
    FSettingID         := VarStrNull(inherited Value['SettingID']);
  end;
end;


//not static, OutParams>1, InParams>0
function TWin32_LogicalShareSecuritySetting.GetSecurityDescriptor(var Descriptor : OleVariant): Integer;
var
//output variants  helpers
  vDescriptor : OleVariant;
begin
  Result       := VarIntegerNull(GetInstanceOf.GetSecurityDescriptor(vDescriptor));
  Descriptor   := VarStrNull(vDescriptor);
end;

//not static, OutParams=1, InParams>0
function TWin32_LogicalShareSecuritySetting.SetSecurityDescriptor(const Descriptor : OleVariant): Integer;
var
  ReturnValue : OleVariant;
begin
  ReturnValue := GetInstanceOf.SetSecurityDescriptor(Descriptor);
  Result      := VarIntegerNull(ReturnValue);
end;

end.