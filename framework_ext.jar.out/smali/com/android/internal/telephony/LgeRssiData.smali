.class public Lcom/android/internal/telephony/LgeRssiData;
.super Ljava/lang/Object;
.source "LgeRssiData.java"


# static fields
.field private static final ATTR_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DBG:Z = false

.field private static final DEFAULT_RSSI_LEVEL:I = 0x5

.field private static final ELEMENT_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final ELEMENT_NAME_RSSI:Ljava/lang/String; = "RSSI"

.field private static final FILE_PATH_RSSI:Ljava/lang/String; = "/etc/rssi.xml"

.field private static final TAG:Ljava/lang/String; = "LgeRssiData"

.field private static instance:Lcom/android/internal/telephony/LgeRssiData;

.field private static mRssiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAsuEtcValue:[I

.field private mAsuGsmValue:[I

.field private mAsuUmtsValue:[I

.field private mCdmaDbmValue:[I

.field private mCdmaEcioValue:[I

.field private mEvdoDbmValue:[I

.field private mEvdoSnrValue:[I

.field private mLteRsrpValue:[I

.field private mLteRsrqValue:[I

.field private mLteRssnrValue:[I

.field private mLteSignalValue:[I

.field private mRssiLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mRssiLevel:I

    .line 64
    return-void
.end method

.method private convertToInt(Ljava/lang/String;)[I
    .locals 6
    .parameter "value"

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 235
    :cond_0
    return-object v0

    .line 227
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, tempValue:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 229
    .local v2, size:I
    new-array v0, v2, [I

    .line 230
    .local v0, array:[I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 231
    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/LgeRssiData;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/telephony/LgeRssiData;->instance:Lcom/android/internal/telephony/LgeRssiData;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/internal/telephony/LgeRssiData;

    invoke-direct {v0}, Lcom/android/internal/telephony/LgeRssiData;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LgeRssiData;->instance:Lcom/android/internal/telephony/LgeRssiData;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LgeRssiData;->instance:Lcom/android/internal/telephony/LgeRssiData;

    return-object v0
.end method

.method private getItemValue(Ljava/lang/String;)[I
    .locals 11
    .parameter "key"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, count:I
    const/4 v2, 0x0

    .line 176
    .local v2, dataNum:I
    sget-object v8, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 177
    const-string v8, "LgeRssiData"

    const-string v9, "[getItemValue]mRssiMap is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeRssiData;->init()V

    .line 181
    :cond_0
    sget-object v8, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 188
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_1

    sget-object v8, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 189
    :cond_1
    const/4 v8, 0x0

    .line 212
    :goto_0
    return-object v8

    .line 192
    :cond_2
    if-eqz v7, :cond_4

    .line 193
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .line 195
    .local v6, tempValue:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 196
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 198
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #tempValue:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v1, -0x1

    if-eq v2, v8, :cond_5

    .line 206
    :try_start_0
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Data Size MisMatch"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :catch_0
    move-exception v3

    .line 208
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "LgeRssiData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getItemValue] Data Size MisMatch ->count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataNum : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/LgeRssiData;->convertToInt(Ljava/lang/String;)[I

    move-result-object v8

    goto :goto_0
.end method

.method private loadRssi()V
    .locals 9

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, in:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 83
    .local v0, confFile:Ljava/io/File;
    sget-object v6, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    const-string v6, "/etc/rssi.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v0       #confFile:Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    const-string v6, "LgeRssiData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadRssi] selected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 98
    .end local v3           #in:Ljava/io/FileReader;
    .local v4, in:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 99
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 100
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 102
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeRssiData;->readRssiData(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRssiData;->parseRssiData()V

    .line 104
    const-string v6, "LgeRssiData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[loadRssi]Loaded mRssiMap is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 113
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v3, v4

    .line 116
    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_0

    .line 91
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const-string v6, "LgeRssiData"

    const-string v7, "[loadRssi] File not exist "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #in:Ljava/io/FileReader;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 117
    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_0

    .line 105
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 108
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 114
    :catch_4
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 110
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 114
    :catch_6
    move-exception v1

    .line 115
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 113
    :goto_4
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 116
    :cond_4
    :goto_5
    throw v6

    .line 114
    :catch_7
    move-exception v1

    .line 115
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_4

    .line 109
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_3

    .line 107
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_2

    .line 105
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/FileReader;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private parseRssiData()V
    .locals 4

    .prologue
    .line 155
    sget-object v1, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    const-string/jumbo v2, "levelNum"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x5

    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mRssiLevel:I

    .line 157
    const-string v1, "LgeRssiData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRssiLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeRssiData;->mRssiLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v1, "mLteRsrp"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteRsrpValue:[I

    .line 160
    const-string/jumbo v1, "mLteRssnr"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteRssnrValue:[I

    .line 161
    const-string/jumbo v1, "mLteSignalStrength"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteSignalValue:[I

    .line 162
    const-string/jumbo v1, "mLteRsrq"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteRsrqValue:[I

    .line 163
    const-string v1, "asu_gsm"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mAsuGsmValue:[I

    .line 164
    const-string v1, "asu_umts"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mAsuUmtsValue:[I

    .line 165
    const-string v1, "asu_etc"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mAsuEtcValue:[I

    .line 166
    const-string v1, "cdmaDbm"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mCdmaDbmValue:[I

    .line 167
    const-string v1, "cdmaEcio"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mCdmaEcioValue:[I

    .line 168
    const-string v1, "evdoDbm"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mEvdoDbmValue:[I

    .line 169
    const-string v1, "evdoSnr"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeRssiData;->getItemValue(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/LgeRssiData;->mEvdoSnrValue:[I

    .line 171
    return-void

    .line 156
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private readRssiData(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 125
    .local v0, eventType:I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    .line 127
    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    .line 128
    packed-switch v0, :pswitch_data_0

    .line 148
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_1
    const-string/jumbo v4, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 136
    .local v2, type:I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, value:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 150
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #type:I
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAsuEtcValue()[I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mAsuUmtsValue:[I

    return-object v0
.end method

.method public getAsuGsmValue()[I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mAsuGsmValue:[I

    return-object v0
.end method

.method public getAsuUmtsValue()[I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mAsuUmtsValue:[I

    return-object v0
.end method

.method public getCdmaDbmValue()[I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mCdmaDbmValue:[I

    return-object v0
.end method

.method public getEcioValue()[I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mCdmaEcioValue:[I

    return-object v0
.end method

.method public getEvdoDbmValue()[I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mEvdoDbmValue:[I

    return-object v0
.end method

.method public getEvdoSnrValue()[I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mEvdoSnrValue:[I

    return-object v0
.end method

.method public getLteSignalValue()[I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteSignalValue:[I

    return-object v0
.end method

.method public getRsrpValue()[I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteRsrpValue:[I

    return-object v0
.end method

.method public getRsrqValue()[I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteRsrqValue:[I

    return-object v0
.end method

.method public getRssiLevel()I
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/android/internal/telephony/LgeRssiData;->mRssiMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeRssiData;->init()V

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mRssiLevel:I

    return v0
.end method

.method public getRssnrValue()[I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRssiData;->mLteRssnrValue:[I

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRssiData;->loadRssi()V

    .line 74
    return-void
.end method
