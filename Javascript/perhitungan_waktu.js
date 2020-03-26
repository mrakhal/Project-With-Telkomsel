function waktusholat(tgl, bln, thn, lat, lng, alt) {
  //DETAIL PERHITUNGAN
  var M;
  var Y;
  var A;
  var B;
  var L;
  var ketinggiantpt;
  //PUKUL 12 LT
  var JDUT;
  var JDLT;
  var U;
  var LO;
  var DM;
  var EOT;
  var ST;
  //DZUHUR
  var DZUHUR;
  var JDZUHUR;
  var STDZUHUR;
  var UDZUHUR;
  var LODZUHUR;
  var DMDZUHUR;
  var EOTDZUHUR;
  var WDZUHUR;
  //ASHAR
  var PCOSASHAR;
  var JDASHAR;
  var STASHAR;
  var UASHAR;
  var LOASHAR;
  var DMASHAR;
  var EOTASHAR;
  var ANASHAR;
  var KALASHAR;
  var ASASHAR;
  var COSASHAR;
  var HOURANGLEASHAR;
  var WAKTUASHAR;

  //MAGHRIB
  var PCOSMAGHRIB;
  var HOURANGLEMAGHRIB;
  var JDMAGHRIB;
  var STMAGHRIB;
  var UMAGHRIB;
  var LOMAGHRIB;
  var DMMAGHRIB;
  var EOTMAGHRIB;
  var COSHOURANGLEMAGHRIB;
  var HOURANGLEMAGHRIBS;
  var WMAGHRIB;
  //ISYA
  var SISYA;
  var PCOSISYA;
  var HOURISYA;
  var JDISYA;
  var STISYA;
  var UISYA;
  var LOISYA;
  var DMISYA;
  var EOTISYA;
  var COSHOURISYA;
  var HOURANGLEISYA;
  var WISYA;

  //Shubuh
  var SSHUBUH;
  var PCOSSHUBUH;
  var HOURSHUBUH;
  var JDSHUBUH;
  var STSHUBUH;
  var USHUBUH;
  var LOSHUBUH;
  var DMSHUBUH;
  var EOTSHUBUH;
  var COSHOURSHUBUH;
  var HOURANGLESHUBUH;
  var WSHUBUH;

  //TERBIT MATAHARI
  var PCOSHOURANGLESYURUQ;
  var HOURANGLESYURUQ;
  var JDSYURUQ;
  var STSYURUQ;
  var USYURUQ;
  var LOSYURUQ;
  var DMSYURUQ;
  var EOTSYURUQ;
  var COSHOURANGLESYURUQ;
  var HOURANGLESYURUQS;
  var WSYURUQ;

  //WAKTU SHALAT
  var SHUBUH;
  var SYURUQ;
  var DZUHUR;
  var ASHAR;
  var MAGHRIB;
  var ISYA;


  /* -------Waktu Shalat--------*/
  console.log("~~~~~DETAIL PERHITUNGAN~~~~~");
  //menentukan M
  if (bln < 3) {
    M = bln + 12;
  } else {
    M = bln;
  }
  console.log("M " + M);
  // menentukan Y
  if (bln < 3) {
    Y = thn - 1;
  } else {
    Y = thn;
  }
  console.log("Y " + Y);
  // menentukan A
  A = Math.floor(thn / 100, 0);
  console.log("A " + A);
  // menentukan B
  if (thn < 1583) {
    if (bln < 11) {
      if (tgl < 4) {
        B = 0;
      } else if (tgl > 14) {
        B = 2 + Math.floor(A / 4) - A;
      } else {
        "TANGGAL SALAH";
      }
    } else {
      B = 2 + Math.floor(A / 4) - A;
    }
  } else {
    B = 2 + Math.floor(A / 4) - A;
  }
  console.log("B " + B);
  //lintang
  L = -6.95 * Math.PI / 180;
  console.log("L " + L);

  console.log("~~~~~PUKUL 12.00 LT~~~~~");
  //pukul 12 LT
  //Julian day UT
  JDUT = 1720994.5 + Math.floor(365.25 * Y) + Math.floor(30.60001 * (M + 1)) + B + tgl + 12 / 24;
  console.log("JDUT " + JDUT);
  JDLT = JDUT - 7 / 24;
  console.log("JDLT " + JDLT);
  U = (JDLT - 2451545) / 36525;
  console.log("U " + U);
  ST = 2 * Math.PI * (JDLT - 2451545) / 365.25;
  console.log("ST " + ST);
  LO = (280.46607 + 36000.7698 * U) * Math.PI / 180;
  console.log("LO " + LO);
  DM = 0.37877 + 23.264 * Math.sin((57.297 * ST - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * ST - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * ST - 59.722) * Math.PI / 180);
  console.log("DM " + DM);
  EOT = (-1 * (1789 + 237 * U) * Math.sin(LO) - (7146 - 62 * U) * Math.cos(LO) + (9934 - 14 * U) * Math.sin(2 * LO) - (29 + 5 * U) * Math.cos(2 * LO) + (74 + 10 * U) * Math.sin(3 * LO) + (320 - 4 * U) * Math.cos(3 * LO) - 212 * Math.sin(4 * LO)) / 1000;
  console.log("EOT " + EOT);

  //WAKTU Dzuhur 
  console.log("~~~~~DZUHUR~~~~~");
  console.log("Waktu Dzuhur : ");
  DZUHUR = 12 + 7 - 107.61666667 / 15 - EOT / 60;
  console.log("DZUHUR " + DZUHUR);
  JDZUHUR = JDLT + DZUHUR / 24 - 12 / 24;
  console.log("JDZUHUR " + JDZUHUR);
  STDZUHUR = 2 * Math.PI * (JDZUHUR - 2451545) / 365.25;
  console.log("STDZUHUR " + STDZUHUR);
  UDZUHUR = (JDZUHUR - 2451545) / 36525;
  console.log("UDZUHUR " + UDZUHUR);
  LODZUHUR = (280.46607 + 36000.7698 * UDZUHUR) * Math.PI / 180;
  console.log("LODZUHUR " + LODZUHUR);
  DMDZUHUR = 0.37877 + 23.264 * Math.sin((57.297 * STDZUHUR - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * STDZUHUR - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * STDZUHUR - 59.722) * Math.PI / 180);
  console.log("DMDZUHUR " + DMDZUHUR);
  EOTDZUHUR = (-1 * (1789 + 237 * UDZUHUR) * Math.sin(LODZUHUR) - (7146 - 62 * UDZUHUR) * Math.cos(LODZUHUR) + (9934 - 14 * UDZUHUR) * Math.sin(2 * LODZUHUR) - (29 + 5 * UDZUHUR) * Math.cos(2 * LODZUHUR) + (74 + 10 * UDZUHUR) * Math.sin(3 * LODZUHUR) + (320 - 4 * UDZUHUR) * Math.cos(3 * LODZUHUR) - 212 * Math.sin(4 * LODZUHUR)) / 1000;
  console.log("EOTDZUHUR " + EOTDZUHUR);
  WDZUHUR = 12 + 7 - 107.6166667 / 15 - EOT / 60;
  console.log("Waktu Dzuhur : " + WDZUHUR);

  console.log("~~~~~ASHAR~~~~~");
  //WAKTU ASHAR
  console.log("Waktu Ashar : ");
  PCOSASHAR = Math.sin((Math.atan(1 / (1 + Math.tan(Math.abs(L - DM * Math.PI / 180))))) - Math.sin(DM * Math.PI / 180) * Math.sin(L)) / (Math.cos(DM * Math.PI / 180) * Math.cos(L));
  console.log("PCOSASHAR " + PCOSASHAR);
  HOURANGLEASHAR = Math.acos(PCOSASHAR) * 180 / Math.PI;
  console.log("HOURANGLEASHAR " + HOURANGLEASHAR);
  JDASHAR = JDLT + HOURANGLEASHAR / 360;
  console.log("JDASHAR " + JDASHAR);
  STASHAR = 2 * Math.PI * (JDASHAR - 2451545) / 365, 25;
  console.log("STASHAR " + STASHAR);
  UASHAR = (JDASHAR - 2451545) / 36525;
  console.log("UASHAR " + UASHAR);
  LOASHAR = (280.46607 + 36000.7698 * UASHAR) * Math.PI / 180;
  console.log("LOASHAR " + LOASHAR);
  DMASHAR = 0.37877 + 23.264 * Math.sin((57.297 * STASHAR - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * STASHAR - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * STASHAR - 59.722) * Math.PI / 180);
  console.log("DMASHAR " + DMASHAR);
  EOTASHAR = (-1 * (1789 + 237 * UASHAR) * Math.sin(LOASHAR) - (7146 - 62 * UASHAR) * Math.cos(LOASHAR) + (9934 - 14 * UASHAR) * Math.sin(2 * LOASHAR) - (29 + 5 * UASHAR) * Math.cos(2 * LOASHAR) + (74 + 10 * UASHAR) * Math.sin(3 * LOASHAR) + (320 - 4 * UASHAR) * Math.cos(3 * LOASHAR) - 212 * Math.sin(4 * LOASHAR)) / 1000;
  console.log("EOTASHAR " + EOTASHAR);
  ANASHAR = Math.atan(1 / (1 + Math.tan(Math.abs(L - (DMASHAR * Math.PI / 180))))) * 180 / Math.PI;
  console.log("ANASHAR " + ANASHAR);
  KALASHAR = 1 / (60 * Math.tan((ANASHAR + 7.31 / (ANASHAR + 4.4)) * Math.PI / 180));
  console.log("KALASHAR " + KALASHAR);
  ASASHAR = ANASHAR - KALASHAR;
  console.log("ASASHAR " + ASASHAR);
  COSASHAR = Math.sin((ASASHAR * (Math.PI / 180)) - Math.sin(DMASHAR * (Math.PI / 180)) * Math.sin(L)) / (Math.cos(DMASHAR * (Math.PI / 180)) * Math.cos(L));
  console.log("COSASHAR " + COSASHAR);
  HOURANGLEASHAR = Math.acos(COSASHAR) * 180 / Math.PI;
  console.log("HOURANGLEASHAR " + HOURANGLEASHAR);
  WAKTUASHAR = 12 + 7 - 107.6166667 / 15 - EOTASHAR / 60 + HOURANGLEASHAR / 15;
  console.log("Waktu Ashar : " + WAKTUASHAR);


  //MAGHRIB
  console.log("~~~~~MAGHRIB~~~~~");
  //PCOSMAGHRIB;
  PCOSMAGHRIB = Math.sin(((-0.8333 - 0.0347 * Math.pow(768, 0.5)) * Math.PI / 180) - Math.sin(DM * Math.PI / 180) * Math.sin(L)) / (Math.cos(DM * Math.PI / 180) * Math.cos(L));
  console.log("PERKIRAAN COS (HOUR ANGLE) MAGHRIB : " + PCOSMAGHRIB);
  //HOURANGLEMAGHRIB;
  if (Math.abs(PCOSMAGHRIB) > 1) {
    HOURANGLEMAGHRIB = "TIDAK ADA";
  } else {
    HOURANGLEMAGHRIB = Math.acos((Math.sin((-0.8333 - 0.0347 * (Math.pow(768, 0.5))) * Math.PI / 180) - Math.sin(DM * Math.PI / 180) * Math.sin(L)) / (Math.cos(DM * Math.PI / 180) * Math.cos(L))) * 180 / Math.PI;
  }
  console.log("PERKIRAAN HOUR ANGLE MAGHRIB : " + HOURANGLEMAGHRIB);
  //JDMAGHRIB;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    JDMAGHRIB = "TIDAK ADA";
  } else {
    JDMAGHRIB = JDLT + HOURANGLEMAGHRIB / 360;
  }
  console.log("JULIAN DAY MAGHRIB : " + JDMAGHRIB);
  //STMAGHRIB;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    STMAGHRIB = "TIDAK ADA";
  } else {
    STMAGHRIB = 2 * Math.PI * (JDMAGHRIB - 2451545) / 365.25;
  }
  console.log("SUDUT TANGGAL T MAGHRIB : " + STMAGHRIB);
  //UMAGHRIB;\
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    UMAGHRIB = "TIDAK ADA";
  } else {
    UMAGHRIB = (JDMAGHRIB - 2451545) / 36525;
  }
  console.log("U MAGHRIB : " + UMAGHRIB);
  //LOMAGHRIB;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    LOMAGHRIB = "TIDAK ADA";
  } else {
    LOMAGHRIB = (280.46607 + 36000.7698 * UMAGHRIB) * Math.PI / 180;
  }
  console.log("L0 MAGHRIB : " + LOMAGHRIB);
  //DMMAGHRIB;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    DMMAGHRIB = "TIDAK ADA";
  } else {
    DMMAGHRIB = 0.37877 + 23.264 * Math.sin((57.297 * STMAGHRIB - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * STMAGHRIB - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * STMAGHRIB - 59.722) * Math.PI / 180);
  }
  console.log("DEKLINASI MATAHARI MAGHRIB: " + DMMAGHRIB);
  //EOTMAGHRIB;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    EOTMAGHRIB = "TIDAK ADA";
  } else {
    EOTMAGHRIB = (-1 * (1789 + 237 * UMAGHRIB) * Math.sin(LOASHAR) - (7146 - 62 * UASHAR) * Math.cos(LOASHAR) + (9934 - 14 * UMAGHRIB) * Math.sin(2 * LOMAGHRIB) - (29 + 5 * UASHAR) * Math.cos(2 * LOMAGHRIB) + (74 + 10 * UASHAR) * Math.sin(3 * LOASHAR) + (320 - 4 * UASHAR) * Math.cos(3 * LOASHAR) - 212 * Math.sin(4 * LOASHAR)) / 1000;
  }
  console.log("EQUATION OF TIME MAGHRIB: " + EOTMAGHRIB);
  //COSHOURANGLEMAGHRIB;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    COSHOURANGLEMAGHRIB = "TIDAK ADA";
  } else {
    COSHOURANGLEMAGHRIB = Math.sin(((-0.8333 - 0.0347 * (Math.pow(768, 0.5))) * Math.PI / 180) - Math.sin(DMMAGHRIB * Math.PI / 180) * Math.sin(L)) / (Math.cos(DMMAGHRIB * Math.PI / 180) * Math.cos(L));
  }
  console.log("COS(HOUR ANGLE): " + COSHOURANGLEMAGHRIB);
  //HOURANGLEMAGHRIBS;
  if (HOURANGLEMAGHRIB == "TIDAK ADA") {
    HOURANGLEMAGHRIBS = "TIDAK ADA";
  } else if (Math.abs(COSHOURANGLEMAGHRIB) > 1) {
    HOURANGLEMAGHRIBS = "TIDAK ADA";
  } else {
    HOURANGLEMAGHRIBS = Math.acos(COSHOURANGLEMAGHRIB) * 180 / Math.PI;
  }
  console.log("HOUR ANGLE MAGHRIB: " + HOURANGLEMAGHRIBS);
  //WMAGHRIB;
  if (HOURANGLEMAGHRIBS == "TIDAK ADA") {
    WMAGHRIB = "TIDAK ADA";
  } else {
    WMAGHRIB = 12 + 7 - 107.6166667 / 15 - EOTMAGHRIB / 60 + HOURANGLEMAGHRIBS / 15;
  }
  console.log("Waktu Maghrib: " + WMAGHRIB);


  /*------------ISYA-----------*/
  console.log("~~~~~ISYA~~~~~");
  SISYA = 21.9 * Math.PI / 180;
  console.log("SUDUT ISYA: " + SISYA);
  PCOSISYA = (Math.sin(-1 * SISYA) - Math.sin(DM * Math.PI / 180) * Math.sin(L)) / (Math.cos(DM * Math.PI / 180) * Math.cos(L));
  console.log("PERKIRAAN COS(HOUR ANGLE) : " + PCOSISYA);
  //HOURISYA 
  if (PCOSISYA < -1) {
    HOURISYA = "TIDAK ADA";
  } else {
    HOURISYA = Math.acos(PCOSISYA) * 180 / Math.PI;
  }
  console.log("PERKIRAAN HOUR ANGLE ISYA : " + HOURISYA);
  //JDISYA
  if (HOURISYA == "TIDAK ADA") {
    JDISYA = "TIDAK ADA";
  } else {
    JDISYA = JDLT + HOURISYA / 360;
  }
  console.log("JULIAN DAY ISYA : " + JDISYA);
  //STISYA
  if (HOURISYA == "TIDAK ADA") {
    STISYA = "TIDAK ADA";
  } else {
    STISYA = 2 * Math.PI * (JDISYA - 2451545) / 365.25;
  }
  console.log("SUDUT TANGGAL T ISYA : " + STISYA);
  //UISYA
  if (HOURISYA == "TIDAK ADA") {
    UISYA = "TIDAK ADA";
  } else {
    UISYA = (JDISYA - 2451545) / 36525;
  }
  console.log("U ISYA : " + UISYA);
  //LOISYA
  if (HOURISYA == "TIDAK ADA") {
    LOISYA = "TIDAK ADA";
  } else {
    LOISYA = (280.46607 + 36000.7698 * UISYA) * Math.PI / 180;
  };
  console.log("L0 ISYA : " + LOISYA);
  ///DMISYA
  if (HOURISYA == "TIDAK ADA") {
    DMISYA = "TIDAK ADA";
  } else {
    DMISYA = 0.37877 + 23.264 * Math.sin((57.297 * STISYA - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * STISYA - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * STISYA - 59.722) * Math.PI / 180);
  }
  console.log("DEKLINASI MATAHARI ISYA : " + DMISYA);
  //EOTISYA
  if (HOURISYA == "TIDAK ADA") {
    EOTISYA = "TIDAK ADA";
  } else {
    EOTISYA = (-1 * (1789 + 237 * UISYA) * Math.sin(LOISYA) - (7146 - 62 * UISYA) * Math.cos(LOISYA) + (9934 - 14 * UISYA) * Math.sin(2 * LOISYA) - (29 + 5 * UISYA) * Math.cos(2 * LOISYA) + (74 + 10 * UISYA) * Math.sin(3 * LOISYA) + (320 - 4 * UISYA) * Math.cos(3 * LOISYA) - 212 * Math.sin(4 * LOISYA)) / 1000;
  }
  console.log("EQUATION OF TIME ISYA : " + EOTISYA);
  //COSHOURISYA
  if (HOURISYA == "TIDAK ADA") {
    COSHOURISYA = "TIDAK ADA";
  } else {
    COSHOURISYA = (Math.sin(-1 * SISYA) - Math.sin(DMISYA) * Math.sin(L)) / (Math.cos(DM * Math.PI / 180) * Math.cos(L));
  }
  console.log("COS (HOUR ANGLE) : " + COSHOURISYA);
  //HOURANGLEISYA
  if (HOURISYA == "TIDAK ADA") {
    HOURANGLEISYA = "TIDAK ADA";
  } else if (Math.abs(COSHOURISYA) > 1) {
    HOURANGLEISYA = "TIDAK ADA";
  } else {
    HOURANGLEISYA = Math.acos(COSHOURISYA) * (180 / Math.PI);
  }
  console.log("HOUR ANGLE ISYA : " + HOURANGLEISYA);
  //WISYA
  if (HOURANGLEISYA == "TIDAK ADA") {
    WISYA = "TIDAK ADA";
  } else {
    WISYA = 12 + 7 - 107.6166667 / 15 - EOTISYA / 60 + HOURANGLEISYA / 15;
  }
  console.log("Waktu Isya : " + WISYA);



  /*------------SHUBUH------------ */
  console.log("~~~~~SHUBUH~~~~~");
  SSHUBUH = 19.5 * Math.PI / 180;
  console.log("SUDUT SHUBUH : " + SSHUBUH);
  PCOSSHUBUH = Math.sin((-1 * SSHUBUH) - (Math.sin(DM) * Math.sin(L))) / (Math.cos(DM) * Math.cos(L));
  console.log("PERKIRAAN COS (HOUR ANGLE) : " + PCOSSHUBUH);
  //HOUR SHUBUH 
  if (PCOSSHUBUH < -1) {
    HOURSHUBUH = "TIDAK ADA"
  } else {
    HOURSHUBUH = Math.acos(PCOSSHUBUH) * (180 / Math.PI)
  } //Endif
  console.log("PERIKIRAAN HOUR ANGLE SHUBUH : " + HOURSHUBUH);
  //JD SHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    JDSHUBUH = "TIDAK ADA"
  } else {
    JDSHUBUH = JDLT - HOURSHUBUH / 360
  } //Endif
  console.log("JDSHUBUH : " + JDSHUBUH);
  //STSHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    STSHUBUH = "TIDAK ADA"
  } else {
    STSHUBUH = 2 * Math.PI * (JDSHUBUH - 2451545) / 365.25;
  } //Endif
  console.log("SUDUT TANGGAL T : " + STSHUBUH);
  //USHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    USHUBUH = "TIDAK ADA"
  } else {
    USHUBUH = (JDSHUBUH - 2451545) / 36525
  } //Endif
  console.log("U : " + USHUBUH);
  //LOSHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    LOSHUBUH = "TIDAK ADA"
  } else {
    LOSHUBUH = (280.46607 + 36000.7698 * USHUBUH) * Math.PI / 180;
  } //Endif
  console.log("L0 : " + LOSHUBUH);
  //DMSHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    DMSHUBUH = "TIDAK ADA"
  } else {
    DMSHUBUH = 0.37877 + 23.264 * Math.sin((57.297 * STSHUBUH - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * STSHUBUH - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * STSHUBUH - 59.722) * Math.PI / 180);
  } //Endif
  console.log("DEKLINASI MATAHARI : " + DMSHUBUH);
  //EOTSHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    EOTSHUBUH = "TIDAK ADA"
  } else {
    EOTSHUBUH = (-1 * (1789 + 237 * USHUBUH) * Math.sin(LOSHUBUH) - (7146 - 62 * USHUBUH) * Math.cos(LOSHUBUH) + (9934 - 14 * USHUBUH) * Math.sin(2 * LOSHUBUH) - (29 + 5 * USHUBUH) * Math.cos(2 * LOSHUBUH) + (74 + 10 * USHUBUH) * Math.sin(3 * LOSHUBUH) + (320 - 4 * USHUBUH) * Math.cos(3 * LOSHUBUH) - 212 * Math.sin(4 * LOSHUBUH)) / 1000;
  } //Endif
  console.log("EQUATION OF TIME : " + EOTSHUBUH);
  //COSHOURANGLE
  if (HOURSHUBUH == "TIDAK ADA") {
    COSHOURSHUBUH = "TIDAK ADA"
  } else {
    COSHOURSHUBUH = Math.sin((-1 * SSHUBUH) - Math.sin(DMSHUBUH * Math.PI / 180) * Math.sin(L)) / (Math.cos(DMSHUBUH * Math.PI / 180) * Math.cos(L));
  } //Endif
  console.log("COS (HOUR ANGLE) : " + COSHOURSHUBUH);
  //HOURANGLESHUBUH
  if (HOURSHUBUH == "TIDAK ADA") {
    HOURANGLESHUBUH = "TIDAK ADA"
  } else if (Math.abs(HOURANGLESHUBUH) > 1) {
    HOURANGLESHUBUH = "TIDAK ADA"
  } else {
    HOURANGLESHUBUH = Math.acos(COSHOURSHUBUH) * 180 / Math.PI;
  } //Endif
  console.log("HOUR ANGLE SHUBUH : " + HOURANGLESHUBUH);
  //WWAKTUSHUBUH
  if (HOURANGLESHUBUH == "TIDAK ADA") {
    WSHUBUH = "TIDAK ADA"
  } else {
    WSHUBUH = (12 + 7) - (107.6166667 / 15) - (EOTSHUBUH / 60) - (HOURANGLESHUBUH / 15);
    console.log("Waktu Subuh : " + WSHUBUH);
  }

  console.log("~~~~~SYURUQ~~~~~");
  /*------------SYURUQ-----------*/
  PCOSHOURANGLESYURUQ = Math.sin(((-0.8333 - 0.0347 * Math.pow(768, 0.5)) * Math.PI / 180) - Math.sin(DM * Math.PI / 180) * Math.sin(L)) / (Math.cos(DM * Math.PI / 180) * Math.cos(L));
  console.log("PERKIRAAN COS(HOUR ANGLE) : " + PCOSHOURANGLESYURUQ);
  //HOURANGLESYURUQ 
  if (Math.abs(PCOSHOURANGLESYURUQ) > 1) {
    HOURANGLESYURUQ = "TIDAK ADA";
  } else {
    HOURANGLESYURUQ = Math.acos(PCOSHOURANGLESYURUQ) * 180 / Math.PI;
  } //ENDIF
  console.log("PERKIRAAN HOUR ANGLE SYURUQ : " + HOURANGLESYURUQ);
  //JDSYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    JDSYURUQ = "TIDAK ADA";
  } else {
    JDSYURUQ = JDLT - HOURANGLESYURUQ / 360;
  } //ENDIF
  console.log("JD TERBIT MATAHARI : " + JDSYURUQ);
  //STSYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    STSYURUQ = "TIDAK ADA";
  } else {
    STSYURUQ = 2 * Math.PI * (JDSYURUQ - 2451545) / 365.25;
  } //ENDIF
  console.log("SUDUT TANGGAL T SYURUQ : " + STSYURUQ);
  //USYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    USYURUQ = "TIDAK ADA";
  } else {
    USYURUQ = (JDSYURUQ - 2451545) / 36525;
  } //ENDIF
  console.log("U SYURUQ : " + USYURUQ);
  //L0 SYURUQQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    LOSYURUQ = "TIDAK ADA";
  } else {
    LOSYURUQ = (280.46607 + 36000.7698 * USYURUQ) * Math.PI / 180;
  }
  console.log("L0 SYURUQ : " + LOSYURUQ);
  //DMSYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    DMSYURUQ = "TIDAK ADA";
  } else {
    DMSYURUQ = 0.37877 + 23.264 * Math.sin((57.297 * STSYURUQ - 79.547) * Math.PI / 180) + 0.3812 * Math.sin((2 * 57.297 * STSYURUQ - 82.682) * Math.PI / 180) + 0.17132 * Math.sin((3 * 57.297 * STSYURUQ - 59.722) * Math.PI / 180);
  }
  console.log("DEKLINASI MATAHARI SYURUQ : " + DMSYURUQ);
  //EOTSYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    EOTSYURUQ = "TIDAK ADA";
  } else {
    EOTSYURUQ = (-1 * (1789 + 237 * USYURUQ) * Math.sin(LOSYURUQ) - (7146 - 62 * USYURUQ) * Math.cos(LOSYURUQ) + (9934 - 14 * USYURUQ) * Math.sin(2 * LOSYURUQ) - (29 + 5 * USYURUQ) * Math.cos(2 * LOSYURUQ) + (74 + 10 * USYURUQ) * Math.sin(3 * LOSYURUQ) + (320 - 4 * USYURUQ) * Math.cos(3 * LOSYURUQ) - 212 * Math.sin(4 * LOSYURUQ)) / 1000;
  }
  console.log("EQUATION OF TIME SYURUQ : " + EOTSYURUQ);
  //COSHOURANGLESYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    COSHOURANGLESYURUQ = "TIDAK ADA";
  } else {
    COSHOURANGLESYURUQ = (Math.sin((-0.8333 - 0.0347 * Math.pow(768, 0.5)) * Math.PI / 180) - Math.sin(DMSYURUQ * Math.PI / 180) * Math.sin(L)) / (Math.cos(DMSYURUQ * Math.PI / 180) * Math.cos(L))
  }
  console.log("COS (HOUR ANGLE) : " + COSHOURANGLESYURUQ);
  //HOURANGLESYURUQ
  if (HOURANGLESYURUQ == "TIDAK ADA") {
    HOURANGLESYURUQS = "TIDAK ADA";
  } else if (Math.abs(COSHOURANGLESYURUQ) > 1) {
    HOURANGLESYURUQS = "TIDAK ADA";
  } else {
    HOURANGLESYURUQS = Math.acos(COSHOURANGLESYURUQ) * 180 / Math.PI;
  }
  console.log("HOUR ANGLE SYURUQ : " + HOURANGLESYURUQS);
  //WSYURUQ
  if (HOURANGLESYURUQS == "TIDAK ADA") {
    WSYURUQ = "TIDAK ADA";
  } else {
    WSYURUQ = 12 + 7 - 107.6166667 / 15 - EOTSYURUQ / 60 - HOURANGLESYURUQS / 15;
  }
  console.log("Waktu Syuruq : " + WSYURUQ);

  //WAKTU SHALAT
  console.log("~~~~~WAKTU SHALAT~~~~~");
  //SHALAT SHUBUH
  if (WSHUBUH == "TIDAK ADA") {
    SHUBUH = "TIDAK ADA";
  } else {
    SHUBUH = WSHUBUH / 24;
  }
  console.log("SHUBUH : " + SHUBUH);
  //SHALAT SYURUQ
  if (WSYURUQ == "TIDAK ADA") {
    SYURUQ = "TIDAK ADA";
  } else {
    SYURUQ = WSYURUQ / 24;
  }
  console.log("SYURUQ : " + SYURUQ);
  //SHALAT DZUHUR
  if (WDZUHUR == "TIDAK ADA") {
    DZUHUR = "TIDAK ADA";
  } else {
    DZUHUR = WDZUHUR / 24;
  }
  console.log("DZUHUR : " + DZUHUR);
  //SHALAT ASHAR
  if (WAKTUASHAR == "TIDAK ADA") {
    ASHAR = "TIDAK ADA";
  } else {
    ASHAR = WAKTUASHAR / 24;
  }
  console.log("ASHAR : " + ASHAR);
  //WAKTU MAGHRIB
  if (WMAGHRIB == "TIDAK ADA") {
    MAGHRIB = "TIDAK ADA";
  } else {
    MAGHRIB = WMAGHRIB / 24;
  }
  console.log("MAGHRIB : " + MAGHRIB);
  if (WISYA == "TIDAK ADA") {
    ISYA = "TIDAK ADA";
  } else {
    ISYA = WISYA / 24;
  }
  console.log("ISYA : " + ISYA);

  //KONVERSI DECIMAL KE TIME
  function Shubuh(SHUBUH) {
    var SIGN = SHUBUH < 0 ? "-" : "";
    var HOUR = Math.floor((24 / 1) * SHUBUH);
    var HOURS = (24 / 1) * SHUBUH;
    var SISA = HOURS - HOUR;
    var MIN = Math.floor(SISA * (60 / 1));
    var MINS = SISA * (60 / 1);
    var MINS2 = MINS - MIN;
    var SEC = Math.floor(MINS2 * (60 / 1));
    return SIGN + (HOUR < 10 ? "0" : "") + HOUR + ":" + (MIN < 10 ? "0" : "") + MIN + ":" + (SEC < 10 ? "0" : "") + SEC;
  }

  function Syuruq(SYURUQ) {
    var SIGN = SYURUQ < 0 ? "-" : "";
    var HOUR = Math.floor(24 / 1 * SYURUQ);
    var HOURS = 24 / 1 * SYURUQ;
    var SISA = HOURS - HOUR;
    var MIN = Math.floor(SISA * (60 / 1));
    var MINS = SISA * (60 / 1);
    var MINS2 = MINS - MIN;
    var SEC = Math.floor(MINS2 * (60 / 1));
    return SIGN + (HOUR < 10 ? "0" : "") + HOUR + ":" + (MIN < 10 ? "0" : "") + MIN + ":" + (SEC < 10 ? "0" : "") + SEC;
  }

  function Dzuhur(DZUHUR) {
    var SIGN = DZUHUR < 0 ? "-" : "";
    var HOUR = Math.floor(24 / 1 * DZUHUR);
    var HOURS = 24 / 1 * DZUHUR;
    var SISA = HOURS - HOUR;
    var MIN = Math.floor(SISA * (60 / 1));
    var MINS = SISA * (60 / 1);
    var MINS2 = MINS - MIN;
    var SEC = Math.floor(MINS2 * (60 / 1));
    return SIGN + (HOUR < 10 ? "0" : "") + HOUR + ":" + (MIN < 10 ? "0" : "") + MIN + ":" + (SEC < 10 ? "0" : "") + SEC;
  }

  function Ashar(ASHAR) {
    var SIGN = ASHAR < 0 ? "-" : "";
    var HOUR = Math.floor(24 / 1 * ASHAR);
    var HOURS = 24 / 1 * ASHAR;
    var SISA = HOURS - HOUR;
    var MIN = Math.floor(SISA * (60 / 1));
    var MINS = SISA * (60 / 1);
    var MINS2 = MINS - MIN;
    var SEC = Math.floor(MINS2 * (60 / 1));
    return SIGN + (HOUR < 10 ? "0" : "") + HOUR + ":" + (MIN < 10 ? "0" : "") + MIN + ":" + (SEC < 10 ? "0" : "") + SEC;
  }

  function Maghrib(MAGHRIB) {
    var SIGN = MAGHRIB < 0 ? "-" : "";
    var HOUR = Math.floor(24 / 1 * MAGHRIB);
    var HOURS = 24 / 1 * MAGHRIB;
    var SISA = HOURS - HOUR;
    var MIN = Math.floor(SISA * (60 / 1));
    var MINS = SISA * (60 / 1);
    var MINS2 = MINS - MIN;
    var SEC = Math.floor(MINS2 * (60 / 1));
    return SIGN + (HOUR < 10 ? "0" : "") + HOUR + ":" + (MIN < 10 ? "0" : "") + MIN + ":" + (SEC < 10 ? "0" : "") + SEC;
  }

  function Isya(ISYA) {
    var SIGN = ISYA < 0 ? "-" : "";
    var HOUR = Math.floor(24 / 1 * ISYA);
    var HOURS = 24 / 1 * ISYA;
    var SISA = HOURS - HOUR;
    var MIN = Math.floor(SISA * (60 / 1));
    var MINS = SISA * (60 / 1);
    var MINS2 = MINS - MIN;
    var SEC = Math.floor(MINS2 * (60 / 1));
    return SIGN + (HOUR < 10 ? "0" : "") + HOUR + ":" + (MIN < 10 ? "0" : "") + MIN + ":" + (SEC < 10 ? "0" : "") + SEC;
  }

  console.log("~~~~~WAKTU SHALAT FIX~~~~~");
  console.log("SHUBUH : " + Shubuh(SHUBUH));
  console.log("SYURUQ : " + Syuruq(SYURUQ));
  console.log("DZUHUR : " + Dzuhur(DZUHUR));
  console.log("ASHAR : " + Ashar(ASHAR));
  console.log("MAGHRIB : " + Maghrib(MAGHRIB));
  console.log("ISYA : " + Isya(ISYA));


  setInterval(() => {
    var cd = new Date();
    var hours = cd.getHours();
    var minutes = cd.getMinutes();
    var seconds = cd.getSeconds();
    if (hours < 10) {
      hours = "0" + hours;
    }
    if (minutes < 10) {
      minutes = "0" + minutes;
    }
    if (seconds < 10) {
      seconds = "0" + seconds;
    }
    this.waktu = hours + ":" + minutes + ":" + seconds;
    console.log("REAL TIME : " + waktu);
    var calculatehours;
    var calculateminutes;
    var calculateseconds;
    calculatehours = hours + (minutes * (1 / 60)) + (seconds * (1 / 3600));
    console.log("CALCULATE HOURS : " + calculatehours);
    calculateminutes = (hours * (60 / 1)) + minutes + (seconds * (1 / 60));
    console.log("CALCULATE MINUTES : " + calculateminutes);
    calculateseconds = (hours * (3600 / 1)) + (minutes * (60 / 1)) + seconds;
    console.log("CALCULATE SECONDS : " + calculateseconds);

    console.log("~~~~~WAKTU DECIMAL SHALAT~~~~~");
    const SHORTING = [];
    const VALSHORT = [];

    var SHUBUHFIX = WSHUBUH - calculatehours;
    console.log("CURRENT SHUBUH : " + SHUBUHFIX);
    if (SHUBUHFIX > 0) {
      var tempp = {
        SHUBUHFIX: SHUBUHFIX
      };
      SHORTING.push(tempp);
      VALSHORT.push(SHUBUHFIX);
    } else {
      'KURANG DARI NOL';
    }
    var SYURUQFIX = WSYURUQ - calculatehours;
    console.log("CURRENT SYURUQ : " + SYURUQFIX);
    if (SYURUQFIX > 0) {
      var tempp = {
        SYURUQFIX: "SYURUQFIX"
      };
      SHORTING.push(tempp);
      VALSHORT.push(SYURUQFIX);
    } else {
      'KURANG DARI NOL';
    }
    var DZUHURFIX = WDZUHUR - calculatehours;
    console.log("CURRENT DZUHUR : " + DZUHURFIX);
    if (DZUHURFIX > 0) {
      var tempp = {
        DZUHURFIX: DZUHURFIX
      };
      SHORTING.push(tempp);
      VALSHORT.push(DZUHURFIX);
    } else {
      'KURANG DARI NOL';
    }
    var ASHARFIX = WAKTUASHAR - calculatehours;
    console.log("CURRENT ASHAR : " + ASHARFIX);
    if (ASHARFIX > 0) {
      var tempp = {
        ASHARFIX: ASHARFIX
      };
      SHORTING.push(tempp);
      VALSHORT.push(ASHARFIX);
    } else {
      'KURANG DARI NOL';
    }
    var MAGHRIBFIX = WMAGHRIB - calculatehours;
    console.log("CURRENT MAGHRIB : " + MAGHRIBFIX);
    if (MAGHRIBFIX > 0) {
      var tempp = {
        MAGHRIBFIX: MAGHRIBFIX
      };
      SHORTING.push(tempp);
      VALSHORT.push(MAGHRIBFIX);
    } else {
      'KURANG DARI NOL';
    }
    var ISYAFIX = WISYA - calculatehours;
    console.log("CURRENT ISYA : " + ISYAFIX);
    if (ISYAFIX > 0) {
      var tempp = {
        ISYAFIX: ISYAFIX
      };
      SHORTING.push(tempp);
      VALSHORT.push(ISYAFIX);
    } else {
      'KURANG DARI NOL';
    }
    var minnya = Math.min.apply(Math, VALSHORT);

    function getKeyByValue(object, value) {
      return Object.keys(object).find(key => object[key] === value);
    }

    function val2key(val, array) {
      var found = '';
      for (var key in array) {
        //console.log(key)
        for (const [key2, val2] of Object.entries(array[key])) {
          // console.log(key2 + ":" + val2)
          if (val2 == val) {
            found = key2
          }
        }
      }
      return found;
    }
    var sholatSekarang = val2key(minnya, SHORTING);
    console.log(SHORTING);
    console.log(sholatSekarang);
    console.log(minnya);

    function Konversi(minnya) {
      var SIGN = minnya < 0 ? "-" : "";
      var HOUR3 = Math.floor(minnya)
      var HOUR2 = minnya;
      var HOURS = Math.floor(minnya);
      var HOUR = HOUR2 - HOURS;
      var MIN = HOUR * (60 / 1);
      var MINS2 = MIN;
      var MINS = Math.floor(MIN);
      var SEC2 = MIN - MINS;
      var SEC = Math.floor(SEC2 * (60 / 1));
      return SIGN + (HOUR3 < 10 ? "0" : "") + HOUR3 + ":" + (MINS < 10 ? "0" : "") + MINS + ":" + (SEC < 10 ? "0" : "") + SEC;
    }
    console.log("MENUJU : " + Konversi(minnya));
  }, 1000);
}
//console.log("REAL TIME : " + Date());

waktusholat(12, 7, 2019, -6.9386001, 107.6606358, 768);