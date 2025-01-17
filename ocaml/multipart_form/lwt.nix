{ buildDunePackage
, multipart_form
, angstrom
, bigarray-compat
, bigstringaf
, ke
, lwt
, result
, alcotest
, alcotest-lwt
, rosetta
, rresult
, unstrctrd
, logs
}:

buildDunePackage {
  pname = "multipart_form-lwt";
  inherit (multipart_form) src version;

  postPatch = ''
    substituteInPlace lib_lwt/dune --replace " bigarray " " "
  '';

  doCheck = false;

  propagatedBuildInputs = [
    angstrom
    bigarray-compat
    bigstringaf
    ke
    lwt
    result
    multipart_form
  ];

  checkInputs = [
    alcotest
    alcotest-lwt
    rosetta
    rresult
    unstrctrd
    logs
  ];
}
