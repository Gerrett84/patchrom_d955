.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private dedicated:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 187
    const-string v0, "telephony.db"

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getDcmVersion()I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v3, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 176
    iput-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static getDcmVersion()I
    .locals 9

    .prologue
    .line 294
    const/4 v5, 0x0

    .line 295
    .local v5, version:I
    const/4 v2, 0x0

    .line 297
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/File;

    const-string v6, "/cust/config/dcm_settings.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 299
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/dcm_settings.xml"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    const/4 v3, 0x0

    .line 303
    .local v3, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 304
    .end local v3           #reader:Ljava/io/FileReader;
    .local v4, reader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 305
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 306
    const-string v6, "profiles"

    invoke-static {v2, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 308
    const/4 v6, 0x0

    const-string v7, "version"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v5

    .line 314
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 316
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    :cond_2
    :goto_0
    shl-int/lit8 v6, v5, 0x8

    return v6

    .line 314
    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 315
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    .line 310
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "TelephonyProvider"

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

    .line 314
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "TelephonyProvider"

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

    .line 314
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_4
    throw v6

    :catch_5
    move-exception v7

    goto :goto_4

    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_3

    .line 311
    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_2

    .line 309
    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1001
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1004
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1005
    const-string v3, "apn"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1006
    const-string v2, "profile_type"

    const-string v3, "apn"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :goto_0
    const-string v2, "mcc"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    const-string v3, "mnc"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1021
    const-string v5, "carrier"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1022
    const-string v6, "apn"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1023
    const-string v7, "extraid"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1025
    if-eqz v7, :cond_d

    .line 1026
    const-string v8, "extraid"

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_1
    const-string v8, "numeric"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v4, "mcc"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v4, "mnc"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v4, "name"

    const-string v8, "carrier"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v4, "apn"

    const-string v8, "apn"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v4, "user"

    const-string v8, "user"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v4, "server"

    const-string v8, "server"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v4, "password"

    const-string v8, "password"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v4, "proxy"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1044
    if-eqz v4, :cond_0

    .line 1045
    const-string v8, "proxy"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_0
    const-string v4, "port"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1048
    if-eqz v4, :cond_1

    .line 1049
    const-string v8, "port"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_1
    const-string v4, "mmsproxy"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1052
    if-eqz v4, :cond_2

    .line 1053
    const-string v8, "mmsproxy"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :cond_2
    const-string v4, "mmsport"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    if-eqz v4, :cond_3

    .line 1057
    const-string v8, "mmsport"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_3
    const-string v4, "mmsc"

    const-string v8, "mmsc"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v4, "type"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1061
    if-eqz v4, :cond_4

    .line 1062
    const-string v8, "type"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_4
    const-string v8, "authtype"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1066
    if-eqz v8, :cond_5

    .line 1067
    const-string v9, "authtype"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    :cond_5
    const-string v8, "protocol"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1071
    if-eqz v8, :cond_6

    .line 1072
    const-string v9, "protocol"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_6
    const-string v8, "roaming_protocol"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1076
    if-eqz v8, :cond_7

    .line 1077
    const-string v9, "roaming_protocol"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    :cond_7
    const-string v8, "carrier_enabled"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1081
    if-eqz v8, :cond_8

    .line 1082
    const-string v9, "carrier_enabled"

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1085
    :cond_8
    const-string v8, "bearer"

    invoke-interface {p1, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1086
    if-eqz v8, :cond_9

    .line 1087
    const-string v9, "bearer"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    :cond_9
    const-string v8, "TelephonyProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "-"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraid("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " --- title("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") apn("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") type("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v2, "defaultflag"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1095
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 1096
    :cond_a
    const-string v2, "defaultsetting"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1101
    :goto_2
    const-string v2, "usercreatesetting"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    .line 1104
    const-string v2, "dedicated"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    move-object v0, v1

    .line 1106
    :cond_b
    return-object v0

    .line 1007
    :cond_c
    const-string v3, "nai"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1008
    const-string v2, "profile_type"

    const-string v3, "nai"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    :cond_d
    const-string v8, "extraid"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1098
    :cond_e
    const-string v3, "defaultsetting"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 15
    .parameter "context"

    .prologue
    .line 200
    const/high16 v11, 0x7

    .line 201
    .local v11, version:I
    const/4 v7, 0x0

    .line 202
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$000()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v6, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "etc/apns-conf.xml"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v0, confFile:Ljava/io/File;
    const-string v12, "TelephonyProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is_mpdn ?? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$200()Z

    move-result v12

    if-nez v12, :cond_0

    .line 208
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "etc/apns_kr_mpdn.xml"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .restart local v0       #confFile:Ljava/io/File;
    :cond_0
    const/4 v2, 0x0

    .line 215
    .local v2, confreader:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 217
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v12

    if-nez v12, :cond_2

    .line 219
    :cond_1
    new-instance v6, Ljava/io/File;

    .end local v6           #file:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "etc/apns-conf.xml"

    invoke-direct {v6, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .restart local v6       #file:Ljava/io/File;
    :cond_2
    const/4 v9, 0x0

    .line 223
    .local v9, reader:Ljava/io/FileReader;
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 224
    .end local v9           #reader:Ljava/io/FileReader;
    .local v10, reader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 225
    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 226
    const-string v12, "apns"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 227
    const/4 v12, 0x0

    const-string v13, "version"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 228
    .local v8, publicversion:I
    or-int/2addr v11, v8

    .line 231
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$200()Z

    move-result v12

    if-nez v12, :cond_5

    .line 233
    :cond_4
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 234
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 235
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 236
    const-string v12, "apns"

    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 239
    const/4 v12, 0x0

    const-string v13, "version"

    invoke-interface {v1, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 241
    .local v4, confversion:I
    const-string v12, "TelephonyProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[getVersion][before] publicversion : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", confversion : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move v8, v4

    .line 243
    const/high16 v11, 0x7

    .line 244
    or-int/2addr v11, v8

    .line 245
    const-string v12, "TelephonyProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[getVersion][after] publicversion : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", confversion : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-object v2, v3

    .line 254
    .end local v3           #confreader:Ljava/io/FileReader;
    .end local v4           #confversion:I
    .restart local v2       #confreader:Ljava/io/FileReader;
    :cond_5
    if-eqz v10, :cond_6

    .line 255
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 262
    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    .line 263
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    move-object v9, v10

    .line 269
    .end local v8           #publicversion:I
    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    :cond_8
    :goto_1
    return v11

    .line 266
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v8       #publicversion:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :catch_0
    move-exception v12

    move-object v9, v10

    .line 268
    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    goto :goto_1

    .line 248
    .end local v8           #publicversion:I
    :catch_1
    move-exception v5

    .line 249
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v12, "TelephonyProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File not found: \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 254
    if-eqz v9, :cond_9

    .line 255
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 262
    :cond_9
    :goto_3
    if-eqz v2, :cond_8

    .line 263
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 266
    :catch_2
    move-exception v12

    goto :goto_1

    .line 250
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 251
    .local v5, e:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    const-string v12, "TelephonyProvider"

    const-string v13, "Can\'t get version of APN database"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 254
    if-eqz v9, :cond_a

    .line 255
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 262
    :cond_a
    :goto_5
    if-eqz v2, :cond_8

    .line 263
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    .line 266
    :catch_4
    move-exception v12

    goto :goto_1

    .line 253
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 254
    :goto_6
    if-eqz v9, :cond_b

    .line 255
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 262
    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    .line 263
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 266
    :cond_c
    :goto_8
    throw v12

    .line 258
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v8       #publicversion:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :catch_5
    move-exception v12

    goto :goto_0

    .end local v8           #publicversion:I
    .end local v10           #reader:Ljava/io/FileReader;
    .local v5, e:Ljava/io/FileNotFoundException;
    .restart local v9       #reader:Ljava/io/FileReader;
    :catch_6
    move-exception v12

    goto :goto_3

    .local v5, e:Ljava/lang/Exception;
    :catch_7
    move-exception v12

    goto :goto_5

    .end local v5           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v13

    goto :goto_7

    .line 266
    :catch_9
    move-exception v13

    goto :goto_8

    .line 253
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v10       #reader:Ljava/io/FileReader;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    goto :goto_6

    .end local v2           #confreader:Ljava/io/FileReader;
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v8       #publicversion:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_6

    .line 250
    .end local v8           #publicversion:I
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v10       #reader:Ljava/io/FileReader;
    :catch_a
    move-exception v5

    move-object v9, v10

    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #confreader:Ljava/io/FileReader;
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v8       #publicversion:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :catch_b
    move-exception v5

    move-object v9, v10

    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 248
    .end local v8           #publicversion:I
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v10       #reader:Ljava/io/FileReader;
    :catch_c
    move-exception v5

    move-object v9, v10

    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    goto :goto_2

    .end local v2           #confreader:Ljava/io/FileReader;
    .end local v9           #reader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v8       #publicversion:I
    .restart local v10       #reader:Ljava/io/FileReader;
    :catch_d
    move-exception v5

    move-object v9, v10

    .end local v10           #reader:Ljava/io/FileReader;
    .restart local v9       #reader:Ljava/io/FileReader;
    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 384
    const-string v11, "TelephonyProvider"

    const-string v12, "DatabaseHelper.initDatabase(): Intialize carriers TABLE"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v11, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 386
    .local v10, r:Landroid/content/res/Resources;
    const/high16 v11, 0x10f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 387
    .local v8, parser:Landroid/content/res/XmlResourceParser;
    const/4 v9, -0x1

    .line 389
    .local v9, publicversion:I
    :try_start_0
    const-string v11, "apns"

    invoke-static {v8, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 390
    const/4 v11, 0x0

    const-string v12, "version"

    invoke-interface {v8, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 391
    invoke-direct {p0, p1, v8}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 399
    :goto_0
    const/4 v1, 0x0

    .line 400
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$000()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, confFile:Ljava/io/File;
    const-string v11, "TelephonyProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "is_mpdn ?? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$200()Z

    move-result v11

    if-nez v11, :cond_0

    .line 404
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "etc/apns_kr_mpdn.xml"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 407
    .restart local v0       #confFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_3

    .line 410
    :cond_1
    const-string v11, "TRF"

    const-string v12, "ro.build.target_operator"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "ATT"

    const-string v12, "ro.build.target_operator"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 411
    :cond_2
    const/4 v7, 0x0

    .line 412
    .local v7, outputStream:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 413
    .local v6, fileTest:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    .end local v6           #fileTest:Ljava/io/File;
    const-string v11, "/persist-lg/lgdrm/new-apns-conf.xml"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v6       #fileTest:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    .line 416
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "etc/apns-conf.xml"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    .restart local v0       #confFile:Ljava/io/File;
    const-string v11, "TelephonyProvider"

    const-string v12, "[backupAPN] Get original XML file "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v6           #fileTest:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/BufferedWriter;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 429
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 430
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 431
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 432
    const-string v11, "apns"

    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 435
    const/4 v11, 0x0

    const-string v12, "version"

    invoke-interface {v1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 439
    .local v4, confversion:I
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$200()Z

    move-result v11

    if-nez v11, :cond_6

    .line 441
    :cond_5
    const-string v11, "TelephonyProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[initDatabase][before] publicversion : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", confversion : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move v9, v4

    .line 443
    const-string v11, "TelephonyProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[initDatabase][after] publicversion : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", confversion : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 466
    if-eqz v3, :cond_7

    .line 467
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object v2, v3

    .line 471
    .end local v3           #confreader:Ljava/io/FileReader;
    .end local v4           #confversion:I
    .restart local v2       #confreader:Ljava/io/FileReader;
    :cond_8
    :goto_2
    return-void

    .line 392
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #confreader:Ljava/io/FileReader;
    :catch_0
    move-exception v5

    .line 393
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v11, "TelephonyProvider"

    const-string v12, "Got exception while loading APN database."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    throw v11

    .line 419
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #fileTest:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/BufferedWriter;
    :cond_9
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    const-string v11, "/persist-lg/lgdrm/new-apns-conf.xml"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v0       #confFile:Ljava/io/File;
    const-string v11, "TelephonyProvider"

    const-string v12, "[backupAPN] Get /persist-lg/lgdrm/new-apns-conf.xml file "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 423
    .end local v6           #fileTest:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/BufferedWriter;
    :cond_a
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    const-string v12, "etc/apns-conf.xml"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0       #confFile:Ljava/io/File;
    goto/16 :goto_1

    .line 469
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v4       #confversion:I
    :catch_1
    move-exception v11

    move-object v2, v3

    .line 470
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .line 459
    .end local v4           #confversion:I
    :catch_2
    move-exception v11

    .line 466
    :goto_3
    if-eqz v2, :cond_8

    .line 467
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 469
    :catch_3
    move-exception v11

    goto :goto_2

    .line 462
    :catch_4
    move-exception v5

    .line 463
    .restart local v5       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    const-string v11, "TelephonyProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while parsing \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 466
    if-eqz v2, :cond_8

    .line 467
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 469
    :catch_5
    move-exception v11

    goto :goto_2

    .line 465
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    .line 466
    :goto_5
    if-eqz v2, :cond_b

    .line 467
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 469
    :cond_b
    :goto_6
    throw v11

    :catch_6
    move-exception v12

    goto :goto_6

    .line 465
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catchall_2
    move-exception v11

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_5

    .line 462
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_7
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 459
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_8
    move-exception v11

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private initDcmDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 34
    .parameter "db"

    .prologue
    .line 475
    const-string v31, "TelephonyProvider"

    const-string v32, "DatabaseHelper.initDcmDatabase(): Intialize dcm_settings TABLE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v16, 0x0

    .line 479
    .local v16, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v31

    const-string v32, "/cust/config/dcm_settings.xml"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v3, confFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_0

    .line 481
    new-instance v3, Ljava/io/File;

    .end local v3           #confFile:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v31

    const-string v32, "etc/dcm_settings.xml"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    .restart local v3       #confFile:Ljava/io/File;
    :cond_0
    const/4 v4, 0x0

    .line 485
    .local v4, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 486
    .end local v4           #confreader:Ljava/io/FileReader;
    .local v5, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 487
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 488
    const-string v31, "profiles"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 492
    :goto_0
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 495
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 496
    .local v17, prof_type:Ljava/lang/String;
    const-string v31, "profile"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v31

    if-nez v31, :cond_3

    .line 663
    if-eqz v5, :cond_1

    .line 664
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    move-object v4, v5

    .line 668
    .end local v5           #confreader:Ljava/io/FileReader;
    .end local v17           #prof_type:Ljava/lang/String;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :cond_2
    :goto_1
    return-void

    .line 500
    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v17       #prof_type:Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v11, map:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 502
    .local v12, mcc:Ljava/lang/String;
    const/4 v13, 0x0

    .line 503
    .local v13, mnc:Ljava/lang/String;
    const/4 v15, 0x0

    .line 504
    .local v15, numeric:Ljava/lang/String;
    const/4 v8, 0x0

    .line 505
    .local v8, extraid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 506
    .local v9, fastdormancy_param:Ljava/lang/String;
    const/4 v10, 0x0

    .line 507
    .local v10, ipmtu:Ljava/lang/String;
    const/4 v14, 0x0

    .line 509
    .local v14, mpdp:Ljava/lang/String;
    const/16 v18, 0x0

    .line 510
    .local v18, sDefault:Ljava/lang/String;
    const/16 v29, 0x0

    .line 511
    .local v29, sLte:Ljava/lang/String;
    const/16 v30, 0x0

    .line 512
    .local v30, sUmts:Ljava/lang/String;
    const/16 v26, 0x0

    .line 513
    .local v26, sHspa:Ljava/lang/String;
    const/16 v28, 0x0

    .line 514
    .local v28, sHsupa:Ljava/lang/String;
    const/16 v25, 0x0

    .line 515
    .local v25, sHsdpa:Ljava/lang/String;
    const/16 v27, 0x0

    .line 516
    .local v27, sHspap:Ljava/lang/String;
    const/16 v19, 0x0

    .line 517
    .local v19, sEdge:Ljava/lang/String;
    const/16 v24, 0x0

    .line 518
    .local v24, sGprs:Ljava/lang/String;
    const/16 v22, 0x0

    .line 519
    .local v22, sEvdo_b:Ljava/lang/String;
    const/16 v20, 0x0

    .line 520
    .local v20, sEhrpd:Ljava/lang/String;
    const/16 v21, 0x0

    .line 521
    .local v21, sEvdo:Ljava/lang/String;
    const/16 v23, 0x0

    .line 523
    .local v23, sGpass:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 525
    .local v7, eventType:I
    :goto_2
    const/16 v31, 0x1

    move/from16 v0, v31

    if-eq v7, v0, :cond_8

    .line 527
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v7, v0, :cond_7

    .line 529
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "siminfo"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 531
    const/16 v31, 0x0

    const-string v32, "mcc"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 532
    const/16 v31, 0x0

    const-string v32, "mnc"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 533
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 534
    const/16 v31, 0x0

    const-string v32, "extraid"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 536
    :cond_4
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "settings"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 538
    const/16 v31, 0x0

    const-string v32, "fastdormancy_param"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 539
    const/16 v31, 0x0

    const-string v32, "ipmtu"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 540
    const/16 v31, 0x0

    const-string v32, "mpdp"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 543
    :cond_5
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "windowSize"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 545
    const-string v31, "TelephonyProvider"

    const-string v32, "[TelephonyProvider.java]"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/16 v31, 0x0

    const-string v32, "windefault"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 547
    const/16 v31, 0x0

    const-string v32, "lte"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 548
    const/16 v31, 0x0

    const-string v32, "umts"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 549
    const/16 v31, 0x0

    const-string v32, "hspa"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 550
    const/16 v31, 0x0

    const-string v32, "hsupa"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 551
    const/16 v31, 0x0

    const-string v32, "hsdpa"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 552
    const/16 v31, 0x0

    const-string v32, "hspap"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 553
    const/16 v31, 0x0

    const-string v32, "edge"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 554
    const/16 v31, 0x0

    const-string v32, "gprs"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 555
    const/16 v31, 0x0

    const-string v32, "evdo_b"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 556
    const/16 v31, 0x0

    const-string v32, "ehrpd"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 557
    const/16 v31, 0x0

    const-string v32, "evdo"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 558
    const/16 v31, 0x0

    const-string v32, "gpass"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 569
    :cond_6
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto/16 :goto_2

    .line 562
    :cond_7
    const/16 v31, 0x3

    move/from16 v0, v31

    if-ne v7, v0, :cond_6

    .line 564
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "profile"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 572
    :cond_8
    const-string v31, "numeric"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-eqz v8, :cond_17

    .line 575
    const-string v31, "extraid"

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_3
    if-eqz v9, :cond_9

    .line 581
    const-string v31, "fastdormancy"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_9
    if-eqz v10, :cond_18

    const-string v31, "0"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 585
    const-string v31, "ipmtu"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    :goto_4
    if-eqz v14, :cond_1a

    const-string v31, "1"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1a

    .line 591
    const-string v31, "mpdp"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    :goto_5
    if-eqz v18, :cond_a

    .line 597
    const-string v31, "windefault"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_a
    if-eqz v29, :cond_b

    .line 600
    const-string v31, "lte"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_b
    if-eqz v30, :cond_c

    .line 603
    const-string v31, "umts"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_c
    if-eqz v26, :cond_d

    .line 606
    const-string v31, "hspa"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_d
    if-eqz v28, :cond_e

    .line 609
    const-string v31, "hsupa"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_e
    if-eqz v25, :cond_f

    .line 612
    const-string v31, "hsdpa"

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_f
    if-eqz v27, :cond_10

    .line 615
    const-string v31, "hspap"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_10
    if-eqz v19, :cond_11

    .line 618
    const-string v31, "edge"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_11
    if-eqz v24, :cond_12

    .line 621
    const-string v31, "gprs"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_12
    if-eqz v22, :cond_13

    .line 624
    const-string v31, "evdo_b"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_13
    if-eqz v20, :cond_14

    .line 627
    const-string v31, "ehrpd"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_14
    if-eqz v21, :cond_15

    .line 630
    const-string v31, "evdo"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_15
    if-eqz v23, :cond_16

    .line 633
    const-string v31, "gpass"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_16
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " extraid("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") : FD Setting("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "), ipmtu("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "), mpdp("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : windefault : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : lte : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : umts : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hspa : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hsupa : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hsdpa : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : hspap : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : edge : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : gprs : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : evdo_b : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : ehrpd : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : evdo : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TCP windowSize : gpass : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v31, "dcm_settings"

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 657
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v17           #prof_type:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 658
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_4
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "File not found: \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 663
    if-eqz v4, :cond_2

    .line 664
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 666
    :catch_1
    move-exception v31

    goto/16 :goto_1

    .line 577
    .end local v4           #confreader:Ljava/io/FileReader;
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v7       #eventType:I
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v9       #fastdormancy_param:Ljava/lang/String;
    .restart local v10       #ipmtu:Ljava/lang/String;
    .restart local v11       #map:Landroid/content/ContentValues;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v13       #mnc:Ljava/lang/String;
    .restart local v14       #mpdp:Ljava/lang/String;
    .restart local v15       #numeric:Ljava/lang/String;
    .restart local v17       #prof_type:Ljava/lang/String;
    .restart local v18       #sDefault:Ljava/lang/String;
    .restart local v19       #sEdge:Ljava/lang/String;
    .restart local v20       #sEhrpd:Ljava/lang/String;
    .restart local v21       #sEvdo:Ljava/lang/String;
    .restart local v22       #sEvdo_b:Ljava/lang/String;
    .restart local v23       #sGpass:Ljava/lang/String;
    .restart local v24       #sGprs:Ljava/lang/String;
    .restart local v25       #sHsdpa:Ljava/lang/String;
    .restart local v26       #sHspa:Ljava/lang/String;
    .restart local v27       #sHspap:Ljava/lang/String;
    .restart local v28       #sHsupa:Ljava/lang/String;
    .restart local v29       #sLte:Ljava/lang/String;
    .restart local v30       #sUmts:Ljava/lang/String;
    :cond_17
    :try_start_6
    const-string v31, "extraid"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 659
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v17           #prof_type:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v4, v5

    .line 660
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    .local v6, e:Ljava/lang/Exception;
    :goto_7
    :try_start_7
    const-string v31, "TelephonyProvider"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Exception while parsing \'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 663
    if-eqz v4, :cond_2

    .line 664
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 666
    :catch_3
    move-exception v31

    goto/16 :goto_1

    .line 587
    .end local v4           #confreader:Ljava/io/FileReader;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v7       #eventType:I
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v9       #fastdormancy_param:Ljava/lang/String;
    .restart local v10       #ipmtu:Ljava/lang/String;
    .restart local v11       #map:Landroid/content/ContentValues;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v13       #mnc:Ljava/lang/String;
    .restart local v14       #mpdp:Ljava/lang/String;
    .restart local v15       #numeric:Ljava/lang/String;
    .restart local v17       #prof_type:Ljava/lang/String;
    .restart local v18       #sDefault:Ljava/lang/String;
    .restart local v19       #sEdge:Ljava/lang/String;
    .restart local v20       #sEhrpd:Ljava/lang/String;
    .restart local v21       #sEvdo:Ljava/lang/String;
    .restart local v22       #sEvdo_b:Ljava/lang/String;
    .restart local v23       #sGpass:Ljava/lang/String;
    .restart local v24       #sGprs:Ljava/lang/String;
    .restart local v25       #sHsdpa:Ljava/lang/String;
    .restart local v26       #sHspa:Ljava/lang/String;
    .restart local v27       #sHspap:Ljava/lang/String;
    .restart local v28       #sHsupa:Ljava/lang/String;
    .restart local v29       #sLte:Ljava/lang/String;
    .restart local v30       #sUmts:Ljava/lang/String;
    :cond_18
    :try_start_9
    const-string v31, "ipmtu"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 662
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v17           #prof_type:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catchall_0
    move-exception v31

    move-object v4, v5

    .line 663
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    :goto_8
    if-eqz v4, :cond_19

    .line 664
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 666
    :cond_19
    :goto_9
    throw v31

    .line 593
    .end local v4           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    .restart local v7       #eventType:I
    .restart local v8       #extraid:Ljava/lang/String;
    .restart local v9       #fastdormancy_param:Ljava/lang/String;
    .restart local v10       #ipmtu:Ljava/lang/String;
    .restart local v11       #map:Landroid/content/ContentValues;
    .restart local v12       #mcc:Ljava/lang/String;
    .restart local v13       #mnc:Ljava/lang/String;
    .restart local v14       #mpdp:Ljava/lang/String;
    .restart local v15       #numeric:Ljava/lang/String;
    .restart local v17       #prof_type:Ljava/lang/String;
    .restart local v18       #sDefault:Ljava/lang/String;
    .restart local v19       #sEdge:Ljava/lang/String;
    .restart local v20       #sEhrpd:Ljava/lang/String;
    .restart local v21       #sEvdo:Ljava/lang/String;
    .restart local v22       #sEvdo_b:Ljava/lang/String;
    .restart local v23       #sGpass:Ljava/lang/String;
    .restart local v24       #sGprs:Ljava/lang/String;
    .restart local v25       #sHsdpa:Ljava/lang/String;
    .restart local v26       #sHspa:Ljava/lang/String;
    .restart local v27       #sHspap:Ljava/lang/String;
    .restart local v28       #sHsupa:Ljava/lang/String;
    .restart local v29       #sLte:Ljava/lang/String;
    .restart local v30       #sUmts:Ljava/lang/String;
    :cond_1a
    :try_start_b
    const-string v31, "mpdp"

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_5

    .line 666
    .end local v7           #eventType:I
    .end local v8           #extraid:Ljava/lang/String;
    .end local v9           #fastdormancy_param:Ljava/lang/String;
    .end local v10           #ipmtu:Ljava/lang/String;
    .end local v11           #map:Landroid/content/ContentValues;
    .end local v12           #mcc:Ljava/lang/String;
    .end local v13           #mnc:Ljava/lang/String;
    .end local v14           #mpdp:Ljava/lang/String;
    .end local v15           #numeric:Ljava/lang/String;
    .end local v18           #sDefault:Ljava/lang/String;
    .end local v19           #sEdge:Ljava/lang/String;
    .end local v20           #sEhrpd:Ljava/lang/String;
    .end local v21           #sEvdo:Ljava/lang/String;
    .end local v22           #sEvdo_b:Ljava/lang/String;
    .end local v23           #sGpass:Ljava/lang/String;
    .end local v24           #sGprs:Ljava/lang/String;
    .end local v25           #sHsdpa:Ljava/lang/String;
    .end local v26           #sHspa:Ljava/lang/String;
    .end local v27           #sHspap:Ljava/lang/String;
    .end local v28           #sHsupa:Ljava/lang/String;
    .end local v29           #sLte:Ljava/lang/String;
    .end local v30           #sUmts:Ljava/lang/String;
    :catch_4
    move-exception v31

    move-object v4, v5

    .line 667
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v4       #confreader:Ljava/io/FileReader;
    goto/16 :goto_1

    .line 666
    .end local v17           #prof_type:Ljava/lang/String;
    :catch_5
    move-exception v32

    goto :goto_9

    .line 662
    :catchall_1
    move-exception v31

    goto :goto_8

    .line 659
    :catch_6
    move-exception v6

    goto :goto_7

    .line 657
    :catch_7
    move-exception v6

    goto/16 :goto_6
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1209
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "numeric"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraid"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->dedicated:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Telephony$Carriers;->isLoadableAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    :goto_0
    return-void

    .line 1215
    :cond_0
    const-string v0, "authtype"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1216
    const-string v0, "authtype"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    :cond_1
    const-string v0, "protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1219
    const-string v0, "protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_2
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1222
    const-string v0, "roaming_protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_3
    const-string v0, "carrier_enabled"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1225
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1227
    :cond_4
    const-string v0, "bearer"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1228
    const-string v0, "bearer"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    :cond_5
    const-string v0, "proxy"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1232
    const-string v0, "proxy"

    const-string v1, "proxy"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_6
    const-string v0, "mmsproxy"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1235
    const-string v0, "mmsproxy"

    const-string v1, "mmsproxy"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_7
    const-string v0, "mmsc"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1238
    const-string v0, "mmsc"

    const-string v1, "mmsc"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    :cond_8
    const-string v0, "usercreatesetting"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1242
    const-string v0, "persist.lg.data.autoprof.msim"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1243
    const-string v0, "sim_slot"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    :cond_9
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1117
    if-eqz p2, :cond_0

    .line 1120
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1123
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1124
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_1

    .line 1126
    const-string v1, "carriers"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    :try_start_1
    const-string v1, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1146
    :cond_0
    :goto_1
    return-void

    .line 1132
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1136
    :catch_1
    move-exception v0

    .line 1137
    :try_start_3
    const-string v1, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1139
    :catch_2
    move-exception v0

    .line 1140
    :try_start_4
    const-string v1, "TelephonyProvider"

    const-string v2, "Got SQLException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1179
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1203
    :cond_0
    :goto_0
    return-object p0

    .line 1182
    :cond_1
    const-string v0, "TelephonyProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trimV4AddrZeros : addr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1186
    if-nez v0, :cond_2

    .line 1187
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->trimV4IpZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1190
    :cond_2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1191
    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1193
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1196
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->trimV4IpZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_0

    .line 1201
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimV4AddrZeros: targetHost("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), trimIp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1193
    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static trimV4IpZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 1159
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1175
    :cond_0
    :goto_0
    return-object p0

    .line 1160
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1162
    array-length v0, v1

    if-ne v0, v5, :cond_0

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1165
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    .line 1167
    :try_start_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 1168
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    if-ge v0, v4, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1174
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 323
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,profile_type TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,extraid TEXT,defaultsetting INTEGER,usercreatesetting INTEGER,sim_slot INTEGER,bearer INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    const-string v0, "CREATE TABLE dcm_settings(_id INTEGER PRIMARY KEY,numeric TEXT,extraid TEXT,fastdormancy TEXT,ipmtu INTEGER,mpdp INTEGER,windefault TEXT,lte TEXT,umts TEXT,hspa TEXT,hsupa TEXT,hsdpa TEXT,hspap TEXT,edge TEXT,gprs TEXT,evdo_b TEXT,ehrpd TEXT,evdo TEXT,gpass TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDcmDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 379
    const-string v0, "TelephonyProvider"

    const-string v1, "DatabaseHelper.onCreate(): carriers and dcm_settings TABLEs are created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 943
    const/4 v1, 0x0

    .line 944
    .local v1, project:Ljava/lang/String;
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 949
    if-eqz v1, :cond_1

    const-string v2, "LG-P930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    const v2, 0x70008

    if-ge p3, v2, :cond_0

    .line 953
    const-string v2, "TelephonyProvider"

    const-string v3, "[Minsik]_onDowngrade_7 << 16 | 8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v2, "DELETE FROM carriers WHERE name=\'AT&T Phone\' AND numeric =\'310410\' AND apn=\'phone\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 956
    const-string v2, "DELETE FROM carriers WHERE name=\'ATT Broadband\' AND numeric =\'310410\' AND apn=\'broadband\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 957
    const-string v2, "DELETE FROM carriers WHERE name=\'LGE DEFAULT\' AND numeric =\'45000\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    const-string v2, "DELETE FROM carriers WHERE name=\'LGE MMS\' AND numeric =\'45000\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 960
    const-string v2, "TelephonyProvider"

    const-string v3, "[Minsik]_onDowngrade_PHONE APN was DELETED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 963
    const p3, 0x70007

    .line 964
    const p2, 0x70006

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    const-string v2, "ATT"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 971
    const-string v2, "TelephonyProvider"

    const-string v3, "OnDowngrade for E980_7 << 16 | 8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :try_start_0
    const-string v2, "DELETE FROM carriers WHERE name=\'ATT Phone\' AND numeric =\'310410\' AND apn=\'phone\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 974
    const-string v2, "DELETE FROM carriers WHERE name=\'AT&T PTA\' AND numeric =\'310410\' AND apn=\'pta\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 975
    const-string v2, "DELETE FROM carriers WHERE name=\'ATT Broadband\' AND numeric =\'310410\' AND apn=\'broadband\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 976
    const-string v2, "DELETE FROM carriers WHERE name=\'LGE DEFAULT\' AND numeric =\'45000\' AND apn=\'qe\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 977
    const-string v2, "DELETE FROM carriers WHERE name=\'LGE entitlement\' AND numeric =\'45000\' AND apn=\'tbt\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const-string v2, "DELETE FROM carriers WHERE name=\'LGE 3G 2G ipv6 only\' AND numeric =\'45000\' AND apn=\'iv6\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 979
    const-string v2, "DELETE FROM carriers WHERE name=\'LGE LTE ipv4v6\' AND numeric =\'45000\' AND apn=\'lte46\';"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :goto_1
    const-string v2, "TelephonyProvider"

    const-string v3, "OnDowngrade_ATT_PTA_Phone_APN was DELETED on E970"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TelephonyProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DatabaseHelper.onUpgrade(): Fail to Delete PTA and Phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 990
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t downgrade database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const v8, 0xff00

    const v7, -0xff01

    .line 674
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): old version("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), new version ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    and-int v4, p2, v8

    shr-int/lit8 v1, v4, 0x8

    .line 677
    .local v1, dcmOldVersion:I
    and-int v4, p3, v8

    shr-int/lit8 v0, v4, 0x8

    .line 679
    .local v0, dcmNewVersion:I
    and-int/2addr p2, v7

    .line 680
    and-int/2addr p3, v7

    .line 682
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Version(APN DB Schema) Checking, old version("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, p2, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), new version ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, p3, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Version(APN XML) Checking, old version("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, p2, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), new version ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, p3, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Version(DCM) Checking, old version("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), new version ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const v4, 0x50006

    if-ge p2, v4, :cond_0

    .line 687
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Adding authtype field, default value is -1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v4, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    const p2, 0x50006

    .line 705
    :cond_0
    const v4, 0x60006

    if-ge p2, v4, :cond_1

    .line 706
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Adding protocol,roaming_protocol fields, default value is IP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v4, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v4, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    const p2, 0x60006

    .line 714
    :cond_1
    const v4, 0x70006

    if-ge p2, v4, :cond_2

    .line 715
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Adding boolean, bearer fields, default values are 1 and 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v4, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 719
    const-string v4, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 724
    :try_start_0
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to add profile_type field, default value is \'\'"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v4, "ALTER TABLE carriers ADD COLUMN profile_type TEXT DEFAULT \'\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    const p2, 0x70006

    .line 742
    :cond_2
    :try_start_1
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to add defaultsetting field, there is no default value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v4, "ALTER TABLE carriers ADD COLUMN defaultsetting INTEGER DEFAULT 0;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 752
    :goto_1
    :try_start_2
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to add extraid field, default value is \'\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v4, "ALTER TABLE carriers ADD COLUMN extraid TEXT DEFAULT \'\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 762
    :goto_2
    :try_start_3
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to add defaultsetting field, default value is 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v4, "ALTER TABLE carriers ADD COLUMN usercreatesetting INTEGER DEFAULT 0;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 771
    :goto_3
    :try_start_4
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to add simslot field, default value is 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v4, "ALTER TABLE carriers ADD COLUMN sim_slot INTEGER DEFAULT 0;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 779
    :goto_4
    if-le p3, p2, :cond_6

    .line 781
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): START Update Carrier(APN) Table"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v3, 0x0

    .line 785
    .local v3, result:I
    :try_start_5
    const-string v4, "carriers"

    const-string v5, "usercreatesetting != \'1\'"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 786
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entries are removed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 788
    const-string v4, "persist.lg.data.autoprof.msim"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 789
    const-string v4, "carriers"

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$400()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 802
    .end local v3           #result:I
    :cond_3
    :goto_5
    if-le v0, v1, :cond_7

    .line 804
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): START Update DCM Settings Table"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :try_start_6
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to drop dcm_settings TABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v4, "DROP TABLE dcm_settings;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 818
    :goto_6
    :try_start_7
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Trying to create and initialize dcm_settings TABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v4, "CREATE TABLE dcm_settings(_id INTEGER PRIMARY KEY,numeric TEXT,extraid TEXT,fastdormancy TEXT,ipmtu INTEGER,mpdp INTEGER,windefault TEXT,lte TEXT,umts TEXT,hspa TEXT,hsupa TEXT,hsdpa TEXT,hspap TEXT,edge TEXT,gprs TEXT,evdo_b TEXT,ehrpd TEXT,evdo TEXT,gpass TEXT);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDcmDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 847
    :goto_7
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): END Update DCM Settings Table"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_8
    const v4, 0x70008

    if-ge p2, v4, :cond_5

    .line 857
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$200()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 859
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade_7 << 16 | 8"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :try_start_8
    const-string v4, "DELETE FROM carriers WHERE name=\'LG uplus\' AND numeric =\'45006\' AND apn=\'internet.lguplus.co.kr\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 862
    const-string v4, "DELETE FROM carriers WHERE name=\'LG uplus Roaming\' AND numeric =\'45006\' AND apn=\'wroaming.lguplus.co.kr\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 866
    :goto_9
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade_U+ DB changed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 869
    const p2, 0x70008

    .line 873
    :cond_4
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 874
    const-string v4, "ro.product.model"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LG-F180K"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 877
    :try_start_9
    const-string v4, "DELETE FROM carriers WHERE name=\'KT\' AND numeric =\'45008\' AND apn=\'lte.ktfwing.com\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 882
    :goto_a
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade_F180K DB changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :goto_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 898
    const p2, 0x70008

    .line 899
    const-string v4, "TelephonyProvider"

    const-string v5, "[LGE_DATA] Upgrade MPDN DB"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v4, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mobile_data"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 903
    const-string v4, "TelephonyProvider"

    const-string v5, "[LGE_DATA] Upgrade MPDN DB set properties"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v4, "upgrade.mpdn.db"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_5
    const-string v4, "ATT"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 915
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade  << 16 | 8"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :try_start_a
    const-string v4, "DELETE FROM carriers WHERE name=\'ATT Phone\' AND numeric =\'310410\' AND apn=\'phone\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    const-string v4, "DELETE FROM carriers WHERE name=\'AT&T PTA\' AND numeric =\'310410\' AND apn=\'pta\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 919
    const-string v4, "DELETE FROM carriers WHERE name=\'ATT Broadband\' AND numeric =\'310410\' AND apn=\'broadband\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    const-string v4, "DELETE FROM carriers WHERE name=\'LGE DEFAULT\' AND numeric =\'45000\' AND apn=\'qe\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 921
    const-string v4, "DELETE FROM carriers WHERE name=\'LGE entitlement\' AND numeric =\'45000\' AND apn=\'tbt\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    const-string v4, "DELETE FROM carriers WHERE name=\'LGE 3G 2G ipv6 only\' AND numeric =\'45000\' AND apn=\'iv6\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 923
    const-string v4, "DELETE FROM carriers WHERE name=\'LGE LTE ipv4v6\' AND numeric =\'45000\' AND apn=\'lte46\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 928
    :goto_c
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade_ATT_PTA_Phone_APN was DELETED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 931
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade End_initdatabase"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_d
    return-void

    .line 728
    :catch_0
    move-exception v2

    .line 729
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): profile_type field exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 746
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 747
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): defaultsetting field exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 756
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 757
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): extraid field exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 766
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 767
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): usercreatesetting field exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 775
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 776
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): sim_slot field exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 792
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #result:I
    :catch_5
    move-exception v2

    .line 793
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Failed to re-initialize carriers table, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 798
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #result:I
    :cond_6
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): Carrier(APN) is not changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 811
    :catch_6
    move-exception v2

    .line 813
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Failed to drop dcm_settings TABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 842
    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .line 844
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Failed to create and initialize dcm_settings TABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 851
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    const-string v4, "TelephonyProvider"

    const-string v5, "DatabaseHelper.onUpgrade(): DCM Settings is not changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 863
    :catch_8
    move-exception v2

    .line 864
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Fail to Delete DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 878
    .end local v2           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 879
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Fail to Delete DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 887
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_b
    const-string v4, "DELETE FROM carriers WHERE name=\'SKT\' AND numeric =\'45005\' AND apn=\'lte.sktelecom.com\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 888
    const-string v4, "DELETE FROM carriers WHERE name=\'SKT\' AND numeric =\'45005\' AND apn=\'lte-roaming.sktelecom.com\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    const-string v4, "DELETE FROM carriers WHERE name=\'SKT\' AND numeric =\'45005\' AND apn=\'roaming.sktelecom.com\';"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 894
    :goto_e
    const-string v4, "TelephonyProvider"

    const-string v5, "OnUpgrade_F180S DB changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 890
    :catch_a
    move-exception v2

    .line 891
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Fail to Delete DB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 924
    .end local v2           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v2

    .line 925
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DatabaseHelper.onUpgrade(): Fail to Delete PTA and Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 935
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    const-string v4, "TelephonyProvider"

    const-string v5, "This is not ATT project"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method
