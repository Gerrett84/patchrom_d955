.class public final Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;
.super Ljava/lang/Object;
.source "LgeGlobalTimeZoneHelper.java"


# static fields
.field private static final AREA_CODE_AFRI:I = 0x1

.field private static final AREA_CODE_ANTA:I = 0x2

.field private static final AREA_CODE_ASIA:I = 0x3

.field private static final AREA_CODE_AUST:I = 0x4

.field private static final AREA_CODE_EURO:I = 0x5

.field private static final AREA_CODE_GLOBAL:I = 0x8

.field private static final AREA_CODE_NORTH:I = 0x6

.field private static final AREA_CODE_SOUTH:I = 0x7

.field private static final AREA_CODE_UNDEFINED:I = 0x0

.field private static final BUILTIN_OEMTZ_PATH:[Ljava/lang/String; = null

.field private static final IND_CODES:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final MCC_CODES:[S = null

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIMEZONE_TZFOCUS:Ljava/lang/String; = "ril.gsm.tzfocus"

.field private static final UPDATED_USERTZ_PATH:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0xec

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->MCC_CODES:[S

    .line 56
    const/16 v0, 0xec

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->IND_CODES:[I

    .line 83
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "etc/tz/tz_undefined.xml"

    aput-object v1, v0, v3

    const-string v1, "etc/tz/tz_af.xml"

    aput-object v1, v0, v4

    const-string v1, "etc/tz/tz_an.xml"

    aput-object v1, v0, v5

    const-string v1, "etc/tz/tz_as.xml"

    aput-object v1, v0, v6

    const-string v1, "etc/tz/tz_au.xml"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "etc/tz/tz_eu.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "etc/tz/tz_no.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "etc/tz/tz_so.xml"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "etc/tz/tz_gl.xml"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->BUILTIN_OEMTZ_PATH:[Ljava/lang/String;

    .line 95
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "shared/tz/tz_undefined.xml"

    aput-object v1, v0, v3

    const-string v1, "shared/tz/tz_af.xml"

    aput-object v1, v0, v4

    const-string v1, "shared/tz/tz_an.xml"

    aput-object v1, v0, v5

    const-string v1, "shared/tz/tz_as.xml"

    aput-object v1, v0, v6

    const-string v1, "shared/tz/tz_au.xml"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "shared/tz/tz_eu.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "shared/tz/tz_no.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "shared/tz/tz_so.xml"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "shared/tz/tz_gl.xml"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->UPDATED_USERTZ_PATH:[Ljava/lang/String;

    return-void

    .line 29
    :array_0
    .array-data 0x2
        0xcat 0x0t
        0xcct 0x0t
        0xcet 0x0t
        0xd0t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd8t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xdet 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xeet 0x0t
        0xf0t 0x0t
        0xf2t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0x1t 0x1t
        0x3t 0x1t
        0x4t 0x1t
        0x6t 0x1t
        0xat 0x1t
        0xct 0x1t
        0xet 0x1t
        0x10t 0x1t
        0x12t 0x1t
        0x14t 0x1t
        0x16t 0x1t
        0x18t 0x1t
        0x1at 0x1t
        0x1bt 0x1t
        0x1ct 0x1t
        0x1et 0x1t
        0x20t 0x1t
        0x21t 0x1t
        0x22t 0x1t
        0x24t 0x1t
        0x25t 0x1t
        0x26t 0x1t
        0x27t 0x1t
        0x29t 0x1t
        0x2et 0x1t
        0x34t 0x1t
        0x36t 0x1t
        0x37t 0x1t
        0x38t 0x1t
        0x39t 0x1t
        0x3at 0x1t
        0x3bt 0x1t
        0x3ct 0x1t
        0x4at 0x1t
        0x4ct 0x1t
        0x4et 0x1t
        0x52t 0x1t
        0x54t 0x1t
        0x56t 0x1t
        0x58t 0x1t
        0x5at 0x1t
        0x5ct 0x1t
        0x5et 0x1t
        0x60t 0x1t
        0x62t 0x1t
        0x64t 0x1t
        0x66t 0x1t
        0x68t 0x1t
        0x6at 0x1t
        0x6bt 0x1t
        0x6ct 0x1t
        0x6dt 0x1t
        0x6et 0x1t
        0x70t 0x1t
        0x72t 0x1t
        0x74t 0x1t
        0x76t 0x1t
        0x78t 0x1t
        0x90t 0x1t
        0x91t 0x1t
        0x92t 0x1t
        0x94t 0x1t
        0x95t 0x1t
        0x9at 0x1t
        0x9ct 0x1t
        0x9dt 0x1t
        0x9et 0x1t
        0x9ft 0x1t
        0xa0t 0x1t
        0xa1t 0x1t
        0xa2t 0x1t
        0xa3t 0x1t
        0xa4t 0x1t
        0xa5t 0x1t
        0xa6t 0x1t
        0xa7t 0x1t
        0xa8t 0x1t
        0xa9t 0x1t
        0xaat 0x1t
        0xabt 0x1t
        0xact 0x1t
        0xadt 0x1t
        0xaet 0x1t
        0xaft 0x1t
        0xb0t 0x1t
        0xb2t 0x1t
        0xb4t 0x1t
        0xb5t 0x1t
        0xb6t 0x1t
        0xb8t 0x1t
        0xb9t 0x1t
        0xc2t 0x1t
        0xc4t 0x1t
        0xc6t 0x1t
        0xc7t 0x1t
        0xc8t 0x1t
        0xc9t 0x1t
        0xcct 0x1t
        0xcdt 0x1t
        0xd2t 0x1t
        0xd3t 0x1t
        0xd6t 0x1t
        0xd8t 0x1t
        0xf6t 0x1t
        0xf9t 0x1t
        0xfet 0x1t
        0x2t 0x2t
        0x3t 0x2t
        0x8t 0x2t
        0xdt 0x2t
        0x10t 0x2t
        0x12t 0x2t
        0x16t 0x2t
        0x17t 0x2t
        0x18t 0x2t
        0x19t 0x2t
        0x1bt 0x2t
        0x1ct 0x2t
        0x1dt 0x2t
        0x1et 0x2t
        0x1ft 0x2t
        0x20t 0x2t
        0x21t 0x2t
        0x22t 0x2t
        0x23t 0x2t
        0x24t 0x2t
        0x25t 0x2t
        0x26t 0x2t
        0x27t 0x2t
        0x28t 0x2t
        0x29t 0x2t
        0x2bt 0x2t
        0x5at 0x2t
        0x5bt 0x2t
        0x5ct 0x2t
        0x5dt 0x2t
        0x5et 0x2t
        0x5ft 0x2t
        0x60t 0x2t
        0x61t 0x2t
        0x62t 0x2t
        0x63t 0x2t
        0x64t 0x2t
        0x65t 0x2t
        0x66t 0x2t
        0x67t 0x2t
        0x68t 0x2t
        0x69t 0x2t
        0x6at 0x2t
        0x6bt 0x2t
        0x6ct 0x2t
        0x6dt 0x2t
        0x6et 0x2t
        0x6ft 0x2t
        0x70t 0x2t
        0x71t 0x2t
        0x72t 0x2t
        0x73t 0x2t
        0x74t 0x2t
        0x75t 0x2t
        0x76t 0x2t
        0x77t 0x2t
        0x78t 0x2t
        0x79t 0x2t
        0x7at 0x2t
        0x7bt 0x2t
        0x7ct 0x2t
        0x7dt 0x2t
        0x7et 0x2t
        0x7ft 0x2t
        0x80t 0x2t
        0x81t 0x2t
        0x82t 0x2t
        0x83t 0x2t
        0x85t 0x2t
        0x86t 0x2t
        0x87t 0x2t
        0x88t 0x2t
        0x89t 0x2t
        0x8at 0x2t
        0x8bt 0x2t
        0x8ct 0x2t
        0x8dt 0x2t
        0x8et 0x2t
        0x8ft 0x2t
        0x91t 0x2t
        0xbet 0x2t
        0xc0t 0x2t
        0xc2t 0x2t
        0xc4t 0x2t
        0xc6t 0x2t
        0xc8t 0x2t
        0xcat 0x2t
        0xcct 0x2t
        0xd2t 0x2t
        0xd4t 0x2t
        0xdat 0x2t
        0xdct 0x2t
        0xdet 0x2t
        0xe0t 0x2t
        0xe2t 0x2t
        0xe4t 0x2t
        0xe6t 0x2t
        0xe8t 0x2t
        0xeat 0x2t
        0xect 0x2t
        0xeet 0x2t
    .end array-data

    .line 56
    :array_1
    .array-data 0x4
        0x5t 0x4t 0x72t 0x67t
        0x5t 0x4t 0x6ct 0x6et
        0x5t 0x4t 0x65t 0x62t
        0x5t 0x4t 0x72t 0x66t
        0x5t 0x4t 0x63t 0x6dt
        0x5t 0x4t 0x64t 0x61t
        0x5t 0x4t 0x73t 0x65t
        0x5t 0x4t 0x75t 0x68t
        0x5t 0x4t 0x61t 0x62t
        0x5t 0x4t 0x72t 0x68t
        0x5t 0x4t 0x73t 0x72t
        0x5t 0x4t 0x74t 0x69t
        0x5t 0x4t 0x61t 0x76t
        0x5t 0x4t 0x6ft 0x72t
        0x5t 0x4t 0x68t 0x63t
        0x5t 0x4t 0x7at 0x63t
        0x5t 0x4t 0x6bt 0x73t
        0x5t 0x4t 0x74t 0x61t
        0x5t 0x4t 0x62t 0x67t
        0x5t 0x4t 0x62t 0x67t
        0x5t 0x4t 0x6bt 0x64t
        0x5t 0x4t 0x65t 0x73t
        0x5t 0x4t 0x6ft 0x6et
        0x5t 0x4t 0x69t 0x66t
        0x5t 0x4t 0x74t 0x6ct
        0x5t 0x4t 0x76t 0x6ct
        0x5t 0x4t 0x65t 0x65t
        0x5t 0x4t 0x75t 0x72t
        0x5t 0x4t 0x61t 0x75t
        0x5t 0x4t 0x79t 0x62t
        0x5t 0x4t 0x64t 0x6dt
        0x5t 0x4t 0x6ct 0x70t
        0x5t 0x4t 0x65t 0x64t
        0x5t 0x4t 0x69t 0x67t
        0x5t 0x4t 0x74t 0x70t
        0x5t 0x4t 0x75t 0x6ct
        0x5t 0x4t 0x65t 0x69t
        0x5t 0x4t 0x73t 0x69t
        0x5t 0x4t 0x6ct 0x61t
        0x5t 0x4t 0x74t 0x6dt
        0x3t 0x4t 0x79t 0x63t
        0x3t 0x4t 0x65t 0x67t
        0x3t 0x4t 0x6dt 0x61t
        0x5t 0x4t 0x67t 0x62t
        0x5t 0x4t 0x72t 0x74t
        0x5t 0x4t 0x6ft 0x66t
        0x3t 0x4t 0x65t 0x67t
        0x5t 0x4t 0x6ct 0x67t
        0x5t 0x4t 0x6dt 0x73t
        0x5t 0x4t 0x69t 0x73t
        0x5t 0x4t 0x6bt 0x6dt
        0x5t 0x4t 0x69t 0x6ct
        0x5t 0x4t 0x65t 0x6dt
        0x6t 0x4t 0x61t 0x63t
        0x6t 0x4t 0x6dt 0x70t
        0x6t 0x4t 0x73t 0x75t
        0x6t 0x4t 0x73t 0x75t
        0x6t 0x4t 0x73t 0x75t
        0x6t 0x4t 0x73t 0x75t
        0x6t 0x4t 0x73t 0x75t
        0x6t 0x4t 0x73t 0x75t
        0x3t 0x4t 0x73t 0x75t
        0x6t 0x4t 0x72t 0x70t
        0x6t 0x4t 0x69t 0x76t
        0x6t 0x4t 0x78t 0x6dt
        0x6t 0x4t 0x6dt 0x6at
        0x6t 0x4t 0x70t 0x67t
        0x6t 0x4t 0x62t 0x62t
        0x6t 0x4t 0x67t 0x61t
        0x6t 0x4t 0x79t 0x6bt
        0x6t 0x4t 0x67t 0x76t
        0x6t 0x4t 0x6dt 0x62t
        0x6t 0x4t 0x64t 0x67t
        0x6t 0x4t 0x73t 0x6dt
        0x6t 0x4t 0x6et 0x6bt
        0x6t 0x4t 0x63t 0x6ct
        0x6t 0x4t 0x63t 0x76t
        0x7t 0x4t 0x77t 0x63t
        0x7t 0x4t 0x77t 0x61t
        0x6t 0x4t 0x73t 0x62t
        0x6t 0x4t 0x69t 0x61t
        0x6t 0x4t 0x6dt 0x64t
        0x6t 0x4t 0x75t 0x63t
        0x6t 0x4t 0x6ft 0x64t
        0x6t 0x4t 0x74t 0x68t
        0x7t 0x4t 0x74t 0x74t
        0x6t 0x4t 0x63t 0x74t
        0x3t 0x4t 0x7at 0x61t
        0x3t 0x4t 0x7at 0x6bt
        0x3t 0x4t 0x74t 0x62t
        0x3t 0x4t 0x6et 0x69t
        0x3t 0x4t 0x6et 0x69t
        0x3t 0x4t 0x6bt 0x70t
        0x3t 0x4t 0x66t 0x61t
        0x3t 0x4t 0x6bt 0x6ct
        0x3t 0x4t 0x6dt 0x6dt
        0x3t 0x4t 0x62t 0x6ct
        0x3t 0x4t 0x6ft 0x6at
        0x3t 0x4t 0x79t 0x73t
        0x3t 0x4t 0x71t 0x69t
        0x3t 0x4t 0x77t 0x6bt
        0x3t 0x4t 0x61t 0x73t
        0x3t 0x4t 0x65t 0x79t
        0x3t 0x4t 0x6dt 0x6ft
        0x3t 0x4t 0x73t 0x70t
        0x3t 0x4t 0x65t 0x61t
        0x3t 0x4t 0x6ct 0x69t
        0x3t 0x4t 0x68t 0x62t
        0x3t 0x4t 0x61t 0x71t
        0x3t 0x4t 0x6et 0x6dt
        0x3t 0x4t 0x70t 0x6et
        0x3t 0x4t 0x65t 0x61t
        0x3t 0x4t 0x65t 0x61t
        0x3t 0x4t 0x72t 0x69t
        0x3t 0x4t 0x7at 0x75t
        0x3t 0x4t 0x6at 0x74t
        0x3t 0x4t 0x67t 0x6bt
        0x3t 0x4t 0x6dt 0x74t
        0x3t 0x4t 0x70t 0x6at
        0x3t 0x4t 0x70t 0x6at
        0x3t 0x4t 0x72t 0x6bt
        0x3t 0x4t 0x6et 0x76t
        0x3t 0x4t 0x6bt 0x68t
        0x3t 0x4t 0x6ft 0x6dt
        0x3t 0x4t 0x68t 0x6bt
        0x3t 0x4t 0x61t 0x6ct
        0x3t 0x4t 0x6et 0x63t
        0x3t 0x4t 0x6et 0x63t
        0x3t 0x4t 0x77t 0x74t
        0x3t 0x4t 0x70t 0x6bt
        0x3t 0x4t 0x64t 0x62t
        0x3t 0x4t 0x76t 0x6dt
        0x3t 0x4t 0x79t 0x6dt
        0x4t 0x4t 0x75t 0x61t
        0x3t 0x4t 0x64t 0x69t
        0x3t 0x4t 0x6ct 0x74t
        0x3t 0x4t 0x68t 0x70t
        0x3t 0x4t 0x68t 0x74t
        0x3t 0x4t 0x67t 0x73t
        0x3t 0x4t 0x6et 0x62t
        0x4t 0x4t 0x7at 0x6et
        0x4t 0x4t 0x70t 0x6dt
        0x4t 0x4t 0x75t 0x67t
        0x4t 0x4t 0x72t 0x6et
        0x4t 0x4t 0x67t 0x70t
        0x4t 0x4t 0x6ft 0x74t
        0x4t 0x4t 0x62t 0x73t
        0x4t 0x4t 0x75t 0x76t
        0x4t 0x4t 0x6at 0x66t
        0x4t 0x4t 0x66t 0x77t
        0x4t 0x4t 0x73t 0x61t
        0x4t 0x4t 0x69t 0x6bt
        0x4t 0x4t 0x63t 0x6et
        0x4t 0x4t 0x66t 0x70t
        0x4t 0x4t 0x6bt 0x63t
        0x4t 0x4t 0x73t 0x77t
        0x4t 0x4t 0x6dt 0x66t
        0x4t 0x4t 0x68t 0x6dt
        0x4t 0x4t 0x77t 0x70t
        0x4t 0x4t 0x76t 0x74t
        0x4t 0x4t 0x75t 0x6et
        0x1t 0x4t 0x67t 0x65t
        0x1t 0x4t 0x7at 0x64t
        0x1t 0x4t 0x61t 0x6dt
        0x1t 0x4t 0x6et 0x74t
        0x1t 0x4t 0x79t 0x6ct
        0x1t 0x4t 0x6dt 0x67t
        0x1t 0x4t 0x6et 0x73t
        0x1t 0x4t 0x72t 0x6dt
        0x1t 0x4t 0x6ct 0x6dt
        0x1t 0x4t 0x6et 0x67t
        0x1t 0x4t 0x69t 0x63t
        0x1t 0x4t 0x66t 0x62t
        0x1t 0x4t 0x65t 0x6et
        0x1t 0x4t 0x67t 0x74t
        0x1t 0x4t 0x6at 0x62t
        0x1t 0x4t 0x75t 0x6dt
        0x1t 0x4t 0x72t 0x6ct
        0x1t 0x4t 0x6ct 0x73t
        0x1t 0x4t 0x68t 0x67t
        0x1t 0x4t 0x67t 0x6et
        0x1t 0x4t 0x64t 0x74t
        0x1t 0x4t 0x66t 0x63t
        0x1t 0x4t 0x6dt 0x63t
        0x1t 0x4t 0x76t 0x63t
        0x1t 0x4t 0x74t 0x73t
        0x1t 0x4t 0x71t 0x67t
        0x1t 0x4t 0x61t 0x67t
        0x1t 0x4t 0x67t 0x63t
        0x1t 0x4t 0x64t 0x63t
        0x1t 0x4t 0x6ft 0x61t
        0x1t 0x4t 0x77t 0x67t
        0x1t 0x4t 0x63t 0x73t
        0x1t 0x4t 0x64t 0x73t
        0x1t 0x4t 0x77t 0x72t
        0x1t 0x4t 0x74t 0x65t
        0x1t 0x4t 0x6ft 0x73t
        0x1t 0x4t 0x6at 0x64t
        0x1t 0x4t 0x65t 0x6bt
        0x1t 0x4t 0x7at 0x74t
        0x1t 0x4t 0x67t 0x75t
        0x1t 0x4t 0x69t 0x62t
        0x1t 0x4t 0x7at 0x6dt
        0x1t 0x4t 0x6dt 0x7at
        0x1t 0x4t 0x67t 0x6dt
        0x1t 0x4t 0x65t 0x72t
        0x1t 0x4t 0x77t 0x7at
        0x1t 0x4t 0x61t 0x6et
        0x1t 0x4t 0x77t 0x6dt
        0x1t 0x4t 0x73t 0x6ct
        0x1t 0x4t 0x77t 0x62t
        0x1t 0x4t 0x7at 0x73t
        0x1t 0x4t 0x6dt 0x6bt
        0x1t 0x4t 0x61t 0x7at
        0x1t 0x4t 0x72t 0x65t
        0x6t 0x4t 0x7at 0x62t
        0x6t 0x4t 0x74t 0x67t
        0x6t 0x4t 0x76t 0x73t
        0x6t 0x4t 0x6et 0x68t
        0x6t 0x4t 0x69t 0x6et
        0x6t 0x4t 0x72t 0x63t
        0x6t 0x4t 0x61t 0x70t
        0x7t 0x4t 0x65t 0x70t
        0x7t 0x4t 0x72t 0x61t
        0x7t 0x4t 0x72t 0x62t
        0x7t 0x4t 0x6ct 0x63t
        0x7t 0x6t 0x6ft 0x63t
        0x7t 0x4t 0x65t 0x76t
        0x7t 0x4t 0x6ft 0x62t
        0x7t 0x4t 0x79t 0x67t
        0x7t 0x4t 0x63t 0x65t
        0x7t 0x4t 0x66t 0x67t
        0x7t 0x4t 0x79t 0x70t
        0x7t 0x4t 0x72t 0x73t
        0x7t 0x4t 0x79t 0x75t
        0x7t 0x4t 0x6bt 0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areaCodeForMcc(I)I
    .locals 4
    .parameter "mcc"

    .prologue
    .line 143
    sget-object v2, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->MCC_CODES:[S

    int-to-short v3, p0

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 144
    .local v1, index:I
    if-gez v1, :cond_0

    .line 145
    const/4 v2, 0x0

    .line 148
    :goto_0
    return v2

    .line 147
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->IND_CODES:[I

    aget v0, v2, v1

    .line 148
    .local v0, indCode:I
    and-int/lit8 v2, v0, 0xf

    goto :goto_0
.end method

.method public static changeLocalTimeForMcc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "strmcc"

    .prologue
    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeLocalTimeForMcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 163
    const/4 v4, 0x0

    .line 165
    .local v4, result:Z
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 187
    :goto_0
    return v6

    .line 167
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, mcc:I
    invoke-static {v2}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->areaCodeForMcc(I)I

    move-result v0

    .line 169
    .local v0, area:I
    invoke-static {v2}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, iso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->getTzInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, timezoneId:Ljava/lang/String;
    const-string v6, "persist.sys.timezone"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, prev_zoneId:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeLocalTimeForMcc timezoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 176
    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    const-string v6, "changeLocalTimeForMcc already changed"

    invoke-static {v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 178
    const/4 v6, 0x1

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {p0, v5}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->setTimezone(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    const/4 v4, 0x1

    .line 186
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeLocalTimeForMcc returns "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    move v6, v4

    .line 187
    goto :goto_0

    .line 183
    :cond_3
    const-string v6, "changeLocalTimeForMcc timezoneId=(null)"

    invoke-static {v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 5
    .parameter "mcc"

    .prologue
    .line 133
    sget-object v3, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->MCC_CODES:[S

    int-to-short v4, p0

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    .line 134
    .local v1, index:I
    if-gez v1, :cond_0

    .line 135
    const-string v3, ""

    .line 139
    :goto_0
    return-object v3

    .line 137
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->IND_CODES:[I

    aget v0, v3, v1

    .line 138
    .local v0, indCode:I
    const/4 v3, 0x2

    new-array v2, v3, [B

    const/4 v3, 0x0

    ushr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    ushr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 139
    .local v2, iso:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTzInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "area"
    .parameter "iso"

    .prologue
    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTzInfo area="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 193
    const/4 v5, 0x0

    .line 194
    .local v5, timezoneId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 196
    .local v2, infoparser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x1

    if-lt p0, v6, :cond_0

    const/16 v6, 0x8

    if-le p0, v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 221
    :goto_0
    return-object v6

    .line 198
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->UPDATED_USERTZ_PATH:[Ljava/lang/String;

    aget-object v7, v7, p0

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v1, infoFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 200
    new-instance v1, Ljava/io/File;

    .end local v1           #infoFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->BUILTIN_OEMTZ_PATH:[Ljava/lang/String;

    aget-object v7, v7, p0

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .restart local v1       #infoFile:Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    .line 205
    .local v3, inforeader:Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 206
    .end local v3           #inforeader:Ljava/io/FileReader;
    .local v4, inforeader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 207
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 208
    const-string v6, "area"

    invoke-static {v2, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 210
    invoke-static {v2, p0, p1}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->loadTzFile(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    .line 218
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    :goto_1
    move-object v3, v4

    .end local v4           #inforeader:Ljava/io/FileReader;
    .restart local v3       #inforeader:Ljava/io/FileReader;
    :cond_4
    :goto_2
    move-object v6, v5

    .line 221
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v6, "CALL_FRW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not found: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    const/4 v5, 0x0

    .line 218
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 214
    :catch_2
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v6, "CALL_FRW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while parsing \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    const/4 v5, 0x0

    .line 218
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_6
    throw v6

    :catch_3
    move-exception v7

    goto :goto_6

    .end local v3           #inforeader:Ljava/io/FileReader;
    .restart local v4       #inforeader:Ljava/io/FileReader;
    :catch_4
    move-exception v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #inforeader:Ljava/io/FileReader;
    .restart local v3       #inforeader:Ljava/io/FileReader;
    goto :goto_5

    .line 214
    .end local v3           #inforeader:Ljava/io/FileReader;
    .restart local v4       #inforeader:Ljava/io/FileReader;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #inforeader:Ljava/io/FileReader;
    .restart local v3       #inforeader:Ljava/io/FileReader;
    goto :goto_4

    .line 211
    .end local v3           #inforeader:Ljava/io/FileReader;
    .restart local v4       #inforeader:Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #inforeader:Ljava/io/FileReader;
    .restart local v3       #inforeader:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private static loadTzFile(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "parser"
    .parameter "area"
    .parameter "target"

    .prologue
    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadTzFile area="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 227
    const/4 v6, 0x0

    .line 228
    .local v6, timezoneId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 230
    .local v0, doExit:Z
    if-eqz p0, :cond_3

    .line 232
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 233
    .local v2, eventType:I
    :goto_0
    if-nez v0, :cond_3

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    .line 234
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 235
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, recType:Ljava/lang/String;
    const-string v7, "iso"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 237
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {p0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    const/4 v7, 0x0

    const-string v8, "zoneid"

    invoke-interface {p0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    const/4 v7, 0x0

    const-string v8, "multiple"

    invoke-interface {p0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, multiple:Ljava/lang/String;
    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 242
    const-string v7, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    const-string v7, "ril.gsm.tzfocus"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v6, 0x0

    .line 249
    :cond_0
    :goto_1
    const/4 v0, 0x1

    .line 252
    .end local v3           #multiple:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 253
    goto :goto_0

    .line 247
    .restart local v3       #multiple:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 254
    .end local v2           #eventType:I
    .end local v3           #multiple:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #recType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "CALL_FRW"

    const-string v8, "Got execption while getting perferred time zone."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_2
    return-object v6

    .line 256
    :catch_1
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/IOException;
    const-string v7, "CALL_FRW"

    const-string v8, "Got execption while getting perferred time zone."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 265
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeGlobalTimeZoneHelper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private static setTimezone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "zoneId"

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimezone zoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 155
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timezone set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->log(Ljava/lang/String;)V

    .line 158
    .end local v0           #alarm:Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method
