program IBSilent;
{
Usage:
 IBSilent [-v]

Description:
  This program uses the file ib_silent.cfg which is generated by IBInstallConfig or manually.
The file contains the options desired for an Interbase 6.0 install and the desired
installation directory.

The if the full Interbase installation is to be done then one should use the options
that constitute a full install. (See documentation for isc_install_set_option)

ib_silent requires an installation path which is specified with a [INPATH] tag (case sensitive).
The following line should contain the complete path for the install... in future I
plan to generalize the install so that the install path could be passed in as a parameter.
It is suitable now as is for demo purposes.

Requires:
 ib_silent.cfg
 ibinstall.dll
   - Dependant on the type of installation, certain files will be required from the
     Interbase 6.0 installation CD for the install.  The files should be in hierarchical
     order similar to that of the CD.

 When the program is run the exe should placed at the top of the install hierarch.  ibinstall.dll
 should also be placed in the same directory as the exe.
}
{$APPTYPE CONSOLE}
uses
  SysUtils,
  Classes,
  FileCtrl,
  IBInstallBindings;

var
  Options: TStringList;
  itor: Integer;
  Handle : OPTIONS_HANDLE;
  DestDir: String;
  ErrMessage: String;
  Error : Integer;
  Verbose : Boolean;
begin
  Error := 0;
  Handle := 0;
  Verbose := False;

  if  FindCmdLineSwitch( 'v', ['-'], True ) then
    Verbose := True;

  if Verbose then
    writeln( 'Current Working directory is... ' + getcurrentdir );


  Options := TStringList.Create;
  Options.LoadFromFile( GetCurrentDir + '\ib_slnt.cfg' );
  SetLength( ErrMessage, 256 );
  for itor := 0 to Options.Count - 1 do
  begin
    // The whole kitten ca bootle...
    //if Options[itor] = 'INTERBASE' then
    //  Error := isc_install_set_option(@Handle, INTERBASE);

    // Main components...
    if Options[itor] = 'IB_SERVER' then
      Error := isc_install_set_option(@Handle, IB_SERVER);
    if Options[itor] = 'IB_CLIENT' then
      Error := isc_install_set_option(@Handle, IB_CLIENT);
    if Options[itor] = 'IB_DEV' then
      Error := isc_install_set_option(@Handle, IB_DEV);
    if Options[itor] = 'IB_DOC' then
      Error := isc_install_set_option(@Handle, IB_DOC);

    //examples...
    if Options[itor] = 'IB_EXAMPLES' then
      Error := isc_install_set_option(@Handle, IB_EXAMPLES);
    if Options[itor] = 'IB_EXAMPLE_DB' then
      Error := isc_install_set_option(@Handle, IB_EXAMPLE_DB);
    if Options[itor] = 'IB_EXAMPLE_API' then
      Error := isc_install_set_option(@Handle, IB_EXAMPLE_API);

    //Tools...
    if Options[itor] = 'IB_CMD_TOOLS' then
      Error := isc_install_set_option(@Handle, IB_CMD_TOOLS);
    if Options[itor] = 'IB_GUI_TOOLS' then
      Error := isc_install_set_option(@Handle, IB_GUI_TOOLS);

    //set install path...
    if Options[itor] = '[INPATH]' then
      DestDir := Options[itor + 1];

    //Check to see if there were errors at the end of loop....
    if (Error = 0) and Verbose then
      writeln( 'Added to Habdle: ' + Options[itor] )  //Otherwise print to screen...
    else
    begin
      //If there is an error then display error typ?
      isc_install_get_message( Handle, Error, PCHar(ErrMessage), Length(ErrMessage) );
      if Verbose then
      begin
        Writeln('Error loading option...');
        Writeln( TrimRight( ErrMessage ) );
      end
    end;
  end;

  //might want to make directory if it doesn't exist....
//  if not DirectoryExists(DestDir) then
  //  MkDir( DestDir );

  // Begin Installation...
  Error := isc_install_precheck(Handle, PChar(GetCurrentDir), PChar(DestDir));

  if (Error <> 0) then
  begin
    isc_install_get_message( Handle, Error, PCHar(ErrMessage), Length(ErrMessage) );
    //Dump debug info...
    if Verbose then
    begin
      Writeln( 'Error in precheck...');
      Writeln( TrimRight( ErrMessage ) );
      Exit;
    end;
  end
  else
  begin
    Error := isc_install_execute(Handle, PChar(GetCurrentDir), PChar(DestDir),
                          nil, nil, nil,
                          nil, PChar( DestDir + '\uninstall.txt' ));
    if Error <> 0 then
    begin
      isc_install_get_message( Handle, Error, PCHar(ErrMessage), Length(ErrMessage) );
      //Dump Debug info...
      if Verbose then
      begin
        Writeln( 'Error during install...' );
        Writeln( TrimRight( ErrMessage ) );
        Exit;
      end;
    end;
    isc_install_clear_options(@Handle);
  end;

  Options.Destroy;

  if Verbose then
    writeln('Successful Install...');

  readln;
end.
