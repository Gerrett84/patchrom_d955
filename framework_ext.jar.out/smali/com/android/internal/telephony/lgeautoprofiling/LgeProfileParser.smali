.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
.super Ljava/lang/Object;
.source "LgeProfileParser.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;,
        Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 525
    return-void
.end method

.method private isFileExist(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 522
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 7
    .parameter "confFile"
    .parameter "type"
    .parameter "simInfo"

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, in:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 495
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 498
    .local v4, parsedData:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 500
    .end local v2           #in:Ljava/io/FileReader;
    .local v3, in:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 501
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 502
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 504
    invoke-virtual {p0, p2, v5, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedProfile(ILorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 511
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 517
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-object v4

    .line 512
    .end local v2           #in:Ljava/io/FileReader;
    .restart local v1       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #in:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 515
    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_0

    .line 505
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v0

    .line 506
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 512
    :catch_2
    move-exception v0

    .line 513
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 508
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 512
    :catch_4
    move-exception v0

    .line 513
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 511
    :goto_3
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 514
    :cond_2
    :goto_4
    throw v6

    .line 512
    :catch_5
    move-exception v0

    .line 513
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 510
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_3

    .line 507
    .end local v2           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_2

    .line 505
    .end local v2           #in:Ljava/io/FileReader;
    .restart local v3       #in:Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #in:Ljava/io/FileReader;
    .restart local v2       #in:Ljava/io/FileReader;
    goto :goto_1
.end method


# virtual methods
.method protected final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 59
    :cond_1
    if-eq v1, v3, :cond_2

    .line 60
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, first:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 65
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected start tag: found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_3
    return-void
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "string"
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 126
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v0, st:Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "string"
    .parameter "v"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 140
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v4

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 147
    .local v3, xml_length:I
    if-le v3, p3, :cond_2

    .line 148
    move v0, p3

    .line 156
    .local v0, final_length:I
    :goto_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, fixed_xml_gid:Ljava/lang/String;
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, fixed_sim_gid:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/4 v4, 0x1

    goto :goto_0

    .line 151
    .end local v0           #final_length:I
    .end local v1           #fixed_sim_gid:Ljava/lang/String;
    .end local v2           #fixed_xml_gid:Ljava/lang/String;
    :cond_2
    move v0, v3

    .restart local v0       #final_length:I
    goto :goto_1
.end method

.method public getMatchedProfile(ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 9
    .parameter "type"
    .parameter "simInfo"

    .prologue
    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, matchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v0, 0x0

    .line 422
    .local v0, confFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 424
    .local v1, confFileOpen:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 479
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "[getMatchedProfile] unsupported type"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v6, 0x0

    .line 486
    :goto_0
    return-object v6

    .line 427
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    sget-object v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->FILE_PATH_CUPSS_FEATURE:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v0       #confFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 430
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    const-string v6, "/etc/featureset.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v0       #confFile:Ljava/io/File;
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    .line 483
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->isFileExist(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 484
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMatchedProfile] selected file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v2

    .line 486
    goto :goto_0

    .line 438
    :pswitch_1
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    sget-object v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->FILE_PATH_CUPSS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v0       #confFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #confFileOpen:Ljava/io/File;
    const-string v6, "/etc/telephonyCupssOpen.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v1       #confFileOpen:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 441
    new-instance v0, Ljava/io/File;

    .end local v0           #confFile:Ljava/io/File;
    const-string v6, "/etc/telephony.xml"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v0       #confFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #confFileOpen:Ljava/io/File;
    const-string v6, "/etc/telephonyOpen.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .restart local v1       #confFileOpen:Ljava/io/File;
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v2

    .line 448
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "matchedProfile : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "ro.lge.autoprofile"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 453
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "autoprofile property is true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    .line 455
    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string/jumbo v7, "p"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 457
    .local v5, profilePriorityFromOperatorXml:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 458
    const-string v6, "TelephonyAutoProfiling"

    const-string v7, "bestMatchedProfile is not found on operator xml, parse open xml"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->parse(Ljava/io/File;ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v3

    .line 462
    .local v3, openProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    if-eqz v3, :cond_4

    move-object v6, v3

    .line 463
    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string/jumbo v7, "p"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 464
    .local v4, profilePriorityFromOpenXml:I
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile priority - operatorXml : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", openXml : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-le v5, v4, :cond_4

    .line 468
    move-object v2, v3

    .line 473
    .end local v3           #openProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .end local v4           #profilePriorityFromOpenXml:I
    .end local v5           #profilePriorityFromOperatorXml:I
    :cond_4
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 474
    check-cast v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    const-string/jumbo v7, "p"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->remove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMatchedProfile(ILorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 21
    .parameter "type"
    .parameter "parser"
    .parameter "simInfo"

    .prologue
    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, commonProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v3, 0x0

    .line 273
    .local v3, bestMatchedProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v4, 0x0

    .line 274
    .local v4, candidateProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v7, 0x0

    .line 275
    .local v7, defaultProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const/4 v9, 0x0

    .line 277
    .local v9, featureProfile:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    if-nez p2, :cond_0

    .line 278
    const/16 v18, 0x0

    .line 405
    :goto_0
    return-object v18

    .line 283
    :cond_0
    :try_start_0
    const-string/jumbo v18, "profiles"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 287
    :cond_1
    :goto_1
    const-string/jumbo v18, "profiles"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 291
    :cond_2
    const-string/jumbo v18, "profile"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 294
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 405
    :goto_2
    if-eqz v3, :cond_10

    move-object/from16 v18, v3

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v18

    goto :goto_0

    .line 298
    :cond_4
    :try_start_1
    const-string/jumbo v18, "siminfo"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 299
    const/16 v16, 0x0

    .line 300
    .local v16, p:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    const-string/jumbo v18, "true"

    const/16 v19, 0x0

    const-string v20, "default"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 302
    .local v12, isDefault:Z
    if-eqz v12, :cond_7

    .line 304
    if-nez v7, :cond_5

    .line 306
    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "[getMatchedProfile] Set defaultProfile"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v16

    .line 310
    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "defaultProfile is found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "p"

    const-string v20, "3"

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object/from16 v7, v16

    .line 316
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 317
    :cond_6
    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "[getMatchedProfile] sim info is null, use default profile and escape loop"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 399
    .end local v12           #isDefault:Z
    .end local v16           #p:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :catch_0
    move-exception v8

    .line 400
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 322
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12       #isDefault:Z
    .restart local v16       #p:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    :cond_7
    const/16 v18, 0x0

    :try_start_2
    const-string/jumbo v19, "mcc"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, mccValue:Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "mnc"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 324
    .local v14, mncValue:Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "operator"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 325
    .local v15, operatorValue:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "country"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, countryValue:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "gid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, gidValue:Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "spn"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 328
    .local v17, spnValue:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "imsi"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 338
    .local v11, imsiValue:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchMccMnc(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 341
    if-nez v4, :cond_9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 342
    if-nez v16, :cond_8

    .line 344
    const-string v18, "TelephonyAutoProfiling"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[getMatchedProfile] Set candidateProfile - MCC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", MNC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v16

    .line 348
    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "candidateProfile is found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "p"

    const-string v20, "2"

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_8
    move-object/from16 v4, v16

    .line 361
    :cond_9
    if-nez v3, :cond_c

    .line 363
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 364
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v10, v2, v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->matchExtension(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 365
    sget-boolean v18, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->ENABLE_PRIVACY_LOG:Z

    if-eqz v18, :cond_b

    .line 366
    const-string v18, "TelephonyAutoProfiling"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[getMatchedProfile] Set bestMatchedProfile -MCC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", MNC : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", GID : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", SPN : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", IMSI : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v16

    .line 372
    const-string v18, "TelephonyAutoProfiling"

    const-string v19, "bestMatchedProfile is found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "p"

    const-string v20, "1"

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object/from16 v3, v16

    .line 377
    goto/16 :goto_2

    .line 384
    :cond_c
    if-nez v16, :cond_1

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 401
    .end local v6           #countryValue:Ljava/lang/String;
    .end local v10           #gidValue:Ljava/lang/String;
    .end local v11           #imsiValue:Ljava/lang/String;
    .end local v12           #isDefault:Z
    .end local v13           #mccValue:Ljava/lang/String;
    .end local v14           #mncValue:Ljava/lang/String;
    .end local v15           #operatorValue:Ljava/lang/String;
    .end local v16           #p:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .end local v17           #spnValue:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 402
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 389
    .end local v8           #e:Ljava/io/IOException;
    :cond_d
    :try_start_3
    const-string v18, "CommonProfile"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v5

    goto/16 :goto_1

    .line 391
    :cond_e
    const-string v18, "FeatureSet"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v9

    goto/16 :goto_1

    .line 395
    :cond_f
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected tag: found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 405
    :cond_10
    if-eqz v4, :cond_11

    move-object/from16 v18, v4

    goto/16 :goto_3

    :cond_11
    move-object/from16 v18, v7

    goto/16 :goto_3
.end method

.method protected matchExtension(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "simInfo"
    .parameter "gidParsed"
    .parameter "spnParsed"
    .parameter "imsiParsed"

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    const/4 v12, 0x0

    .line 259
    :goto_0
    return v12

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getGid()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, gid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSpn()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, spn:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getImsi()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, imsi:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 194
    const/4 v12, 0x0

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 204
    .local v4, gidLength:I
    if-eqz p2, :cond_4

    const-string v12, "00"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 207
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 211
    .end local v4           #gidLength:I
    :cond_3
    if-eqz p2, :cond_4

    .line 212
    const/4 v12, 0x0

    goto :goto_0

    .line 216
    :cond_4
    if-eqz v9, :cond_5

    .line 217
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 220
    const/4 v12, 0x0

    goto :goto_0

    .line 224
    :cond_5
    if-eqz p3, :cond_6

    const/4 v12, 0x0

    goto :goto_0

    .line 227
    :cond_6
    if-eqz p4, :cond_b

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_b

    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, found:Z
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 231
    .local v7, imsiLength:I
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v12, ","

    move-object/from16 v0, p4

    invoke-direct {v10, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v10, st:Ljava/util/StringTokenizer;
    :cond_7
    :goto_1
    if-nez v2, :cond_a

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 233
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 234
    .local v11, t:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 236
    .local v8, len:I
    if-gt v8, v7, :cond_7

    .line 242
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v8, :cond_8

    .line 243
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 244
    .local v1, c:C
    const/16 v12, 0x78

    if-eq v1, v12, :cond_9

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v1, v12, :cond_9

    .line 248
    .end local v1           #c:C
    :cond_8
    if-ne v5, v8, :cond_7

    .line 249
    const/4 v2, 0x1

    goto :goto_1

    .line 242
    .restart local v1       #c:C
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 253
    .end local v1           #c:C
    .end local v5           #i:I
    .end local v8           #len:I
    .end local v11           #t:Ljava/lang/String;
    :cond_a
    if-nez v2, :cond_b

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 259
    .end local v2           #found:Z
    .end local v7           #imsiLength:I
    .end local v10           #st:Ljava/util/StringTokenizer;
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method protected matchMccMnc(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "simInfo"
    .parameter "mccParsed"
    .parameter "mncParsed"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, mcc:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, mnc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->existInTokens(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x1

    .line 181
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #mnc:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 8
    .parameter "commonProfile"
    .parameter "matchedProfile"
    .parameter "featureProfile"

    .prologue
    .line 619
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v0, cp:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    move-object v4, p2

    .line 620
    check-cast v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .local v4, mp:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    move-object v1, p3

    .line 621
    check-cast v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .line 626
    .local v1, fp:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    if-eqz v0, :cond_1

    .line 628
    #getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 629
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 631
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 632
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 633
    .local v2, key:Ljava/lang/String;
    #getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 634
    #getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 639
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_3

    .line 641
    #getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 642
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 644
    .restart local v3       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 645
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 646
    .restart local v2       #key:Ljava/lang/String;
    #getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 647
    #getter for: Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->mNameValueMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->access$000(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 652
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-object v4
.end method

.method protected mergeProfileIfNeeded(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 1
    .parameter "globalProfile"
    .parameter "matchedProfile"
    .parameter "featureProfile"

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p1, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    move-object p1, v0

    .line 121
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 109
    .restart local p1
    :cond_1
    if-nez p2, :cond_2

    .line 112
    if-eqz p3, :cond_0

    .line 113
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->mergeProfile(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object p1

    goto :goto_0
.end method

.method protected final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    :cond_1
    return-void
.end method

.method protected readProfile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    new-instance v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    invoke-direct {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;-><init>()V

    .line 582
    .local v1, p:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    :goto_0
    const-string/jumbo v5, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "FeatureSet"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 583
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 586
    :cond_1
    :goto_1
    const-string/jumbo v5, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 588
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, tag:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 595
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 596
    .local v3, type:I
    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 597
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .end local v3           #type:I
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 607
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #tag:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method protected final skipCurrentElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 83
    .local v0, depth:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 86
    const-string/jumbo v2, "siminfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 90
    const-string/jumbo v2, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 96
    :cond_2
    const-string/jumbo v2, "profile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method
