// Delphi 4
{$IFDEF VER120}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL4O}
  {$DEFINE DELPHI}
  {$DEFINE DELPHI4}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
{$ENDIF}

// C++ Builder 4
{$IFDEF VER125}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL4O}
  {$DEFINE CBUILDER}
  {$DEFINE CBUILDER4}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
{$ENDIF}

// Delphi 5 & CBuilder 5
{$IFDEF VER130}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL5ORABOVE}
  {$DEFINE VCL5O}
  {$IFDEF BCB}
    {$DEFINE CBUILDER}
    {$DEFINE CBUILDER5}
  {$ELSE}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI5}
  {$ENDIF}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
  {$DEFINE SAMETEXT}
{$ENDIF}

//Delphi 6
{$IFDEF VER140}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL5ORABOVE}
  {$IFDEF BCB}
    {$DEFINE CBUILDER}
    {$DEFINE CBUILDER6}
  {$ELSE}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI6}
  {$ENDIF}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
  {$DEFINE SAMETEXT}
  {$DEFINE VCL6ORABOVE}
  {$DEFINE VCL6O}
{$ENDIF}

//Delphi 7
{$IFDEF VER150}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL5ORABOVE}
  {$IFDEF BCB}
    {$DEFINE CBUILDER}
    {$DEFINE CBUILDER7}
  {$ELSE}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI7}
  {$ENDIF}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
  {$DEFINE SAMETEXT}
  {$DEFINE VCL6ORABOVE}
  {$DEFINE VCL7ORABOVE}
  {$DEFINE VCL6O}
  {$DEFINE VCL70}
{$ENDIF}

//Delphi 8
{$IFDEF VER160}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL5ORABOVE}
  {$IFDEF BCB}
    {$DEFINE CBUILDER}
    {$DEFINE CBUILDER8}
  {$ELSE}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI8}
  {$ENDIF}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
  {$DEFINE SAMETEXT}
  {$DEFINE VCL6ORABOVE}
  {$DEFINE VCL7ORABOVE}
  {$DEFINE VCL80RABOVE}
  {$DEFINE VCL6O}
  {$DEFINE VCL70}
  {$DEFINE VCL80}
{$ENDIF}

{$IFDEF LINUX}
  {$DEFINE VCL4ORABOVE}
  {$DEFINE VCL5ORABOVE}
  {$DEFINE OVERLOADING}
  {$DEFINE OPTIONALPARAMS}
  {$DEFINE SAMETEXT}
  {$DEFINE VCL6ORABOVE}
  {$DEFINE VCL6O}
  {$UNDEF DELPHI6}
  {$DEFINE KYLIX}
  {$IFDEF VER140}
    {$DEFINE KYLIX2}
  {$ENDIF}
  {$IFDEF VER145}
    {$DEFINE KYLIX3}
    {$IFDEF BCB}
      {$DEFINE BCBKYLIX3}
    {$ENDIF}
  {$ENDIF}
  {$IFDEF VER150}
    {$DEFINE KYLIX4}
  {$ENDIF}
{$ENDIF}