.class public final Landroid/provider/Telephony$Carriers;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field private static AUTOPROFILE_FEATURE:Ljava/lang/String; = null

.field public static final BEARER:Ljava/lang/String; = "bearer"

.field public static final CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final CLONEDAPN_FILE:Ljava/lang/String; = "cloned-apn"

.field public static final CLONEDAPN_FILE_2:Ljava/lang/String; = "cloned-apn-2"

.field public static final COLUMN_APN_KEY:Ljava/lang/String; = "apn_key"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static COUNTRY_CODE:Ljava/lang/String; = null

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DEFAULTSETTING:Ljava/lang/String; = "defaultsetting"

.field public static final DEFAULTSETTING_EDITABLE:I = 0x0

.field public static final DEFAULTSETTING_HIDDEN:I = 0x2

.field public static final DEFAULTSETTING_NOT_EDITABLE:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final EXTRA_ID:Ljava/lang/String; = "extraid"

.field private static final GID_Based_AutoProfile_OpList:Ljava/lang/String; = "23410;0A;23415;A0;23415;C1;23415;70;23430;28;20801;33;20801;52;20823;52;20601;52;20801;4E;20810;4E;20826;4E;20601;4E;20810;12;64710;12;20810;4C;20810;44;27211;0A;20601;0A;21408;00;302610;3D;302610;3E;302610;3F;302610;40;302780;5A;20404;5A;310410;DE;302220;54;302221;54;302220;4B;302221;4B;302220;50;302221;50;302220;43;302660;2C;302370;2C;302370;DD;52000;02;52000;01;45400;01010000;45400;01020000;45400;01030000;45400;01040000;45400;02020001;45400;02030001;45400;02020002;45402;01010000;45402;01020000;45402;01030000;45402;01040000;45402;02020001;45402;02030001;45402;02020002;45410;01010000;45410;01020000;45410;01030000;45410;01040000;45410;02020001;45410;02030001;45410;02020002;45418;01010000;45418;01020000;45418;01030000;45418;01040000;45418;02020001;45418;02030001;45418;02020002;"

.field private static final GLOBAL_OPERATORS:[[Ljava/lang/String; = null

.field private static final H3G_OpList:Ljava/lang/String; = "23205;;23210;3;23806;3;27205;;22299;;24002;3SE;24004;3SE;23420;3;23594;3;45403;3;45404;3;45400;3CSL;45401;3CTM;45402;3CSL;45406;3SmarTone;45410;3CSL;45412;3CMHK;45413;3CMHK;45415;3SmarTone;45416;3PCCW;45417;3SmarTone;45418;3CSL;45419;3PCCW;45500;3SmarTone;45501;3CTM;45503;3SmarTone;45504;3CTM;45505;3SmarTone;"

.field private static final IMSI_Based_AutoProfile_OpList:Ljava/lang/String; = "22802;29402;21670;21406;21406;21406;24001;23820;24202;24007;24007;24201;24405;20601;26207;26207;26207;50502;50503;22803;302720;302370;65507;21403;22201;20408;"

.field public static final INACTIVE_TIMER:Ljava/lang/String; = "inactivetimer"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field private static final O2_OpList:Ljava/lang/String; = "23002;O2 - CZ;26207;;26207;262075_2620749;27202;O2.IE;23106;O2 - SK;21407;Base;23410;O2 - UK;"

.field private static OPERATOR_CODE:Ljava/lang/String; = null

.field private static OPERATOR_VERISON_EXTRAID:Ljava/lang/String; = null

.field private static OPERATOR_VERISON_NUMERIC:Ljava/lang/String; = null

.field private static final ORG_OpList:Ljava/lang/String; = "28310;;65202;;20610;MOBISTAR;62402;;62303;;60201;;62701;;20801;ORANGE F;64700;ORANGE RE;34001;ORANGE;61101;;63203;;42501;;61203;;41677;;416770;;63907;;27099;ORANGE;64602;;61002;;61701;;25901;ORANGE;60400;;61404;;26003;ORANGE;26803;P OPTIMUS;22610;ORANGE RO;60801;;23101;ORANGE SK;21403;ORANGE;22803;ORANGE;22803;22803[1-9][1-8];60501;;64114;;23433;ORANGE;23430;T-MOBILE;23431;T-MOBILE;23432;T-MOBILE;"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROFILE_TYPE:Ljava/lang/String; = "profile_type"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field private static final SFR_OpList:Ljava/lang/String; = "20810;F SFR;64710;SFR;20810;4C;"

.field public static final SIM_SLOT:Ljava/lang/String; = "sim_slot"

.field public static final SIM_SLOT_1:I = 0x1

.field public static final SIM_SLOT_2:I = 0x2

.field public static final SIM_SLOT_NONE:I = 0x0

.field public static final SUBSCRIPTION_SIM1:I = 0x0

.field public static final SUBSCRIPTION_SIM2:I = 0x1

.field private static final Spn_Based_AutoProfile_OpList:Ljava/lang/String; = "21407;JAZZTEL;21421;JAZZTEL;23801;TELMORE;23802;BIBOB;23802;CBB MOBIL;23820;CALL ME;23820;DLG TELE;20810;A MOBILE;20810;LECLERCMOBILE;26201;DEBITEL;26201;MOBILCOM-DEBITEL;26202;DEBITEL;26202;MOBILCOM-DEBITEL;26202;1&1;26203;DEBITEL;26203;MOBILCOM-DEBITEL;26207;DEBITEL;26207;MOBILCOM-DEBITEL;21601;DJUICE;22299;FASTWEB;22210;POSTEMOBILE;20408;RABO MOBIEL;20416;BEN NL;26801;ZON;24004;TELENOR SE;24005;HALEBOP;24005;TELE2;24005;TELIA;24024;TELE2;24024;TELENOR SE;25503;ACE&BASE;25503;DJUICE;26006;RED BULL MOBILE;24803;TELE2;22201;IUSACELL;20404;PELEPHONE;20404;MIRS;"

.field private static final TMO_OpList:Ljava/lang/String; = "23203;T MOBILE A;23207;TELE.RING;28405;284 05;21901;T-MOBILE HR;23001;T-MOBILE CZ;29401;T-MOBILE MK;26201;;20201;COSMOTE;21630;T-MOBILE HU;22004;T-MOBILE CG;29702;T-MOBILE CG;20416;T-MOBILE  NL;20420;T-MOBILE  NL;26002;T-MOBILE.PL;22603;COSMOTE;22606;COSMOTE;23102;T-MOBILE SK;"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USERCREATESETTING:Ljava/lang/String; = "usercreatesetting"

.field public static final USERCREATESETTING_FOTA:I = 0xa

.field public static final USERCREATESETTING_MANUAL:I = 0x1

.field public static final USERCREATESETTING_OTA:I = 0x2

.field public static final USERCREATESETTING_PRELOADED:I = 0x0

.field private static final VDF_OpList:Ljava/lang/String; = "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;28001;CYTAMOBILE-VODAFONE;23003;VODAFONE CZ;29403;VIP MK;20810;F SFR;64710;SFR;20810;4C;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;22005;VIP;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;53024;;50503;;60202;;65501;;26001;PLUS;26002;T-MOBILE.PL;26003;ORANGE;26006;PLAY;45005;SKT;45008;KT;"

.field private static isBuildOperatorVersionValues:Z

.field private static mNumericExtraIDSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static multiSimMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4167
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 4275
    const/16 v0, 0x222

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "ALB"

    aput-object v2, v1, v4

    const-string v2, "AL"

    aput-object v2, v1, v5

    const-string v2, "27601"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "VDF"

    aput-object v2, v1, v4

    const-string v2, "AL"

    aput-object v2, v1, v5

    const-string v2, "27602"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "A1"

    aput-object v2, v1, v4

    const-string v2, "AT"

    aput-object v2, v1, v5

    const-string v2, "23201"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "BOB"

    aput-object v2, v1, v4

    const-string v2, "AT"

    aput-object v2, v1, v5

    const-string v2, "23211"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "H3G"

    aput-object v2, v1, v4

    const-string v2, "AT"

    aput-object v2, v1, v5

    const-string v2, "23205"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "AT"

    aput-object v3, v2, v5

    const-string v3, "23207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BASE"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20620"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20610"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PRX"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20605"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "BE"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "2060188"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BHT"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    const-string v3, "21890"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ERO"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    const-string v3, "21803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTEL"

    aput-object v3, v2, v4

    const-string v3, "BA"

    aput-object v3, v2, v5

    const-string v3, "21805"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "BG"

    aput-object v3, v2, v5

    const-string v3, "28405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTEL"

    aput-object v3, v2, v4

    const-string v3, "BG"

    aput-object v3, v2, v5

    const-string v3, "28401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BG"

    aput-object v3, v2, v5

    const-string v3, "28403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "21901"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "21902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "24007"

    aput-object v3, v2, v6

    const-string v3, "24007695_24007696"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIP"

    aput-object v3, v2, v4

    const-string v3, "HR"

    aput-object v3, v2, v5

    const-string v3, "21910"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CYTA"

    aput-object v3, v2, v4

    const-string v3, "CY"

    aput-object v3, v2, v5

    const-string v3, "28001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "CZ"

    aput-object v3, v2, v5

    const-string v3, "23002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "CZ"

    aput-object v3, v2, v5

    const-string v3, "23001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "CZ"

    aput-object v3, v2, v5

    const-string v3, "23003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23806"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BIB"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23802"

    aput-object v3, v2, v6

    const-string v3, "BiBoB"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CALL"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23820"

    aput-object v3, v2, v6

    const-string v3, "Call me"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CBB"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23802"

    aput-object v3, v2, v6

    const-string v3, "CBB Mobil"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DLG"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23820"

    aput-object v3, v2, v6

    const-string v3, "DLG Tele"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TDC"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23820"

    aput-object v3, v2, v6

    const-string v3, "2382010_2382030"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23830"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELM"

    aput-object v3, v2, v4

    const-string v3, "DK"

    aput-object v3, v2, v5

    const-string v3, "23801"

    aput-object v3, v2, v6

    const-string v3, "TELMORE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ELI"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EMT"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EMT"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24801"

    aput-object v3, v2, v6

    const-string v3, "24801012_24801013"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EMT"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24801"

    aput-object v3, v2, v6

    const-string v3, "24801022_24801023"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "EE"

    aput-object v3, v2, v5

    const-string v3, "24803"

    aput-object v3, v2, v6

    const-string v3, "TELE2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DNS"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24412"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DNS"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ELI"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SAU"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24405"

    aput-object v3, v2, v6

    const-string v3, "2440541"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SAU"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24421"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SON"

    aput-object v3, v2, v4

    const-string v3, "FI"

    aput-object v3, v2, v5

    const-string v3, "24499"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIP"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONE"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONE"

    aput-object v3, v2, v4

    const-string v3, "MK"

    aput-object v3, v2, v5

    const-string v3, "29402"

    aput-object v3, v2, v6

    const-string v3, "294020001"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AUC"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "A MOBILE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BYT"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20820"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CAR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, "33"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "12"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DAR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "44"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "FREE"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20815"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LPM"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "4C"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LEC"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "LeclercMobile"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NRJ"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, "4E"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NRJ"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, "4E"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64700"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SFR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20810"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SFR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64710"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20801"

    aput-object v3, v2, v6

    const-string v3, "52"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20823"

    aput-object v3, v2, v6

    const-string v3, "52"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "52"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DIG"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORC"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OUT"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "34002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64700"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OUT"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SRR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64710"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COR"

    aput-object v3, v2, v4

    const-string v3, "FR"

    aput-object v3, v2, v5

    const-string v3, "64710"

    aput-object v3, v2, v6

    const-string v3, "12"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "1&1"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, "1&1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26203"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26203"

    aput-object v3, v2, v6

    const-string v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26201"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26201"

    aput-object v3, v2, v6

    const-string v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, "debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DEB"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, "mobilcom-debitel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EPLU"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "262075_2620749"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TCH"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26207"

    aput-object v3, v2, v6

    const-string v3, "Tchibo"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "DE"

    aput-object v3, v2, v5

    const-string v3, "26202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COS"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Q"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20209"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WIN"

    aput-object v3, v2, v4

    const-string v3, "GR"

    aput-object v3, v2, v5

    const-string v3, "20210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELE"

    aput-object v3, v2, v4

    const-string v3, "GL"

    aput-object v3, v2, v5

    const-string v3, "29001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21630"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DJU"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21601"

    aput-object v3, v2, v6

    const-string v3, "Djuice"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21670"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21670"

    aput-object v3, v2, v6

    const-string v3, "21670XX2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RED"

    aput-object v3, v2, v4

    const-string v3, "HU"

    aput-object v3, v2, v5

    const-string v3, "21601"

    aput-object v3, v2, v6

    const-string v3, "RedBull"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NOVA"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27411"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SIM"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IS"

    aput-object v3, v2, v5

    const-string v3, "27403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ECM"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27203"

    aput-object v3, v2, v6

    const-string v3, "Eircom"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MET"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27211"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IE"

    aput-object v3, v2, v5

    const-string v3, "27201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WIN"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22288"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22299"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "FAST"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22299"

    aput-object v3, v2, v6

    const-string v3, "FastWeb"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "POS"

    aput-object v3, v2, v4

    const-string v3, "IT"

    aput-object v3, v2, v5

    const-string v3, "22210"

    aput-object v3, v2, v6

    const-string v3, "PosteMobile"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LMT"

    aput-object v3, v2, v4

    const-string v3, "LV"

    aput-object v3, v2, v5

    const-string v3, "24701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "LV"

    aput-object v3, v2, v5

    const-string v3, "24702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BITE"

    aput-object v3, v2, v4

    const-string v3, "LV"

    aput-object v3, v2, v5

    const-string v3, "24705"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BITE"

    aput-object v3, v2, v4

    const-string v3, "LT"

    aput-object v3, v2, v5

    const-string v3, "24602"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OMNI"

    aput-object v3, v2, v4

    const-string v3, "LT"

    aput-object v3, v2, v5

    const-string v3, "24601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "LT"

    aput-object v3, v2, v5

    const-string v3, "24603"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TNG"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    const-string v3, "27077"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LUX"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    const-string v3, "27001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "LU"

    aput-object v3, v2, v5

    const-string v3, "27099"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "MT"

    aput-object v3, v2, v5

    const-string v3, "27801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "29702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "22004"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "29701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "22002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTEL"

    aput-object v3, v2, v4

    const-string v3, "ME"

    aput-object v3, v2, v5

    const-string v3, "29703"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEN"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20416"

    aput-object v3, v2, v6

    const-string v3, "Ben NL"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20420"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELF"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20412"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RABO"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20408"

    aput-object v3, v2, v6

    const-string v3, "Rabo Mobiel"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KPN"

    aput-object v3, v2, v4

    const-string v3, "NL"

    aput-object v3, v2, v5

    const-string v3, "20408"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CES"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24202"

    aput-object v3, v2, v6

    const-string v3, "2420256"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NETC"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NET"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24007"

    aput-object v3, v2, v6

    const-string v3, "2400768"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VEN"

    aput-object v3, v2, v4

    const-string v3, "NO"

    aput-object v3, v2, v5

    const-string v3, "24201"

    aput-object v3, v2, v6

    const-string v3, "24201700"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "P4P"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26006"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RED"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26006"

    aput-object v3, v2, v6

    const-string v3, "Red Bull MOBILE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PLS"

    aput-object v3, v2, v4

    const-string v3, "PL"

    aput-object v3, v2, v5

    const-string v3, "26001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMN"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26806"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZON"

    aput-object v3, v2, v4

    const-string v3, "PT"

    aput-object v3, v2, v5

    const-string v3, "26801"

    aput-object v3, v2, v6

    const-string v3, "ZON"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COS"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22603"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "COS"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22606"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DIGI"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22605"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22610"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "RO"

    aput-object v3, v2, v5

    const-string v3, "22601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "RS"

    aput-object v3, v2, v5

    const-string v3, "22003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "RS"

    aput-object v3, v2, v5

    const-string v3, "22001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIP"

    aput-object v3, v2, v4

    const-string v3, "RS"

    aput-object v3, v2, v5

    const-string v3, "22005"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "SK"

    aput-object v3, v2, v5

    const-string v3, "23106"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "SK"

    aput-object v3, v2, v5

    const-string v3, "23101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "SK"

    aput-object v3, v2, v5

    const-string v3, "23102"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOBI"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    const-string v3, "29341"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SI"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    const-string v3, "29340"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUS"

    aput-object v3, v2, v4

    const-string v3, "SI"

    aput-object v3, v2, v5

    const-string v3, "29370"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOI"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21408"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "00"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21403"

    aput-object v3, v2, v6

    const-string v3, "2140359"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21407"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, "TELEFONICA"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KPN"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21419"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELC"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "2140613"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ERO"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "2140606"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELC"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONO"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21418"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOI"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21408"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "00"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EUS"

    aput-object v3, v2, v4

    const-string v3, "ES"

    aput-object v3, v2, v5

    const-string v3, "21403"

    aput-object v3, v2, v6

    const-string v3, "2140359"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21407"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KPN"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21419"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELC"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "2140613"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ERO"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21406"

    aput-object v3, v2, v6

    const-string v3, "2140606"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELC"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ONO"

    aput-object v3, v2, v4

    const-string v3, "SP"

    aput-object v3, v2, v5

    const-string v3, "21418"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24004"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24008"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24004"

    aput-object v3, v2, v6

    const-string v3, "Telenor SE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24024"

    aput-object v3, v2, v6

    const-string v3, "Telenor SE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TELI"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    const-string v3, "Telia"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24007"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    const-string v3, "Tele2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24024"

    aput-object v3, v2, v6

    const-string v3, "Tele2"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "HALE"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24001"

    aput-object v3, v2, v6

    const-string v3, "240017"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "HALE"

    aput-object v3, v2, v4

    const-string v3, "SE"

    aput-object v3, v2, v5

    const-string v3, "24005"

    aput-object v3, v2, v6

    const-string v3, "Halebop"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SUN"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22803"

    aput-object v3, v2, v6

    const-string v3, "22803[1-9][1-8]"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SWI"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LEB"

    aput-object v3, v2, v4

    const-string v3, "CH"

    aput-object v3, v2, v5

    const-string v3, "22802"

    aput-object v3, v2, v6

    const-string v3, "228024X45"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23420"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23594"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TALK"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "C1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "27211"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ASDA"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "A0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "GB"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23420"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23594"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "O2"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TALK"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "C1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23410"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "27211"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TSC"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "20601"

    aput-object v3, v2, v6

    const-string v3, "0A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ASDA"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23415"

    aput-object v3, v2, v6

    const-string v3, "A0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    const-string v3, "23430"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "AM"

    aput-object v3, v2, v5

    const-string v3, "28310"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VEL"

    aput-object v3, v2, v4

    const-string v3, "BY"

    aput-object v3, v2, v5

    const-string v3, "25701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTC"

    aput-object v3, v2, v4

    const-string v3, "BY"

    aput-object v3, v2, v5

    const-string v3, "25702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LIFE"

    aput-object v3, v2, v4

    const-string v3, "BY"

    aput-object v3, v2, v5

    const-string v3, "25704"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "KZ"

    aput-object v3, v2, v5

    const-string v3, "40101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KCEL"

    aput-object v3, v2, v4

    const-string v3, "KZ"

    aput-object v3, v2, v5

    const-string v3, "40102"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NEO"

    aput-object v3, v2, v4

    const-string v3, "KZ"

    aput-object v3, v2, v5

    const-string v3, "40177"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25901"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOLD"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVE"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25904"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNT"

    aput-object v3, v2, v4

    const-string v3, "MD"

    aput-object v3, v2, v5

    const-string v3, "25905"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MGF"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL2"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25099"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOTA"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25011"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOTA"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOTA"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOTA"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YOTA"

    aput-object v3, v2, v4

    const-string v3, "RU"

    aput-object v3, v2, v5

    const-string v3, "25099"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KYIV"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ACE"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25503"

    aput-object v3, v2, v6

    const-string v3, "Ace&Base"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DJU"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25503"

    aput-object v3, v2, v6

    const-string v3, "Djuice"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LIFE"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25506"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UTEL"

    aput-object v3, v2, v4

    const-string v3, "UA"

    aput-object v3, v2, v5

    const-string v3, "25507"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "UZ"

    aput-object v3, v2, v5

    const-string v3, "43404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UCEL"

    aput-object v3, v2, v4

    const-string v3, "UZ"

    aput-object v3, v2, v5

    const-string v3, "43405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTS"

    aput-object v3, v2, v4

    const-string v3, "UZ"

    aput-object v3, v2, v5

    const-string v3, "43407"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOBI"

    aput-object v3, v2, v4

    const-string v3, "DZ"

    aput-object v3, v2, v5

    const-string v3, "60301"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DJE"

    aput-object v3, v2, v4

    const-string v3, "DZ"

    aput-object v3, v2, v5

    const-string v3, "60302"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NED"

    aput-object v3, v2, v4

    const-string v3, "DZ"

    aput-object v3, v2, v5

    const-string v3, "60303"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNI"

    aput-object v3, v2, v4

    const-string v3, "AO"

    aput-object v3, v2, v5

    const-string v3, "63102"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOVI"

    aput-object v3, v2, v4

    const-string v3, "AO"

    aput-object v3, v2, v5

    const-string v3, "63104"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "BW"

    aput-object v3, v2, v5

    const-string v3, "65202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "CM"

    aput-object v3, v2, v5

    const-string v3, "62402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "CF"

    aput-object v3, v2, v5

    const-string v3, "62303"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "CD"

    aput-object v3, v2, v5

    const-string v3, "63001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIR"

    aput-object v3, v2, v4

    const-string v3, "CD"

    aput-object v3, v2, v5

    const-string v3, "63002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CCT"

    aput-object v3, v2, v4

    const-string v3, "CD"

    aput-object v3, v2, v5

    const-string v3, "63086"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SAIT"

    aput-object v3, v2, v4

    const-string v3, "CD"

    aput-object v3, v2, v5

    const-string v3, "63089"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "EG"

    aput-object v3, v2, v5

    const-string v3, "60201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "EG"

    aput-object v3, v2, v5

    const-string v3, "60202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ETSL"

    aput-object v3, v2, v4

    const-string v3, "EG"

    aput-object v3, v2, v5

    const-string v3, "60203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GQ"

    aput-object v3, v2, v5

    const-string v3, "62701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTN"

    aput-object v3, v2, v4

    const-string v3, "GH"

    aput-object v3, v2, v5

    const-string v3, "620001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "GH"

    aput-object v3, v2, v5

    const-string v3, "620002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIGO"

    aput-object v3, v2, v4

    const-string v3, "GH"

    aput-object v3, v2, v5

    const-string v3, "620003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIR"

    aput-object v3, v2, v4

    const-string v3, "GH"

    aput-object v3, v2, v5

    const-string v3, "620006"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GN"

    aput-object v3, v2, v5

    const-string v3, "61101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "GW"

    aput-object v3, v2, v5

    const-string v3, "63203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOOV"

    aput-object v3, v2, v4

    const-string v3, "CI"

    aput-object v3, v2, v5

    const-string v3, "61202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "CI"

    aput-object v3, v2, v5

    const-string v3, "61203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KOZ"

    aput-object v3, v2, v4

    const-string v3, "CI"

    aput-object v3, v2, v5

    const-string v3, "61204"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTN"

    aput-object v3, v2, v4

    const-string v3, "CI"

    aput-object v3, v2, v5

    const-string v3, "61205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SAFA"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "63902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SAFA"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "6392"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIR"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "63903"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIR"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "6393"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "63905"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "6395"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "63907"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "KE"

    aput-object v3, v2, v5

    const-string v3, "6397"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "LS"

    aput-object v3, v2, v5

    const-string v3, "65101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ECO"

    aput-object v3, v2, v4

    const-string v3, "LS"

    aput-object v3, v2, v5

    const-string v3, "65101"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LIB"

    aput-object v3, v2, v4

    const-string v3, "LY"

    aput-object v3, v2, v5

    const-string v3, "60600"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MAD"

    aput-object v3, v2, v4

    const-string v3, "LY"

    aput-object v3, v2, v5

    const-string v3, "60601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "MG"

    aput-object v3, v2, v5

    const-string v3, "64602"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "ML"

    aput-object v3, v2, v5

    const-string v3, "61002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "MU"

    aput-object v3, v2, v5

    const-string v3, "61701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IAM"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "60401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "60400"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WANA"

    aput-object v3, v2, v4

    const-string v3, "MA"

    aput-object v3, v2, v5

    const-string v3, "60402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "NI"

    aput-object v3, v2, v5

    const-string v3, "61404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIR"

    aput-object v3, v2, v4

    const-string v3, "NG"

    aput-object v3, v2, v5

    const-string v3, "62120"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTN"

    aput-object v3, v2, v4

    const-string v3, "NG"

    aput-object v3, v2, v5

    const-string v3, "62130"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "GLO"

    aput-object v3, v2, v4

    const-string v3, "NG"

    aput-object v3, v2, v5

    const-string v3, "62150"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ETI"

    aput-object v3, v2, v4

    const-string v3, "NG"

    aput-object v3, v2, v5

    const-string v3, "62160"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "SN"

    aput-object v3, v2, v5

    const-string v3, "60801"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIGO"

    aput-object v3, v2, v4

    const-string v3, "SN"

    aput-object v3, v2, v5

    const-string v3, "60802"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EXP"

    aput-object v3, v2, v4

    const-string v3, "SN"

    aput-object v3, v2, v5

    const-string v3, "60803"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    const-string v3, "65501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CELL"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    const-string v3, "65507"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    const-string v3, "65507"

    aput-object v3, v2, v6

    const-string v3, "6550710"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RED"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    const-string v3, "65507"

    aput-object v3, v2, v6

    const-string v3, "6550713"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTN"

    aput-object v3, v2, v4

    const-string v3, "ZA"

    aput-object v3, v2, v5

    const-string v3, "65510"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "UG"

    aput-object v3, v2, v5

    const-string v3, "64114"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "TN"

    aput-object v3, v2, v5

    const-string v3, "60501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUNI"

    aput-object v3, v2, v4

    const-string v3, "TN"

    aput-object v3, v2, v5

    const-string v3, "60502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUNS"

    aput-object v3, v2, v4

    const-string v3, "TN"

    aput-object v3, v2, v5

    const-string v3, "60503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v2, v4

    const-string v3, "KR"

    aput-object v3, v2, v5

    const-string v3, "45005"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KT"

    aput-object v3, v2, v4

    const-string v3, "KR"

    aput-object v3, v2, v5

    const-string v3, "45008"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TEL"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OPT"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OPT"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50502"

    aput-object v3, v2, v6

    const-string v3, "505029"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIR"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50502"

    aput-object v3, v2, v6

    const-string v3, "505029"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CRZ"

    aput-object v3, v2, v4

    const-string v3, "AU"

    aput-object v3, v2, v5

    const-string v3, "50503"

    aput-object v3, v2, v6

    const-string v3, "50503823"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BAT"

    aput-object v3, v2, v4

    const-string v3, "BH"

    aput-object v3, v2, v5

    const-string v3, "42601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZAIN"

    aput-object v3, v2, v4

    const-string v3, "BH"

    aput-object v3, v2, v5

    const-string v3, "42602"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIVA"

    aput-object v3, v2, v4

    const-string v3, "BH"

    aput-object v3, v2, v5

    const-string v3, "42604"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CMN"

    aput-object v3, v2, v4

    const-string v3, "CN"

    aput-object v3, v2, v5

    const-string v3, "46000"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CMN"

    aput-object v3, v2, v4

    const-string v3, "CN"

    aput-object v3, v2, v5

    const-string v3, "46002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CMN"

    aput-object v3, v2, v4

    const-string v3, "CN"

    aput-object v3, v2, v5

    const-string v3, "46007"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CNU"

    aput-object v3, v2, v4

    const-string v3, "CN"

    aput-object v3, v2, v5

    const-string v3, "46001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45400"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45401"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45406"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45412"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45413"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45417"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45418"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45419"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45500"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45504"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "H3G"

    aput-object v3, v2, v4

    const-string v3, "HK"

    aput-object v3, v2, v5

    const-string v3, "45505"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MCCI"

    aput-object v3, v2, v4

    const-string v3, "IR"

    aput-object v3, v2, v5

    const-string v3, "43211"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MCCI"

    aput-object v3, v2, v4

    const-string v3, "IR"

    aput-object v3, v2, v5

    const-string v3, "43214"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MCCI"

    aput-object v3, v2, v4

    const-string v3, "IR"

    aput-object v3, v2, v5

    const-string v3, "43219"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MCCI"

    aput-object v3, v2, v4

    const-string v3, "IR"

    aput-object v3, v2, v5

    const-string v3, "43270"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MCCI"

    aput-object v3, v2, v4

    const-string v3, "IR"

    aput-object v3, v2, v5

    const-string v3, "43293"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ICEL"

    aput-object v3, v2, v4

    const-string v3, "IR"

    aput-object v3, v2, v5

    const-string v3, "43235"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ASIA"

    aput-object v3, v2, v4

    const-string v3, "IQ"

    aput-object v3, v2, v5

    const-string v3, "41805"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZAIN"

    aput-object v3, v2, v4

    const-string v3, "IQ"

    aput-object v3, v2, v5

    const-string v3, "41820"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZAIN"

    aput-object v3, v2, v4

    const-string v3, "IQ"

    aput-object v3, v2, v5

    const-string v3, "41830"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "KOR"

    aput-object v3, v2, v4

    const-string v3, "IQ"

    aput-object v3, v2, v5

    const-string v3, "41840"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORI"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "42501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CCM"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "42502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PCL"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "42503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "PCL"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "20404"

    aput-object v3, v2, v6

    const-string v3, "PELEPHONE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "JAW"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "42505"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WAT"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "42506"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MIRS"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "42507"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MIRS"

    aput-object v3, v2, v4

    const-string v3, "IL"

    aput-object v3, v2, v5

    const-string v3, "20404"

    aput-object v3, v2, v6

    const-string v3, "MIRS"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZAIN"

    aput-object v3, v2, v4

    const-string v3, "JO"

    aput-object v3, v2, v5

    const-string v3, "41601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UMNI"

    aput-object v3, v2, v4

    const-string v3, "JO"

    aput-object v3, v2, v5

    const-string v3, "41603"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "JO"

    aput-object v3, v2, v5

    const-string v3, "41677"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ORG"

    aput-object v3, v2, v4

    const-string v3, "JO"

    aput-object v3, v2, v5

    const-string v3, "416770"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZAIN"

    aput-object v3, v2, v4

    const-string v3, "KW"

    aput-object v3, v2, v5

    const-string v3, "41902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WAT"

    aput-object v3, v2, v4

    const-string v3, "KW"

    aput-object v3, v2, v5

    const-string v3, "41903"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIVA"

    aput-object v3, v2, v4

    const-string v3, "KW"

    aput-object v3, v2, v5

    const-string v3, "41904"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ALFA"

    aput-object v3, v2, v4

    const-string v3, "LB"

    aput-object v3, v2, v5

    const-string v3, "41501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTC"

    aput-object v3, v2, v4

    const-string v3, "LB"

    aput-object v3, v2, v5

    const-string v3, "41503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STM"

    aput-object v3, v2, v4

    const-string v3, "MO"

    aput-object v3, v2, v5

    const-string v3, "45500"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DIGI"

    aput-object v3, v2, v4

    const-string v3, "MY"

    aput-object v3, v2, v5

    const-string v3, "50210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NTC"

    aput-object v3, v2, v4

    const-string v3, "NP"

    aput-object v3, v2, v5

    const-string v3, "42901"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NCEL"

    aput-object v3, v2, v4

    const-string v3, "NP"

    aput-object v3, v2, v5

    const-string v3, "42902"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "NZ"

    aput-object v3, v2, v5

    const-string v3, "53001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "NZ"

    aput-object v3, v2, v5

    const-string v3, "53024"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DGR"

    aput-object v3, v2, v4

    const-string v3, "NZ"

    aput-object v3, v2, v5

    const-string v3, "53024"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x197

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DGR"

    aput-object v3, v2, v4

    const-string v3, "NZ"

    aput-object v3, v2, v5

    const-string v3, "53001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OMAN"

    aput-object v3, v2, v4

    const-string v3, "OM"

    aput-object v3, v2, v5

    const-string v3, "42202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x199

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NAW"

    aput-object v3, v2, v4

    const-string v3, "OM"

    aput-object v3, v2, v5

    const-string v3, "42203"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "QTEL"

    aput-object v3, v2, v4

    const-string v3, "QA"

    aput-object v3, v2, v5

    const-string v3, "42701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "QA"

    aput-object v3, v2, v5

    const-string v3, "42702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STC"

    aput-object v3, v2, v4

    const-string v3, "SA"

    aput-object v3, v2, v5

    const-string v3, "42001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOBI"

    aput-object v3, v2, v4

    const-string v3, "SA"

    aput-object v3, v2, v5

    const-string v3, "42003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ZAIN"

    aput-object v3, v2, v4

    const-string v3, "SA"

    aput-object v3, v2, v5

    const-string v3, "42004"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SING"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SING"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SING"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SING"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52504"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SING"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52505"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "M1"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "M1"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52504"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52505"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52501"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52502"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52503"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "STAR"

    aput-object v3, v2, v4

    const-string v3, "SG"

    aput-object v3, v2, v5

    const-string v3, "52504"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOBI"

    aput-object v3, v2, v4

    const-string v3, "LK"

    aput-object v3, v2, v5

    const-string v3, "41301"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DIAL"

    aput-object v3, v2, v4

    const-string v3, "LK"

    aput-object v3, v2, v5

    const-string v3, "41302"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ETI"

    aput-object v3, v2, v4

    const-string v3, "LK"

    aput-object v3, v2, v5

    const-string v3, "41303"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIR"

    aput-object v3, v2, v4

    const-string v3, "LK"

    aput-object v3, v2, v5

    const-string v3, "41305"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SRA"

    aput-object v3, v2, v4

    const-string v3, "SY"

    aput-object v3, v2, v5

    const-string v3, "41701"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MTN"

    aput-object v3, v2, v4

    const-string v3, "SY"

    aput-object v3, v2, v5

    const-string v3, "41702"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TWM"

    aput-object v3, v2, v4

    const-string v3, "TW"

    aput-object v3, v2, v5

    const-string v3, "46697"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TRUE"

    aput-object v3, v2, v4

    const-string v3, "TH"

    aput-object v3, v2, v5

    const-string v3, "52000"

    aput-object v3, v2, v6

    const-string v3, "01"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CAT"

    aput-object v3, v2, v4

    const-string v3, "TH"

    aput-object v3, v2, v5

    const-string v3, "52000"

    aput-object v3, v2, v6

    const-string v3, "02"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AIS"

    aput-object v3, v2, v4

    const-string v3, "TH"

    aput-object v3, v2, v5

    const-string v3, "52001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TOT"

    aput-object v3, v2, v4

    const-string v3, "TH"

    aput-object v3, v2, v5

    const-string v3, "52015"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTAC"

    aput-object v3, v2, v4

    const-string v3, "TH"

    aput-object v3, v2, v5

    const-string v3, "52018"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TRUE"

    aput-object v3, v2, v4

    const-string v3, "TH"

    aput-object v3, v2, v5

    const-string v3, "52099"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TUR"

    aput-object v3, v2, v4

    const-string v3, "TR"

    aput-object v3, v2, v5

    const-string v3, "28601"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "TR"

    aput-object v3, v2, v5

    const-string v3, "28602"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AVEA"

    aput-object v3, v2, v4

    const-string v3, "TR"

    aput-object v3, v2, v5

    const-string v3, "28603"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ETIS"

    aput-object v3, v2, v4

    const-string v3, "AE"

    aput-object v3, v2, v5

    const-string v3, "42402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DU"

    aput-object v3, v2, v4

    const-string v3, "AE"

    aput-object v3, v2, v5

    const-string v3, "42403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MOBI"

    aput-object v3, v2, v4

    const-string v3, "VN"

    aput-object v3, v2, v5

    const-string v3, "45201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VINA"

    aput-object v3, v2, v4

    const-string v3, "VN"

    aput-object v3, v2, v5

    const-string v3, "45202"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VNT"

    aput-object v3, v2, v4

    const-string v3, "VN"

    aput-object v3, v2, v5

    const-string v3, "45204"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VNM"

    aput-object v3, v2, v4

    const-string v3, "VN"

    aput-object v3, v2, v5

    const-string v3, "45205"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BEE"

    aput-object v3, v2, v4

    const-string v3, "VN"

    aput-object v3, v2, v5

    const-string v3, "45207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "EVN"

    aput-object v3, v2, v4

    const-string v3, "VN"

    aput-object v3, v2, v5

    const-string v3, "45208"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TCL"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334030"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "33403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNE"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334050"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNE"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "22201"

    aput-object v3, v2, v6

    const-string v3, "Iusacell"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNF"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "334050"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "UNF"

    aput-object v3, v2, v4

    const-string v3, "MX"

    aput-object v3, v2, v5

    const-string v3, "22201"

    aput-object v3, v2, v6

    const-string v3, "Iusacell"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "GT"

    aput-object v3, v2, v5

    const-string v3, "70403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "GT"

    aput-object v3, v2, v5

    const-string v3, "704030"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "SV"

    aput-object v3, v2, v5

    const-string v3, "70604"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "SV"

    aput-object v3, v2, v5

    const-string v3, "706040"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "NI"

    aput-object v3, v2, v5

    const-string v3, "71030"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "NI"

    aput-object v3, v2, v5

    const-string v3, "710300"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "PA"

    aput-object v3, v2, v5

    const-string v3, "71402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "PA"

    aput-object v3, v2, v5

    const-string v3, "714020"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "PE"

    aput-object v3, v2, v5

    const-string v3, "71606"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CLR"

    aput-object v3, v2, v4

    const-string v3, "PR"

    aput-object v3, v2, v5

    const-string v3, "330110"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "AR"

    aput-object v3, v2, v5

    const-string v3, "72207"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72402"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72403"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TIM"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CLR"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72405"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72406"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72411"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VIV"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72423"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "SCTL"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72415"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BRT"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72416"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AMZ"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72424"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Oi"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72431"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CTBC"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72432"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CTBC"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72433"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CTBC"

    aput-object v3, v2, v4

    const-string v3, "BR"

    aput-object v3, v2, v5

    const-string v3, "72434"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ENT"

    aput-object v3, v2, v4

    const-string v3, "CL"

    aput-object v3, v2, v5

    const-string v3, "73001"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ENT"

    aput-object v3, v2, v4

    const-string v3, "CL"

    aput-object v3, v2, v5

    const-string v3, "73010"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLE"

    aput-object v3, v2, v4

    const-string v3, "CL"

    aput-object v3, v2, v5

    const-string v3, "73002"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "CLR"

    aput-object v3, v2, v4

    const-string v3, "CL"

    aput-object v3, v2, v5

    const-string v3, "73003"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "CO"

    aput-object v3, v2, v5

    const-string v3, "732123"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLF"

    aput-object v3, v2, v4

    const-string v3, "UY"

    aput-object v3, v2, v5

    const-string v3, "74807"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310260"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310160"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310200"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310210"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310220"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310230"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310240"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310250"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310270"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310300"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310310"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310490"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310530"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310580"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310590"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310640"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310660"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310800"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "31026"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "31021"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TMO"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "45000"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302720"

    aput-object v3, v2, v6

    const-string v3, "302720XXX"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302720"

    aput-object v3, v2, v6

    const-string v3, "302720X9X"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x201

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302720"

    aput-object v3, v2, v6

    const-string v3, "302720X97"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x202

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302720"

    aput-object v3, v2, v6

    const-string v3, "302720X94"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x203

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302370"

    aput-object v3, v2, v6

    const-string v3, "DD"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x204

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302720"

    aput-object v3, v2, v6

    const-string v3, "302720X92"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x205

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302660"

    aput-object v3, v2, v6

    const-string v3, "2C"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x206

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302370"

    aput-object v3, v2, v6

    const-string v3, "2C"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x207

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302370"

    aput-object v3, v2, v6

    const-string v3, "302370XXX"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x208

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "RGS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "45000"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x209

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302610"

    aput-object v3, v2, v6

    const-string v3, "3D"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302610"

    aput-object v3, v2, v6

    const-string v3, "3E"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302610"

    aput-object v3, v2, v6

    const-string v3, "3F"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302610"

    aput-object v3, v2, v6

    const-string v3, "40"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302780"

    aput-object v3, v2, v6

    const-string v3, "5A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "20404"

    aput-object v3, v2, v6

    const-string v3, "5A"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "BELL"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "45000"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x210

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302220"

    aput-object v3, v2, v6

    const-string v3, "54"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x211

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302221"

    aput-object v3, v2, v6

    const-string v3, "54"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x212

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302220"

    aput-object v3, v2, v6

    const-string v3, "4B"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x213

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302221"

    aput-object v3, v2, v6

    const-string v3, "4B"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x214

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302220"

    aput-object v3, v2, v6

    const-string v3, "50"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x215

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302221"

    aput-object v3, v2, v6

    const-string v3, "50"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x216

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302220"

    aput-object v3, v2, v6

    const-string v3, "43"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x217

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TLS"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "45000"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x218

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302500"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x219

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302510"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "20404"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "302490"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "22201"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "22288"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "VTR"

    aput-object v3, v2, v4

    const-string v3, "CA"

    aput-object v3, v2, v5

    const-string v3, "45000"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "ATT"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310410"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x220

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "TRF"

    aput-object v3, v2, v4

    const-string v3, "US"

    aput-object v3, v2, v5

    const-string v3, "310410"

    aput-object v3, v2, v6

    const-string v3, "DE"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x221

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Default"

    aput-object v3, v2, v4

    const-string v3, "Default"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Telephony$Carriers;->GLOBAL_OPERATORS:[[Ljava/lang/String;

    .line 5075
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->AUTOPROFILE_FEATURE:Ljava/lang/String;

    .line 5076
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 5077
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 5079
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    .line 5080
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    .line 5083
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    .line 5084
    sput-boolean v4, Landroid/provider/Telephony$Carriers;->isBuildOperatorVersionValues:Z

    .line 6935
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Telephony$Carriers;->multiSimMode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClonedApnKey(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "key"
    .parameter "sim_slot"

    .prologue
    .line 7015
    const-string v4, "Telephony"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addClonedApnKey: sim_slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7017
    const-string v1, "cloned-apn"

    .line 7018
    .local v1, file:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p2}, Landroid/provider/Telephony$Carriers;->getClonedApnKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7019
    .local v2, keylist:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    .line 7020
    const-string v1, "cloned-apn-2"

    .line 7022
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 7024
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7025
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "apn_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7026
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7027
    return-void
.end method

.method private static buildOperatorVersionValues()Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5088
    sget-boolean v6, Landroid/provider/Telephony$Carriers;->isBuildOperatorVersionValues:Z

    if-eqz v6, :cond_0

    .line 5132
    .local v1, arr$:[[Ljava/lang/String;
    .local v2, i$:I
    .local v3, len$:I
    :goto_0
    return v4

    .line 5092
    .end local v1           #arr$:[[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    .line 5093
    goto :goto_0

    .line 5096
    :cond_2
    sget-object v1, Landroid/provider/Telephony$Carriers;->GLOBAL_OPERATORS:[[Ljava/lang/String;

    .restart local v1       #arr$:[[Ljava/lang/String;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v0, v1, v2

    .line 5098
    .local v0, Op:[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    aget-object v6, v0, v5

    if-eqz v6, :cond_6

    aget-object v6, v0, v4

    if-eqz v6, :cond_6

    aget-object v6, v0, v9

    if-eqz v6, :cond_6

    aget-object v6, v0, v10

    if-eqz v6, :cond_6

    .line 5101
    aget-object v6, v0, v5

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    aget-object v6, v0, v4

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5104
    sget-object v6, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5107
    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 5108
    aget-object v6, v0, v9

    sput-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    .line 5110
    :cond_3
    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 5111
    aget-object v6, v0, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    .line 5114
    :cond_4
    const-string v6, "Telephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found Operator_Version Numeric and Extra ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 5121
    :cond_6
    const-string v6, "Telephony"

    const-string v7, "There are invaild Operator in GLOBAL_OPERATORS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5125
    .end local v0           #Op:[Ljava/lang/String;
    :cond_7
    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget-object v6, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    if-nez v6, :cond_9

    :cond_8
    move v4, v5

    .line 5127
    goto/16 :goto_0

    .line 5130
    :cond_9
    sput-boolean v4, Landroid/provider/Telephony$Carriers;->isBuildOperatorVersionValues:Z

    goto/16 :goto_0
.end method

.method public static clearClonedApnKey(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "sim_slot"

    .prologue
    .line 7030
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearClonedApnKey sim_slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7032
    const-string v1, "cloned-apn"

    .line 7033
    .local v1, file:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 7034
    const-string v1, "cloned-apn-2"

    .line 7036
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 7038
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7039
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 7040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7041
    return-void
.end method

.method public static cloneApn(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "sim_slot"

    .prologue
    const/4 v2, 0x0

    .line 6957
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Landroid/provider/Telephony$Carriers;->getNumeric(I)Ljava/lang/String;

    move-result-object v10

    .line 6958
    .local v10, operator:Ljava/lang/String;
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloneApn for operator = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6960
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    .line 6961
    add-int/lit8 v0, p1, -0x1

    invoke-static {v10, v0}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 6962
    .local v6, autoprofileKey:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extraid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sim_slot = \'0\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6963
    .local v3, selection:Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Telephony$Carriers;->getClonedApnKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 6964
    .local v7, clonedApn:Ljava/lang/String;
    const/4 v9, 0x0

    .line 6968
    .local v9, map:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6969
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloneApn: selection="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6970
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloneApn: existing clonedApn list ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6973
    const-string v0, "Telephony"

    const-string v1, "cloneApn: aleady cloned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7001
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #autoprofileKey:Ljava/lang/String;
    .end local v7           #clonedApn:Ljava/lang/String;
    .end local v9           #map:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 6977
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #autoprofileKey:Ljava/lang/String;
    .restart local v7       #clonedApn:Ljava/lang/String;
    .restart local v9       #map:Landroid/content/ContentValues;
    :cond_1
    const/4 v8, 0x0

    .line 6978
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6982
    if-eqz v8, :cond_2

    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloneApn : cursor count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6985
    :cond_2
    if-eqz v8, :cond_0

    .line 6986
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 6987
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/provider/Telephony$Carriers;->addClonedApnKey(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6990
    :cond_3
    invoke-static {v8}, Landroid/provider/Telephony$Carriers;->makeApnContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v9

    .line 6991
    if-eqz v9, :cond_4

    .line 6992
    const-string v0, "sim_slot"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6993
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6995
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6998
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "numeric"

    .prologue
    .line 5673
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutoProfileKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5675
    const-string v3, "gsm.sim.operator.gid"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5676
    .local v0, simGid:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.alpha"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5677
    .local v2, simSPN:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 5679
    .local v1, simIMSI:Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAutoProfileKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "numeric"
    .parameter "subs"

    .prologue
    const/4 v6, 0x0

    .line 5684
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutoProfileKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5685
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutoProfileKey_mSub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    const-string v0, ""

    .line 5688
    .local v0, simGid:Ljava/lang/String;
    const-string v2, ""

    .line 5689
    .local v2, simSPN:Ljava/lang/String;
    const-string v1, ""

    .line 5709
    .local v1, simIMSI:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    const-string v3, "gsm.sim.operator.gid"

    invoke-static {v3, p1, v6}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5710
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    const-string v3, "gsm.sim.operator.alpha"

    invoke-static {v3, p1, v6}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5711
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 5714
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAutoProfileKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "numeric"
    .parameter "simGid"
    .parameter "simSPN"
    .parameter "simIMSI"

    .prologue
    const/4 v11, 0x6

    const/16 v10, 0x9

    const/16 v9, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 5719
    const-string v3, ""

    .line 5720
    .local v3, retCode:Ljava/lang/String;
    const-string v0, ""

    .local v0, operatorGid:Ljava/lang/String;
    const-string v2, ""

    .local v2, operatorSPN:Ljava/lang/String;
    const-string v1, ""

    .line 5722
    .local v1, operatorIMSI:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v4, v3

    .line 6138
    .end local v3           #retCode:Ljava/lang/String;
    .local v4, retCode:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 5725
    .end local v4           #retCode:Ljava/lang/String;
    .restart local v3       #retCode:Ljava/lang/String;
    :cond_0
    const-string v5, "45000"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v3

    .end local v3           #retCode:Ljava/lang/String;
    .restart local v4       #retCode:Ljava/lang/String;
    goto :goto_0

    .line 5729
    .end local v4           #retCode:Ljava/lang/String;
    .restart local v3       #retCode:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 5730
    move-object v2, p2

    .line 5731
    move-object v1, p3

    .line 5733
    invoke-static {p0, v0}, Landroid/provider/Telephony$Carriers;->isGidBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5735
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is GidBasedOperator, Gid Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 5740
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_4

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPEN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5741
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5746
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 5749
    :cond_2
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected GID Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5750
    move-object v3, v0

    :cond_3
    :goto_2
    move-object v4, v3

    .line 6138
    .end local v3           #retCode:Ljava/lang/String;
    .restart local v4       #retCode:Ljava/lang/String;
    goto :goto_0

    .line 5744
    .end local v4           #retCode:Ljava/lang/String;
    .restart local v3       #retCode:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5752
    :cond_5
    invoke-static {p0, v2}, Landroid/provider/Telephony$Carriers;->isSPNBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5754
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is SPNBasedOperator, SPN Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 5758
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 5761
    :cond_6
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected SPN Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5762
    move-object v3, v2

    goto :goto_2

    .line 5764
    :cond_7
    invoke-static {p0}, Landroid/provider/Telephony$Carriers;->isIMSIBasedOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 5771
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_b

    const-string v5, "22802"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5775
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "43"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "45"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5777
    :cond_8
    const-string v1, "228024X45"

    .line 6099
    :cond_9
    :goto_3
    const-string v5, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected IMSI Value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6100
    move-object v3, v1

    goto/16 :goto_2

    .line 5779
    :cond_a
    const-string v1, ""

    goto :goto_3

    .line 5783
    :cond_b
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_d

    const-string v5, "29402"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5787
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "294020001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5788
    const-string v1, "294020001"

    goto :goto_3

    .line 5791
    :cond_c
    const-string v1, ""

    goto :goto_3

    .line 5795
    :cond_d
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_f

    const-string v5, "21670"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 5799
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5800
    const-string v1, "21670XX2"

    goto :goto_3

    .line 5803
    :cond_e
    const-string v1, ""

    goto :goto_3

    .line 5807
    :cond_f
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_11

    const-string v5, "21403"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 5810
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2140359"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5811
    const-string v1, "2140359"

    goto :goto_3

    .line 5813
    :cond_10
    const-string v1, ""

    goto/16 :goto_3

    .line 5817
    :cond_11
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_15

    const-string v5, "21406"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 5821
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2140613"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 5822
    const-string v1, "2140613"

    goto/16 :goto_3

    .line 5825
    :cond_12
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2140606"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5826
    const-string v1, "2140606"

    goto/16 :goto_3

    .line 5829
    :cond_13
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2140612"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 5830
    const-string v1, "2140612"

    goto/16 :goto_3

    .line 5834
    :cond_14
    const-string v1, "00"

    goto/16 :goto_3

    .line 5838
    :cond_15
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_17

    const-string v5, "24001"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 5842
    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "240017"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 5843
    const-string v1, "240017"

    goto/16 :goto_3

    .line 5846
    :cond_16
    const-string v1, ""

    goto/16 :goto_3

    .line 5850
    :cond_17
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_1a

    const-string v5, "23820"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5854
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2382010"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2382030"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5856
    :cond_18
    const-string v1, "2382010_2382030"

    goto/16 :goto_3

    .line 5859
    :cond_19
    const-string v1, ""

    goto/16 :goto_3

    .line 5863
    :cond_1a
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_1c

    const-string v5, "24202"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 5867
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2420256"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 5868
    const-string v1, "2420256XX"

    goto/16 :goto_3

    .line 5871
    :cond_1b
    const-string v1, ""

    goto/16 :goto_3

    .line 5875
    :cond_1c
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_24

    const-string v5, "24007"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 5879
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1d

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007695"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5881
    const-string v1, "24007695_24007696"

    goto/16 :goto_3

    .line 5882
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1e

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007696"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 5884
    const-string v1, "24007695_24007696"

    goto/16 :goto_3

    .line 5887
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1f

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007604"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 5888
    const-string v1, "24007604_24007605"

    goto/16 :goto_3

    .line 5890
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_20

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007605"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 5891
    const-string v1, "24007604_24007605"

    goto/16 :goto_3

    .line 5893
    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_21

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007612"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 5894
    const-string v1, "24007604_24007605"

    goto/16 :goto_3

    .line 5896
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_22

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24007619"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 5897
    const-string v1, "24007604_24007605"

    goto/16 :goto_3

    .line 5900
    :cond_22
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2400768"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 5901
    const-string v1, "2400768"

    goto/16 :goto_3

    .line 5904
    :cond_23
    const-string v1, ""

    goto/16 :goto_3

    .line 5908
    :cond_24
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_26

    const-string v5, "24201"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 5912
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24201700"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 5913
    const-string v1, "24201700"

    goto/16 :goto_3

    .line 5916
    :cond_25
    const-string v1, ""

    goto/16 :goto_3

    .line 5920
    :cond_26
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_28

    const-string v5, "24405"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 5924
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2440541"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 5925
    const-string v1, "2440541"

    goto/16 :goto_3

    .line 5928
    :cond_27
    const-string v1, ""

    goto/16 :goto_3

    .line 5932
    :cond_28
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_2a

    const-string v5, "20601"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 5936
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2060188"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 5937
    const-string v1, "2060188"

    goto/16 :goto_3

    .line 5940
    :cond_29
    const-string v1, ""

    goto/16 :goto_3

    .line 5944
    :cond_2a
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_2e

    const-string v5, "26207"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 5948
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2b

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "26207500"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 5949
    const-string v1, "26207500"

    goto/16 :goto_3

    .line 5952
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2c

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "26207404"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 5953
    const-string v1, "26207404"

    goto/16 :goto_3

    .line 5956
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_2d

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2620749"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 5957
    const-string v1, "2620749"

    goto/16 :goto_3

    .line 5961
    :cond_2d
    const-string v1, ""

    goto/16 :goto_3

    .line 5965
    :cond_2e
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_30

    const-string v5, "50502"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 5969
    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "505029"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 5970
    const-string v1, "505029"

    goto/16 :goto_3

    .line 5973
    :cond_2f
    const-string v1, ""

    goto/16 :goto_3

    .line 5977
    :cond_30
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_32

    const-string v5, "50503"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 5981
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "50503823"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 5982
    const-string v1, "50503823"

    goto/16 :goto_3

    .line 5985
    :cond_31
    const-string v1, ""

    goto/16 :goto_3

    .line 5989
    :cond_32
    const-string v5, "ORG"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "CH"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_35

    const-string v5, "22803"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 5995
    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 5997
    :cond_33
    const-string v1, ""

    goto/16 :goto_3

    .line 6000
    :cond_34
    const-string v1, "22803[1-9][1-8]"

    goto/16 :goto_3

    .line 6005
    :cond_35
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_38

    const-string v5, "65507"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 6009
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "6550710"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 6010
    const-string v1, "6550710"

    goto/16 :goto_3

    .line 6011
    :cond_36
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "6550713"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 6012
    const-string v1, "6550713"

    goto/16 :goto_3

    .line 6015
    :cond_37
    const-string v1, ""

    goto/16 :goto_3

    .line 6021
    :cond_38
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_3f

    const-string v5, "302720"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 6023
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 6024
    const-string v1, "302720XXX"

    goto/16 :goto_3

    .line 6027
    :cond_39
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "95"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "91"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "98"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "99"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 6028
    :cond_3a
    const-string v1, "302720X9X"

    goto/16 :goto_3

    .line 6031
    :cond_3b
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "96"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 6032
    const-string v1, "302720XXX"

    goto/16 :goto_3

    .line 6035
    :cond_3c
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "94"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 6036
    const-string v1, "302720X94"

    goto/16 :goto_3

    .line 6039
    :cond_3d
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "97"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 6040
    const-string v1, "302720X97"

    goto/16 :goto_3

    .line 6043
    :cond_3e
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "92"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 6044
    const-string v1, "302720X92"

    goto/16 :goto_3

    .line 6048
    :cond_3f
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_40

    const-string v5, "302370"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 6051
    const-string v1, "302370XXX"

    goto/16 :goto_3

    .line 6056
    :cond_40
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_45

    const-string v5, "24801"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 6059
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24801012"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24801013"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 6060
    :cond_41
    const-string v1, "24801012_24801013"

    goto/16 :goto_3

    .line 6063
    :cond_42
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24801022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "24801023"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 6064
    :cond_43
    const-string v1, "24801022_24801023"

    goto/16 :goto_3

    .line 6067
    :cond_44
    const-string v1, ""

    goto/16 :goto_3

    .line 6071
    :cond_45
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_49

    const-string v5, "20408"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 6074
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_46

    const/16 v5, 0xa

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2040807500"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 6075
    const-string v1, "2040807500_2040807501"

    goto/16 :goto_3

    .line 6076
    :cond_46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_47

    const/16 v5, 0xa

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2040807501"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 6077
    const-string v1, "2040807500_2040807501"

    goto/16 :goto_3

    .line 6078
    :cond_47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_48

    const/16 v5, 0xa

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2040807505"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 6079
    const-string v1, "2040807505"

    goto/16 :goto_3

    .line 6081
    :cond_48
    const-string v1, ""

    goto/16 :goto_3

    .line 6085
    :cond_49
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_4b

    const-string v5, "22201"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 6088
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_4a

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "22201309"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 6089
    const-string v1, "22201309"

    goto/16 :goto_3

    .line 6091
    :cond_4a
    const-string v1, ""

    goto/16 :goto_3

    .line 6096
    :cond_4b
    const-string v1, ""

    goto/16 :goto_3

    .line 6106
    :cond_4c
    const-string v5, "UNF"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string v5, "MX"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string v5, "22201"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 6109
    const-string v5, "Iusacell"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 6112
    :cond_4d
    const-string v5, "PCL"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const-string v5, "IL"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const-string v5, "20404"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 6115
    const-string v5, "Pelephone"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 6118
    :cond_4e
    const-string v5, "MIRS"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const-string v5, "IL"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const-string v5, "20404"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 6121
    const-string v5, "MIRS"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 6124
    :cond_4f
    const-string v5, "TLF"

    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v5, "23410"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 6126
    const-string v5, "Telefonica"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 6132
    :cond_50
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6135
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionExtraID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public static getAutoprofileFeature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5138
    sget-object v0, Landroid/provider/Telephony$Carriers;->AUTOPROFILE_FEATURE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Telephony$Carriers;->AUTOPROFILE_FEATURE:Ljava/lang/String;

    .line 5140
    :goto_0
    return-object v0

    .line 5139
    :cond_0
    const-string v0, "ro.lge.autoprofile"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->AUTOPROFILE_FEATURE:Ljava/lang/String;

    .line 5140
    sget-object v0, Landroid/provider/Telephony$Carriers;->AUTOPROFILE_FEATURE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getClonedApnKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "sim_slot"

    .prologue
    .line 7003
    const-string v2, "Telephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClonedApnKey:sim_slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7005
    const-string v0, "cloned-apn"

    .line 7006
    .local v0, file:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 7007
    const-string v0, "cloned-apn-2"

    .line 7009
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7011
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "apn_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5170
    sget-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5171
    sget-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 5190
    :goto_0
    return-object v0

    .line 5174
    :cond_0
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 5175
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 5181
    const-string v0, "1"

    const-string v1, "ro.build.regional"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5183
    const-string v0, "VDF"

    sget-object v1, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EU"

    sget-object v1, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5184
    const-string v0, "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;28001;CYTAMOBILE-VODAFONE;23003;VODAFONE CZ;29403;VIP MK;20810;F SFR;64710;SFR;20810;4C;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;22005;VIP;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;53024;;50503;;60202;;65501;;26001;PLUS;26002;T-MOBILE.PL;26003;ORANGE;26006;PLAY;45005;SKT;45008;KT;"

    const-string v1, "persist.radio.mcc-list"

    const-string v2, "FFF"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Telephony$Carriers;->rebuildProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNumOfSimSlot()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6945
    const/4 v0, 0x1

    .line 6946
    .local v0, nSim:I
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isSupportAutoProfileAsMultiSimMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6953
    :cond_0
    :goto_0
    return v2

    .line 6950
    :cond_1
    if-ge v0, v2, :cond_0

    goto :goto_0
.end method

.method public static getNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5600
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5602
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5617
    .local v0, extraid:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 5605
    .end local v0           #extraid:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isMultipleNumericOperator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5608
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5610
    .local v1, numeric:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5612
    .restart local v0       #extraid:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/provider/Telephony$Carriers;->isAcceptableSIM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5617
    :cond_2
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNumeric(I)Ljava/lang/String;
    .locals 6
    .parameter "subs"

    .prologue
    const/4 v5, 0x0

    .line 5654
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5656
    const-string v2, "Telephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2, p0, v5}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5668
    :cond_0
    :goto_0
    return-object v1

    .line 5659
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isMultipleNumericOperator()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5661
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2, p0, v5}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5662
    .local v1, numeric:Ljava/lang/String;
    invoke-static {v1, p0}, Landroid/provider/Telephony$Carriers;->getAutoProfileKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5664
    .local v0, extraid:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/provider/Telephony$Carriers;->isAcceptableSIM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5668
    .end local v0           #extraid:Ljava/lang/String;
    .end local v1           #numeric:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOpVersionNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getOpVersionExtraID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5209
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5210
    const-string v0, ""

    .line 5218
    :goto_0
    return-object v0

    .line 5212
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5213
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    goto :goto_0

    .line 5215
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5216
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_EXTRAID:Ljava/lang/String;

    goto :goto_0

    .line 5218
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static getOpVersionNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5195
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5196
    const-string v0, ""

    .line 5204
    :goto_0
    return-object v0

    .line 5198
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5199
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    goto :goto_0

    .line 5201
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5202
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_VERISON_NUMERIC:Ljava/lang/String;

    goto :goto_0

    .line 5204
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static getOperatorCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5145
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5146
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 5165
    :goto_0
    return-object v0

    .line 5149
    :cond_0
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 5150
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 5156
    const-string v0, "1"

    const-string v1, "ro.build.regional"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5158
    const-string v0, "VDF"

    sget-object v1, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EU"

    sget-object v1, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5159
    const-string v0, "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;28001;CYTAMOBILE-VODAFONE;23003;VODAFONE CZ;29403;VIP MK;20810;F SFR;64710;SFR;20810;4C;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;22005;VIP;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;53024;;50503;;60202;;65501;;26001;PLUS;26002;T-MOBILE.PL;26003;ORANGE;26006;PLAY;45005;SKT;45008;KT;"

    const-string v1, "persist.radio.mcc-list"

    const-string v2, "FFF"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Telephony$Carriers;->rebuildProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 5165
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isAcceptableSIM(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "numeric"
    .parameter "extraid"

    .prologue
    const/4 v0, 0x1

    .line 5234
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5244
    :cond_0
    :goto_0
    return v0

    .line 5238
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    .line 5240
    sget-object v1, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5242
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoProfileNeeded()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5552
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 5553
    .local v1, countryCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    .line 5554
    .local v2, operatorCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getAutoprofileFeature()Ljava/lang/String;

    move-result-object v0

    .line 5557
    .local v0, autoprofileFeature:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5595
    :cond_0
    :goto_0
    return v3

    .line 5562
    :cond_1
    const-string v5, "ro.build.feature.smart_apn"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5568
    const-string v5, "OPEN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ATT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VZW"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SKT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "KT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "LGU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SPR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VDF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TEL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SHB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PLS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ORG"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TCL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "UNF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VIV"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CLR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "STL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MON"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "KDDI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CUCC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "OPT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GLO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TMN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TIM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "PLY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "USC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5591
    const-string v5, "COM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 5595
    goto/16 :goto_0
.end method

.method private static isGidBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "numeric"
    .parameter "gid"

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5340
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 5341
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 5344
    .local v1, operatorCode:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 5373
    :cond_1
    :goto_0
    return v2

    .line 5347
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v3

    .line 5348
    goto :goto_0

    .line 5357
    :cond_4
    const-string v4, "21406"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "0008"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5358
    :cond_5
    const-string v4, "21408"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "0008"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5361
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_7

    const-string v4, "OPEN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "HK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5363
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_1

    const-string v4, "23410;0A;23415;A0;23415;C1;23415;70;23430;28;20801;33;20801;52;20823;52;20601;52;20801;4E;20810;4E;20826;4E;20601;4E;20810;12;64710;12;20810;4C;20810;44;27211;0A;20601;0A;21408;00;302610;3D;302610;3E;302610;3F;302610;40;302780;5A;20404;5A;310410;DE;302220;54;302221;54;302220;4B;302221;4B;302220;50;302221;50;302220;43;302660;2C;302370;2C;302370;DD;52000;02;52000;01;45400;01010000;45400;01020000;45400;01030000;45400;01040000;45400;02020001;45400;02030001;45400;02020002;45402;01010000;45402;01020000;45402;01030000;45402;01040000;45402;02020001;45402;02030001;45402;02020002;45410;01010000;45410;01020000;45410;01030000;45410;01040000;45410;02020001;45410;02030001;45410;02020002;45418;01010000;45418;01020000;45418;01030000;45418;01040000;45418;02020001;45418;02030001;45418;02020002;"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    move v2, v3

    .line 5364
    goto :goto_0

    .line 5368
    :cond_7
    const-string v4, "23410;0A;23415;A0;23415;C1;23415;70;23430;28;20801;33;20801;52;20823;52;20601;52;20801;4E;20810;4E;20826;4E;20601;4E;20810;12;64710;12;20810;4C;20810;44;27211;0A;20601;0A;21408;00;302610;3D;302610;3E;302610;3F;302610;40;302780;5A;20404;5A;310410;DE;302220;54;302221;54;302220;4B;302221;4B;302220;50;302221;50;302220;43;302660;2C;302370;2C;302370;DD;52000;02;52000;01;45400;01010000;45400;01020000;45400;01030000;45400;01040000;45400;02020001;45400;02030001;45400;02020002;45402;01010000;45402;01020000;45402;01030000;45402;01040000;45402;02020001;45402;02030001;45402;02020002;45410;01010000;45410;01020000;45410;01030000;45410;01040000;45410;02020001;45410;02030001;45410;02020002;45418;01010000;45418;01020000;45418;01030000;45418;01040000;45418;02020001;45418;02030001;45418;02020002;"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    move v2, v3

    .line 5370
    goto/16 :goto_0
.end method

.method private static isIMSIBasedOperator(Ljava/lang/String;)Z
    .locals 2
    .parameter "numeric"

    .prologue
    const/4 v0, 0x0

    .line 5541
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5547
    :cond_0
    :goto_0
    return v0

    .line 5544
    :cond_1
    const-string v1, "22802;29402;21670;21406;21406;21406;24001;23820;24202;24007;24007;24201;24405;20601;26207;26207;26207;50502;50503;22803;302720;302370;65507;21403;22201;20408;"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5547
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLoadableAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .parameter "title"
    .parameter "numeric"
    .parameter "extraid"
    .parameter "dedicated"

    .prologue
    .line 6388
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 6389
    .local v6, countryCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getOperatorCode()Ljava/lang/String;

    move-result-object v12

    .line 6390
    .local v12, operatorCode:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Telephony$Carriers;->getAutoprofileFeature()Ljava/lang/String;

    move-result-object v5

    .line 6393
    .local v5, autoprofileFeature:Ljava/lang/String;
    const-string v19, "ro.build.feature.smart_apn"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 6394
    const/16 v19, 0x1

    .line 6929
    :goto_0
    return v19

    .line 6398
    :cond_0
    if-nez p2, :cond_1

    .line 6399
    const-string p2, ""

    .line 6404
    :goto_1
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6405
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "countryCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    if-nez p1, :cond_2

    .line 6408
    const/16 v19, 0x0

    goto :goto_0

    .line 6401
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 6411
    :cond_2
    if-eqz p3, :cond_7

    .line 6413
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 6414
    .local v17, version:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_7

    .line 6419
    const/16 v18, 0x0

    .line 6420
    .local v18, version_from_numeric:Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Carriers;->GLOBAL_OPERATORS:[[Ljava/lang/String;

    .local v4, arr$:[[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_4

    aget-object v3, v4, v8

    .line 6421
    .local v3, Op:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v19, 0x0

    aget-object v19, v3, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    aget-object v19, v3, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x2

    aget-object v19, v3, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x3

    aget-object v19, v3, v19

    if-eqz v19, :cond_3

    .line 6422
    const/16 v19, 0x2

    aget-object v19, v3, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x3

    aget-object v19, v3, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 6423
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    aget-object v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6420
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 6427
    .end local v3           #Op:[Ljava/lang/String;
    :cond_4
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "autoprofileFeature is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", version_from_numeric is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6428
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "OPEN"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 6429
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6431
    :cond_5
    const-string v19, "B2B"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "ORG"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 6432
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " Force G2, ORG B2B title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6433
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6436
    :cond_6
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "This version is for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", but profile is dedicated for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6437
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6442
    .end local v4           #arr$:[[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v17           #version:Ljava/lang/String;
    .end local v18           #version_from_numeric:Ljava/lang/String;
    :cond_7
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 6443
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Force OPEN, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6444
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6448
    :cond_8
    const-string v19, "RGS"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 6449
    const-string v19, "302370"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "302720"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "302660"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 6450
    :cond_9
    const-string v19, "gsm.sim.operator.gid"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6451
    .local v13, operatorGid:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v14

    .line 6452
    .local v14, operatorIMSI:Ljava/lang/String;
    const-string v19, "persist.lg.data.firstopsim"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6453
    .local v7, firstopsim:Ljava/lang/String;
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] firstopsim: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    if-eqz v7, :cond_b

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 6455
    const-string v13, ""

    .line 6456
    const-string v14, ""

    .line 6457
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 6458
    .local v15, opinfo:[Ljava/lang/String;
    if-eqz v15, :cond_a

    array-length v0, v15

    move/from16 v19, v0

    if-lez v19, :cond_a

    .line 6459
    const/16 v19, 0x0

    aget-object v14, v15, v19

    .line 6461
    :cond_a
    if-eqz v15, :cond_b

    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 6462
    const/16 v19, 0x1

    aget-object v13, v15, v19

    .line 6465
    .end local v15           #opinfo:[Ljava/lang/String;
    :cond_b
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] OperatorIMSI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  operatorGid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6467
    if-eqz v14, :cond_c

    if-nez v13, :cond_d

    .line 6468
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6470
    :cond_d
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_f

    .line 6471
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6474
    :cond_f
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "45000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 6475
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6480
    :cond_10
    const-string v19, "302720"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302720"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string v19, "302720XXX"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x7

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "9"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "96"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "95"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "91"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "99"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "98"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 6483
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6484
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6487
    :cond_12
    const-string v19, "302370"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302370"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v19, "2C"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "2C"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 6488
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6489
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6492
    :cond_13
    const-string v19, "302660"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302660"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const-string v19, "2C"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "2C"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 6493
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6494
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6497
    :cond_14
    const-string v19, "302720"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const-string v19, "302720X94"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302720"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "94"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 6498
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorIMSI:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6499
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6502
    :cond_15
    const-string v19, "302370"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const-string v19, "DD"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302370"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "DD"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 6503
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorIMSI:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6504
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6507
    :cond_16
    const-string v19, "302720"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const-string v19, "302720X97"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302720"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "97"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 6508
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorIMSI:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6509
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6512
    :cond_17
    const-string v19, "302720"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const-string v19, "302720X92"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302720"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "92"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 6513
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorIMSI:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6514
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6517
    :cond_18
    const-string v19, "302720"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302720"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const-string v19, "302720X9X"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "95"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "91"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "99"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "98"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    :cond_19
    const-string v19, "302370"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302370"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const-string v19, "302370XXX"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "99"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    const/16 v19, 0x7

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "98"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 6521
    :cond_1a
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorIMSI:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6522
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6525
    :cond_1b
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6528
    .end local v7           #firstopsim:Ljava/lang/String;
    .end local v13           #operatorGid:Ljava/lang/String;
    .end local v14           #operatorIMSI:Ljava/lang/String;
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6533
    :cond_1d
    const-string v19, "BELL"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 6534
    const-string v19, "302610"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e

    const-string v19, "302780"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e

    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e

    const-string v19, "20404"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 6535
    :cond_1e
    const-string v19, "gsm.sim.operator.gid"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6536
    .restart local v13       #operatorGid:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v14

    .line 6537
    .restart local v14       #operatorIMSI:Ljava/lang/String;
    const-string v19, "persist.lg.data.firstopsim"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6538
    .restart local v7       #firstopsim:Ljava/lang/String;
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] firstopsim: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    if-eqz v7, :cond_20

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_20

    .line 6540
    const-string v13, ""

    .line 6541
    const-string v14, ""

    .line 6542
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 6543
    .restart local v15       #opinfo:[Ljava/lang/String;
    if-eqz v15, :cond_1f

    array-length v0, v15

    move/from16 v19, v0

    if-lez v19, :cond_1f

    .line 6544
    const/16 v19, 0x0

    aget-object v14, v15, v19

    .line 6546
    :cond_1f
    if-eqz v15, :cond_20

    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_20

    .line 6547
    const/16 v19, 0x1

    aget-object v13, v15, v19

    .line 6550
    .end local v15           #opinfo:[Ljava/lang/String;
    :cond_20
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] OperatorIMSI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  operatorGid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6552
    if-eqz v14, :cond_21

    if-nez v13, :cond_22

    .line 6553
    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6555
    :cond_22
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_23

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_24

    .line 6556
    :cond_23
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6559
    :cond_24
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "45000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 6560
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6561
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6564
    :cond_25
    const-string v19, "302610"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302610"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 6565
    if-eqz p2, :cond_26

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_27

    .line 6566
    :cond_26
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6568
    :cond_27
    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    const-string v19, "3D"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_28

    const-string v19, "3E"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_28

    const-string v19, "3F"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_28

    const-string v19, "40"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 6570
    :cond_28
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6573
    :cond_29
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6575
    :cond_2a
    const-string v19, "302780"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2b

    const-string v19, "20404"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    :cond_2b
    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302780"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2c

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "20404"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 6576
    :cond_2c
    if-eqz p2, :cond_2d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_2e

    .line 6577
    :cond_2d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6579
    :cond_2e
    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    const-string v19, "5A"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 6580
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6581
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6583
    :cond_2f
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6586
    :cond_30
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6590
    .end local v7           #firstopsim:Ljava/lang/String;
    .end local v13           #operatorGid:Ljava/lang/String;
    .end local v14           #operatorIMSI:Ljava/lang/String;
    :cond_31
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6595
    :cond_32
    const-string v19, "TLS"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_43

    .line 6596
    const-string v19, "302220"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_33

    const-string v19, "302221"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_33

    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_42

    .line 6597
    :cond_33
    const-string v19, "gsm.sim.operator.gid"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6598
    .restart local v13       #operatorGid:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v14

    .line 6600
    .restart local v14       #operatorIMSI:Ljava/lang/String;
    const-string v19, "persist.lg.data.firstopsim"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6601
    .restart local v7       #firstopsim:Ljava/lang/String;
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] firstopsim: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    if-eqz v7, :cond_35

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_35

    .line 6603
    const-string v13, ""

    .line 6604
    const-string v14, ""

    .line 6605
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 6606
    .restart local v15       #opinfo:[Ljava/lang/String;
    if-eqz v15, :cond_34

    array-length v0, v15

    move/from16 v19, v0

    if-lez v19, :cond_34

    .line 6607
    const/16 v19, 0x0

    aget-object v14, v15, v19

    .line 6609
    :cond_34
    if-eqz v15, :cond_35

    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_35

    .line 6610
    const/16 v19, 0x1

    aget-object v13, v15, v19

    .line 6613
    .end local v15           #opinfo:[Ljava/lang/String;
    :cond_35
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] OperatorIMSI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  operatorGid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6615
    if-eqz v14, :cond_36

    if-nez v13, :cond_37

    .line 6616
    :cond_36
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6618
    :cond_37
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_38

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_39

    .line 6619
    :cond_38
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6623
    :cond_39
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "45000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a

    .line 6624
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", operatorGid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6625
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6628
    :cond_3a
    const-string v19, "302220"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3b

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302220"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3c

    :cond_3b
    const-string v19, "302221"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_41

    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302221"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_41

    .line 6629
    :cond_3c
    if-eqz p2, :cond_3d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_3e

    .line 6630
    :cond_3d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6633
    :cond_3e
    const/16 v19, 0x0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    const-string v19, "54"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3f

    const-string v19, "4B"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3f

    const-string v19, "50"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3f

    const-string v19, "43"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    .line 6634
    :cond_3f
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6635
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6637
    :cond_40
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6640
    :cond_41
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6643
    .end local v7           #firstopsim:Ljava/lang/String;
    .end local v13           #operatorGid:Ljava/lang/String;
    .end local v14           #operatorIMSI:Ljava/lang/String;
    :cond_42
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6648
    :cond_43
    const-string v19, "VTR"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_54

    .line 6649
    const-string v19, "302500"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_44

    const-string v19, "20404"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_44

    const-string v19, "302510"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_44

    const-string v19, "302490"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_44

    const-string v19, "22201"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_44

    const-string v19, "22288"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_44

    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_53

    .line 6650
    :cond_44
    const-string v19, "gsm.sim.operator.gid"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6651
    .restart local v13       #operatorGid:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v14

    .line 6652
    .restart local v14       #operatorIMSI:Ljava/lang/String;
    const-string v19, "persist.lg.data.firstopsim"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6653
    .restart local v7       #firstopsim:Ljava/lang/String;
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] firstopsim: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6654
    if-eqz v7, :cond_46

    const-string v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_46

    .line 6655
    const-string v13, ""

    .line 6656
    const-string v14, ""

    .line 6657
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 6658
    .restart local v15       #opinfo:[Ljava/lang/String;
    if-eqz v15, :cond_45

    array-length v0, v15

    move/from16 v19, v0

    if-lez v19, :cond_45

    .line 6659
    const/16 v19, 0x0

    aget-object v14, v15, v19

    .line 6661
    :cond_45
    if-eqz v15, :cond_46

    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_46

    .line 6662
    const/16 v19, 0x1

    aget-object v13, v15, v19

    .line 6665
    .end local v15           #opinfo:[Ljava/lang/String;
    :cond_46
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[singleSW] OperatorIMSI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  operatorGid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6667
    if-nez v14, :cond_47

    .line 6668
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6670
    :cond_47
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_48

    .line 6671
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6674
    :cond_48
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_49

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "45000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_49

    .line 6675
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6679
    :cond_49
    const-string v19, "302490"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4a

    const-string v19, "22201"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4a

    const-string v19, "22288"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4c

    :cond_4a
    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302490"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4b

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "22201"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4b

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "22288"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4c

    .line 6680
    :cond_4b
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6681
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6682
    :cond_4c
    const-string v19, "302500"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4d

    const-string v19, "20404"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4f

    :cond_4d
    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302500"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4e

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "20404"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4f

    .line 6683
    :cond_4e
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6684
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6685
    :cond_4f
    const-string v19, "302510"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_50

    const-string v19, "20404"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_52

    :cond_50
    const/16 v19, 0x0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "302510"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_51

    const/16 v19, 0x0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "20404"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_52

    .line 6686
    :cond_51
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6689
    :cond_52
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6692
    .end local v7           #firstopsim:Ljava/lang/String;
    .end local v13           #operatorGid:Ljava/lang/String;
    .end local v14           #operatorIMSI:Ljava/lang/String;
    :cond_53
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6700
    :cond_54
    const-string v19, "OPEN"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "ATT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "DCM"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "SKT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "KT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "LGU"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "SPR"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "SHB"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "TCL"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "UNF"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "VIV"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "CLR"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "PLS"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "ORG"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "STL"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "MON"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "KDDI"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "TEL"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "OPT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "GLO"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "CUCC"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "TMN"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "TIM"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "PLY"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_55

    const-string v19, "USC"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5e

    .line 6727
    :cond_55
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_56

    .line 6729
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OPEN, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6731
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6735
    :cond_56
    const-string v19, "BR"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_58

    .line 6737
    const-string v19, "724"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_57

    .line 6738
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OPEN BR, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6740
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6742
    :cond_57
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6745
    :cond_58
    const-string v19, "DE"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5a

    .line 6747
    const-string v19, "262"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_59

    .line 6748
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OPEN DE, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6750
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6752
    :cond_59
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6755
    :cond_5a
    const-string v19, "FR"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5d

    .line 6757
    const-string v19, "208"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5b

    const-string v19, "340"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5b

    const-string v19, "647"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5c

    .line 6761
    :cond_5b
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OPEN FR, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6763
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6765
    :cond_5c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6768
    :cond_5d
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EU OPEN, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6772
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6775
    :cond_5e
    const-string v19, "COM"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5f

    const-string v19, "EU"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5f

    const-string v19, "LGU"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5f

    const-string v19, "KT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5f

    const-string v19, "SKT"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_73

    .line 6778
    :cond_5f
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_60

    .line 6780
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Regional COM, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6782
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6785
    :cond_60
    const-string v19, "ORG"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_62

    .line 6787
    const-string v19, "28310;;65202;;20610;MOBISTAR;62402;;62303;;60201;;62701;;20801;ORANGE F;64700;ORANGE RE;34001;ORANGE;61101;;63203;;42501;;61203;;41677;;416770;;63907;;27099;ORANGE;64602;;61002;;61701;;25901;ORANGE;60400;;61404;;26003;ORANGE;26803;P OPTIMUS;22610;ORANGE RO;60801;;23101;ORANGE SK;21403;ORANGE;22803;ORANGE;22803;22803[1-9][1-8];60501;;64114;;23433;ORANGE;23430;T-MOBILE;23431;T-MOBILE;23432;T-MOBILE;"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_61

    .line 6788
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6789
    :cond_61
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6c

    const-string v19, "28310;;65202;;20610;MOBISTAR;62402;;62303;;60201;;62701;;20801;ORANGE F;64700;ORANGE RE;34001;ORANGE;61101;;63203;;42501;;61203;;41677;;416770;;63907;;27099;ORANGE;64602;;61002;;61701;;25901;ORANGE;60400;;61404;;26003;ORANGE;26803;P OPTIMUS;22610;ORANGE RO;60801;;23101;ORANGE SK;21403;ORANGE;22803;ORANGE;22803;22803[1-9][1-8];60501;;64114;;23433;ORANGE;23430;T-MOBILE;23431;T-MOBILE;23432;T-MOBILE;"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6c

    .line 6792
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6795
    :cond_62
    const-string v19, "VDF"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_64

    .line 6797
    const-string v19, "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;28001;CYTAMOBILE-VODAFONE;23003;VODAFONE CZ;29403;VIP MK;20810;F SFR;64710;SFR;20810;4C;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;22005;VIP;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;53024;;50503;;60202;;65501;;26001;PLUS;26002;T-MOBILE.PL;26003;ORANGE;26006;PLAY;45005;SKT;45008;KT;"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_63

    .line 6798
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6799
    :cond_63
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6c

    const-string v19, "27602;VODAFONE AL;23201;A1;20601;PROXIMUS;28401;;21910;HR VIP;28001;CYTAMOBILE-VODAFONE;23003;VODAFONE CZ;29403;VIP MK;20810;F SFR;64710;SFR;20810;4C;26202;VODAFONE.DE;20205;VODAFONE GR;21670;VODAFONE HU;21670;21670XX2;27402;;27403;;27201;VODAFONE IE;22210;VODAFONE IT;27801;VODAFONE MT;20404;;26801;;22601;VODAFONE RO;22005;VIP;29340;SOMOBIL;21401;VODAFONE ES;22801;SWISSCOM;23415;VODAFONE UK;53001;;53024;;50503;;60202;;65501;;26001;PLUS;26002;T-MOBILE.PL;26003;ORANGE;26006;PLAY;45005;SKT;45008;KT;"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6c

    .line 6802
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6805
    :cond_64
    const-string v19, "TMO"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_66

    .line 6807
    const-string v19, "23203;T MOBILE A;23207;TELE.RING;28405;284 05;21901;T-MOBILE HR;23001;T-MOBILE CZ;29401;T-MOBILE MK;26201;;20201;COSMOTE;21630;T-MOBILE HU;22004;T-MOBILE CG;29702;T-MOBILE CG;20416;T-MOBILE  NL;20420;T-MOBILE  NL;26002;T-MOBILE.PL;22603;COSMOTE;22606;COSMOTE;23102;T-MOBILE SK;"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_65

    .line 6808
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6809
    :cond_65
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6c

    const-string v19, "23203;T MOBILE A;23207;TELE.RING;28405;284 05;21901;T-MOBILE HR;23001;T-MOBILE CZ;29401;T-MOBILE MK;26201;;20201;COSMOTE;21630;T-MOBILE HU;22004;T-MOBILE CG;29702;T-MOBILE CG;20416;T-MOBILE  NL;20420;T-MOBILE  NL;26002;T-MOBILE.PL;22603;COSMOTE;22606;COSMOTE;23102;T-MOBILE SK;"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6c

    .line 6812
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6815
    :cond_66
    const-string v19, "H3G"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_68

    .line 6817
    const-string v19, "23205;;23210;3;23806;3;27205;;22299;;24002;3SE;24004;3SE;23420;3;23594;3;45403;3;45404;3;45400;3CSL;45401;3CTM;45402;3CSL;45406;3SmarTone;45410;3CSL;45412;3CMHK;45413;3CMHK;45415;3SmarTone;45416;3PCCW;45417;3SmarTone;45418;3CSL;45419;3PCCW;45500;3SmarTone;45501;3CTM;45503;3SmarTone;45504;3CTM;45505;3SmarTone;"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_67

    .line 6818
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6819
    :cond_67
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6c

    const-string v19, "23205;;23210;3;23806;3;27205;;22299;;24002;3SE;24004;3SE;23420;3;23594;3;45403;3;45404;3;45400;3CSL;45401;3CTM;45402;3CSL;45406;3SmarTone;45410;3CSL;45412;3CMHK;45413;3CMHK;45415;3SmarTone;45416;3PCCW;45417;3SmarTone;45418;3CSL;45419;3PCCW;45500;3SmarTone;45501;3CTM;45503;3SmarTone;45504;3CTM;45505;3SmarTone;"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6c

    .line 6822
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6825
    :cond_68
    const-string v19, "O2"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6a

    .line 6827
    const-string v19, "23002;O2 - CZ;26207;;26207;262075_2620749;27202;O2.IE;23106;O2 - SK;21407;Base;23410;O2 - UK;"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_69

    .line 6828
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6829
    :cond_69
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6c

    const-string v19, "23002;O2 - CZ;26207;;26207;262075_2620749;27202;O2.IE;23106;O2 - SK;21407;Base;23410;O2 - UK;"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6c

    .line 6831
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6834
    :cond_6a
    const-string v19, "SFR"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6c

    .line 6836
    const-string v19, "20810;F SFR;64710;SFR;20810;4C;"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6b

    .line 6837
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6838
    :cond_6b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6c

    const-string v19, "20810;F SFR;64710;SFR;20810;4C;"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_6c

    .line 6841
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6849
    :cond_6c
    const-string v19, "1"

    const-string v20, "ro.build.regional"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_71

    const-string v19, "VDF"

    const-string v20, "ro.build.target_operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_71

    const-string v19, "EU"

    const-string v20, "ro.build.target_country"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_71

    .line 6854
    const-string v19, "persist.radio.mcc-list"

    const-string v20, "FFF"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6857
    .local v10, mccList:Ljava/lang/String;
    const-string v19, "FFF"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6e

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6e

    const/16 v16, 0x1

    .line 6859
    .local v16, regional:Z
    :goto_3
    const-string v19, "FFF"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6f

    if-nez v16, :cond_6f

    const/4 v11, 0x1

    .line 6861
    .local v11, nonRegional:Z
    :goto_4
    if-eqz v16, :cond_70

    .line 6863
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6d

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_71

    .line 6866
    :cond_6d
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "This version is COM for specific operators, MccList("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "), the OpCode/CounCode is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Hence this profile is not loaded : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6857
    .end local v11           #nonRegional:Z
    .end local v16           #regional:Z
    :cond_6e
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 6859
    .restart local v16       #regional:Z
    :cond_6f
    const/4 v11, 0x0

    goto :goto_4

    .line 6877
    .restart local v11       #nonRegional:Z
    :cond_70
    if-eqz v11, :cond_72

    .line 6879
    const-string v19, "Telephony"

    const-string v20, "ERROR! THIS COMMNET SHOULD NOT BE PRINTED : COM Non-Reginoal"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6881
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "This version is COM Non-Reginoal, MccList("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "), the OpCode/CounCode is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6898
    .end local v10           #mccList:Ljava/lang/String;
    .end local v11           #nonRegional:Z
    .end local v16           #regional:Z
    :cond_71
    :goto_5
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6887
    .restart local v10       #mccList:Ljava/lang/String;
    .restart local v11       #nonRegional:Z
    .restart local v16       #regional:Z
    :cond_72
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "This version is COM for all COM operators, MccList("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "), the OpCode/CounCode is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6907
    .end local v10           #mccList:Ljava/lang/String;
    .end local v11           #nonRegional:Z
    .end local v16           #regional:Z
    :cond_73
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v19

    if-eqz v19, :cond_75

    .line 6909
    const-string v19, "45000"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_74

    .line 6911
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isAutoProfileNeeded() is true, title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6913
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 6916
    :cond_74
    const-string v19, "Telephony"

    const-string v20, "ERROR! THIS COMMNET SHOULD NOT BE PRINTED."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6919
    :cond_75
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    .line 6921
    sget-object v19, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_76

    .line 6922
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 6925
    :cond_76
    const-string v19, "Telephony"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", numeric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", extraid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is added"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6929
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method public static isMultipleNumericOperator()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5223
    invoke-static {}, Landroid/provider/Telephony$Carriers;->isAutoProfileNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5229
    :cond_0
    :goto_0
    return v0

    .line 5227
    :cond_1
    invoke-static {}, Landroid/provider/Telephony$Carriers;->buildOperatorVersionValues()Z

    .line 5229
    sget-object v1, Landroid/provider/Telephony$Carriers;->mNumericExtraIDSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSPNBasedOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "numeric"
    .parameter "spn"

    .prologue
    const/4 v0, 0x0

    .line 5442
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 5452
    :cond_0
    :goto_0
    return v0

    .line 5445
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5448
    const-string v1, "21407;JAZZTEL;21421;JAZZTEL;23801;TELMORE;23802;BIBOB;23802;CBB MOBIL;23820;CALL ME;23820;DLG TELE;20810;A MOBILE;20810;LECLERCMOBILE;26201;DEBITEL;26201;MOBILCOM-DEBITEL;26202;DEBITEL;26202;MOBILCOM-DEBITEL;26202;1&1;26203;DEBITEL;26203;MOBILCOM-DEBITEL;26207;DEBITEL;26207;MOBILCOM-DEBITEL;21601;DJUICE;22299;FASTWEB;22210;POSTEMOBILE;20408;RABO MOBIEL;20416;BEN NL;26801;ZON;24004;TELENOR SE;24005;HALEBOP;24005;TELE2;24005;TELIA;24024;TELE2;24024;TELENOR SE;25503;ACE&BASE;25503;DJUICE;26006;RED BULL MOBILE;24803;TELE2;22201;IUSACELL;20404;PELEPHONE;20404;MIRS;"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 5452
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportAutoProfileAsMultiSimMode()Z
    .locals 1

    .prologue
    .line 6940
    const/4 v0, 0x0

    return v0
.end method

.method public static makeApnContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 7045
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 7076
    :goto_0
    return-object v0

    .line 7047
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7048
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 7049
    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7050
    const-string v1, "apn"

    const-string v2, "apn"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7051
    const-string v1, "proxy"

    const-string v2, "proxy"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7052
    const-string v1, "port"

    const-string v2, "port"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7053
    const-string v1, "mmsproxy"

    const-string v2, "mmsproxy"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7054
    const-string v1, "mmsport"

    const-string v2, "mmsport"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7055
    const-string v1, "server"

    const-string v2, "server"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7056
    const-string v1, "user"

    const-string v2, "user"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7057
    const-string v1, "password"

    const-string v2, "password"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7058
    const-string v1, "mmsc"

    const-string v2, "mmsc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7059
    const-string v1, "mcc"

    const-string v2, "mcc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7060
    const-string v1, "mnc"

    const-string v2, "mnc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7061
    const-string v1, "numeric"

    const-string v2, "numeric"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7062
    const-string v1, "authtype"

    const-string v2, "authtype"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7063
    const-string v1, "type"

    const-string v2, "type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7064
    const-string v1, "protocol"

    const-string v2, "protocol"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7065
    const-string v1, "roaming_protocol"

    const-string v2, "roaming_protocol"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7066
    const-string v1, "carrier_enabled"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 7067
    const-string v1, "carrier_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7070
    :goto_1
    const-string v1, "bearer"

    const-string v2, "bearer"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7071
    const-string v1, "extraid"

    const-string v2, "extraid"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7072
    const-string v1, "defaultsetting"

    const-string v2, "defaultsetting"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7073
    const-string v1, "usercreatesetting"

    const-string v2, "usercreatesetting"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7074
    const-string v1, "sim_slot"

    const-string v2, "sim_slot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 7069
    :cond_1
    const-string v1, "carrier_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method private static rebuildProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "baseOpList"
    .parameter "mccList"

    .prologue
    .line 6247
    const-string v9, "FFF"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    .line 6248
    .local v8, regional:Z
    :goto_0
    const-string v9, "FFF"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v8, :cond_3

    const/4 v4, 0x1

    .line 6250
    .local v4, nonRegional:Z
    :goto_1
    if-eqz v4, :cond_8

    .line 6252
    const-string v9, "Telephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findBuildProperties(): This is Non-Regional version, unique MCC is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6256
    const-string v9, ";"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6258
    .local v7, operators:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 6260
    .local v5, numric:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v6, v1, v2

    .line 6262
    .local v6, op:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6264
    move-object v5, v6

    .line 6266
    const-string v9, "Telephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findBuildProperties(): Found numeric for MCC("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6273
    .end local v6           #op:Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_7

    .line 6275
    sget-object v1, Landroid/provider/Telephony$Carriers;->GLOBAL_OPERATORS:[[Ljava/lang/String;

    .local v1, arr$:[[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 6277
    .local v0, Op:[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    aget-object v9, v0, v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    aget-object v9, v0, v9

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    aget-object v9, v0, v9

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    aget-object v9, v0, v9

    if-eqz v9, :cond_5

    .line 6280
    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    aget-object v9, v0, v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6282
    const/4 v9, 0x0

    aget-object v9, v0, v9

    sput-object v9, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    .line 6283
    const/4 v9, 0x1

    aget-object v9, v0, v9

    sput-object v9, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    .line 6285
    const-string v9, "Telephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findBuildProperties(): Found build operator for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Carriers;->OPERATOR_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Carriers;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    .end local v0           #Op:[Ljava/lang/String;
    .end local v1           #arr$:[[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #numric:Ljava/lang/String;
    .end local v7           #operators:[Ljava/lang/String;
    :cond_1
    :goto_4
    return-void

    .line 6247
    .end local v4           #nonRegional:Z
    .end local v8           #regional:Z
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 6248
    .restart local v8       #regional:Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 6260
    .local v1, arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #nonRegional:Z
    .restart local v5       #numric:Ljava/lang/String;
    .restart local v6       #op:Ljava/lang/String;
    .restart local v7       #operators:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 6295
    .end local v6           #op:Ljava/lang/String;
    .restart local v0       #Op:[Ljava/lang/String;
    .local v1, arr$:[[Ljava/lang/String;
    :cond_5
    const-string v9, "Telephony"

    const-string v10, "findBuildProperties(): There are invaild Operator in GLOBAL_OPERATORS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6302
    .end local v0           #Op:[Ljava/lang/String;
    .local v1, arr$:[Ljava/lang/String;
    :cond_7
    const-string v9, "Telephony"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "findBuildProperties() : Fail to find numeric for MCC("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6309
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #numric:Ljava/lang/String;
    .end local v7           #operators:[Ljava/lang/String;
    :cond_8
    const-string v9, "Telephony"

    const-string v10, "findBuildProperties(): This is OPEN or Regional version"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
