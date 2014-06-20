.class public Lcom/android/internal/telephony/DataConnectionManager;
.super Ljava/lang/Object;
.source "DataConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionManager$1;,
        Lcom/android/internal/telephony/DataConnectionManager$FunctionName;
    }
.end annotation


# static fields
.field public static final DATA_DISCONNECTED_PERMANENT_FAIL_NOTIFICATION:I = 0x9

.field public static final DATA_NOTI_BACKGROUND_SETTING_NOTIFICATION:I = 0xa

.field private static final DBG:Z = true

.field public static final DCM_MOBILE_NETWORK_IS_ALLOWED:I = 0x1

.field public static final DCM_MOBILE_NETWORK_IS_DISALLOWED:I = 0x2

.field public static final DCM_MOBILE_NETWORK_IS_NEED_POPUP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[LGE_DATA][DCM] "

.field public static alreadyAppUsedPacket:Z

.field public static blockPacketMenuFlag:Z

.field public static blockPakcetProcessFlag:Z

.field private static sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;


# instance fields
.field public final TOAST_DISABLE_MMS_INOUT:I

.field featureset:Ljava/lang/String;

.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field protected mLGfeature:Lcom/android/internal/telephony/LGfeature;

.field mNotification:Landroid/app/Notification;

.field mNotificationMgr:Landroid/app/NotificationManager;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 141
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    .line 142
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/LGfeature;)V
    .locals 2
    .parameter "c"
    .parameter "myfeature"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->TOAST_DISABLE_MMS_INOUT:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    .line 149
    const-string v0, "[LGE_DATA][DCM] "

    const-string v1, "LgeDataManager() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    .line 153
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 158
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 162
    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    .line 165
    if-eqz p2, :cond_0

    .line 167
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/LGfeature;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/LGfeature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    .line 173
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;
    .locals 2
    .parameter "c"

    .prologue
    .line 185
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnectionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/LGfeature;)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    .line 188
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/LGfeature;)Lcom/android/internal/telephony/DataConnectionManager;
    .locals 1
    .parameter "c"
    .parameter "myfeature"

    .prologue
    .line 177
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/DataConnectionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/LGfeature;)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    .line 180
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I
    .locals 56
    .parameter "funcName"
    .parameter "strParam"
    .parameter "intParam"

    .prologue
    .line 318
    monitor-enter p0

    const/16 v53, 0x0

    .line 320
    .local v53, voidReturn:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/DataConnectionManager$1;->$SwitchMap$com$android$internal$telephony$DataConnectionManager$FunctionName:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 889
    .end local v53           #voidReturn:I
    :cond_0
    :goto_0
    monitor-exit p0

    return v53

    .line 326
    .restart local v53       #voidReturn:I
    :pswitch_0
    :try_start_1
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "CallingSetMobileDataEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v48, p2

    .line 329
    .local v48, sText:Ljava/lang/String;
    const-string v21, ""

    .line 331
    .local v21, enabled:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 332
    const-string v21, "[Mobile Off]"

    .line 337
    :goto_1
    const/16 v30, 0x4

    .line 338
    .local v30, inputFileSize:I
    const-string v24, "CallingSetMobileDataEnabled.txt"

    .line 339
    .local v24, fileName:Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v22, file:Ljava/io/File;
    new-instance v41, Ljava/util/Date;

    invoke-direct/range {v41 .. v41}, Ljava/util/Date;-><init>()V

    .line 345
    .local v41, now:Ljava/util/Date;
    new-instance v49, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd HH:mm:ss"

    move-object/from16 v0, v49

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 346
    .local v49, simpleformat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 348
    .local v51, time:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PackagesName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 349
    const-string v2, "[LGE_DATA][DCM] "

    move-object/from16 v0, v48

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v2, "persist.service.logging_count"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v43

    .line 353
    .local v43, prop_count:I
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. CallingSetMobileDataEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    const/16 v2, 0x1f4

    move/from16 v0, v43

    if-ge v0, v2, :cond_2

    .line 358
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v28

    .line 359
    .local v28, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 360
    .local v14, bText:[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 361
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->flush()V

    .line 362
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V

    .line 363
    add-int/lit8 v43, v43, 0x1

    .line 364
    const-string v2, "persist.service.logging_count"

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    .end local v14           #bText:[B
    .end local v28           #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. CallingSetMobileDataEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 318
    .end local v21           #enabled:Ljava/lang/String;
    .end local v22           #file:Ljava/io/File;
    .end local v24           #fileName:Ljava/lang/String;
    .end local v30           #inputFileSize:I
    .end local v41           #now:Ljava/util/Date;
    .end local v43           #prop_count:I
    .end local v48           #sText:Ljava/lang/String;
    .end local v49           #simpleformat:Ljava/text/SimpleDateFormat;
    .end local v51           #time:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 334
    .restart local v21       #enabled:Ljava/lang/String;
    .restart local v48       #sText:Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v21, "[Mobile On]"

    goto/16 :goto_1

    .line 365
    .restart local v22       #file:Ljava/io/File;
    .restart local v24       #fileName:Ljava/lang/String;
    .restart local v30       #inputFileSize:I
    .restart local v41       #now:Ljava/util/Date;
    .restart local v43       #prop_count:I
    .restart local v49       #simpleformat:Ljava/text/SimpleDateFormat;
    .restart local v51       #time:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 366
    .local v20, e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 372
    .end local v20           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v28

    .line 373
    .restart local v28       #fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 374
    .restart local v14       #bText:[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 375
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->flush()V

    .line 376
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V

    .line 377
    const/16 v43, 0x0

    .line 378
    const-string v2, "persist.service.logging_count"

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 379
    .end local v14           #bText:[B
    .end local v28           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v20

    .line 380
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 393
    .end local v20           #e:Ljava/lang/Exception;
    .end local v21           #enabled:Ljava/lang/String;
    .end local v22           #file:Ljava/io/File;
    .end local v24           #fileName:Ljava/lang/String;
    .end local v30           #inputFileSize:I
    .end local v41           #now:Ljava/util/Date;
    .end local v43           #prop_count:I
    .end local v48           #sText:Ljava/lang/String;
    .end local v49           #simpleformat:Ljava/text/SimpleDateFormat;
    .end local v51           #time:Ljava/lang/String;
    :pswitch_1
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getBlockPacketMenuProcess()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <getBlockPacketMenuProcess()> blockPacketMenuFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    move/from16 v53, v2

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 403
    :pswitch_2
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getAlreadyAppUsedPacket()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <getAlreadyAppUsedPacket()> alreadyAppUsedPacket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    move/from16 v53, v2

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 411
    :pswitch_3
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getDataNetworkMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    const/4 v13, 0x1

    .line 414
    .local v13, addPopupResult:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_data_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 415
    .local v35, mode:I
    const/16 v38, 0x0

    .line 417
    .local v38, network_mode:I
    const-string v2, "gsm.operator.isroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v33

    .line 421
    .local v33, isRoaming:Z
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v2

    if-eqz v2, :cond_7

    const/16 v31, 0x1

    .line 425
    .local v31, isDataRoaming:Z
    :goto_6
    :try_start_8
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For KT Roaming isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isDataRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "boot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 435
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_8

    if-eqz v13, :cond_8

    .line 436
    const/16 v38, 0x3

    .line 482
    :cond_5
    :goto_7
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v53, v38

    .line 484
    goto/16 :goto_0

    .line 412
    .end local v13           #addPopupResult:Z
    .end local v31           #isDataRoaming:Z
    .end local v33           #isRoaming:Z
    .end local v35           #mode:I
    .end local v38           #network_mode:I
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 421
    .restart local v13       #addPopupResult:Z
    .restart local v33       #isRoaming:Z
    .restart local v35       #mode:I
    .restart local v38       #network_mode:I
    :cond_7
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 422
    :catch_2
    move-exception v50

    .line 423
    .local v50, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v53, 0x0

    goto/16 :goto_0

    .line 439
    .end local v50           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v31       #isDataRoaming:Z
    :cond_8
    const/16 v38, 0x1

    goto :goto_7

    .line 442
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_a

    if-eqz v13, :cond_a

    .line 443
    const/16 v38, 0x3

    goto :goto_7

    .line 446
    :cond_a
    const/16 v38, 0x2

    goto :goto_7

    .line 449
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 453
    if-eqz v33, :cond_c

    if-nez v31, :cond_c

    .line 454
    const-string v2, "DATA"

    const-string v3, "return DCM_MOBILE_NETWORK_IS_DISALLOWED for kt roaming network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v38, 0x2

    goto :goto_7

    .line 457
    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_d

    .line 458
    const/16 v38, 0x3

    goto :goto_7

    .line 460
    :cond_d
    const/16 v38, 0x1

    goto :goto_7

    .line 466
    :cond_e
    const/16 v38, 0x2

    goto :goto_7

    .line 468
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "LGTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 471
    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_10

    const v2, 0x10001

    move/from16 v0, v35

    if-ne v0, v2, :cond_11

    .line 472
    :cond_10
    const/16 v38, 0x3

    goto/16 :goto_7

    .line 474
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 475
    const/16 v38, 0x1

    goto/16 :goto_7

    .line 477
    :cond_12
    const/16 v38, 0x2

    goto/16 :goto_7

    .line 492
    .end local v13           #addPopupResult:Z
    .end local v31           #isDataRoaming:Z
    .end local v33           #isRoaming:Z
    .end local v35           #mode:I
    .end local v38           #network_mode:I
    :pswitch_4
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "setBlockPacketMenuProcess()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_13

    const/16 v16, 0x1

    .line 494
    .local v16, block:Z
    :goto_8
    sput-boolean v16, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 495
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <setBlockPacketMenuProcess()> blockPacketMenuFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    .end local v16           #block:Z
    :cond_13
    const/16 v16, 0x0

    goto :goto_8

    .line 501
    :pswitch_5
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "setAlreadyAppUsedPacket()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_14

    const/16 v52, 0x1

    .line 503
    .local v52, used:Z
    :goto_9
    sput-boolean v52, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    .line 504
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <setAlreadyAppUsedPacket()> alreadyAppUsedPacket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .end local v52           #used:Z
    :cond_14
    const/16 v52, 0x0

    goto :goto_9

    .line 510
    :pswitch_6
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "functionForPacketList()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 513
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA] return ~~~~ !!! for not SKT "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    :cond_15
    const/16 v47, 0x0

    .line 519
    .local v47, ret_value:Z
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v37

    .line 520
    .local v37, network_b:Landroid/os/IBinder;
    invoke-static/range {v37 .. v37}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v39

    .line 522
    .local v39, network_service:Landroid/os/INetworkManagementService;
    if-eqz v39, :cond_0

    .line 525
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "functionForPacketList  :::: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 527
    :try_start_9
    invoke-interface/range {v39 .. v39}, Landroid/os/INetworkManagementService;->packetList_Indrop()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result v47

    .line 532
    :goto_a
    :try_start_a
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "functionForPacketList  ret_value :: :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    :catch_3
    move-exception v20

    .line 529
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network_service.resetPacketDrop exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 539
    .end local v20           #e:Ljava/lang/Exception;
    .end local v37           #network_b:Landroid/os/IBinder;
    .end local v39           #network_service:Landroid/os/INetworkManagementService;
    .end local v47           #ret_value:Z
    :pswitch_7
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getRouteList_debug()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 542
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA] return ~~~~ !!! for not SKT "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 545
    :cond_16
    const/16 v47, 0x0

    .line 548
    .restart local v47       #ret_value:Z
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v37

    .line 549
    .restart local v37       #network_b:Landroid/os/IBinder;
    invoke-static/range {v37 .. v37}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v39

    .line 550
    .restart local v39       #network_service:Landroid/os/INetworkManagementService;
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 551
    .local v15, bc:Landroid/os/IBinder;
    invoke-static {v15}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v18

    .line 553
    .local v18, cm:Landroid/net/IConnectivityManager;
    if-eqz v39, :cond_0

    if-eqz v18, :cond_0

    .line 556
    const/16 v29, 0x0

    .line 557
    .local v29, ifacename:Ljava/lang/String;
    const/16 v44, 0x0

    .line 560
    .local v44, props:Landroid/net/LinkProperties;
    const/4 v2, 0x0

    :try_start_b
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v44

    .line 561
    invoke-virtual/range {v44 .. v44}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    move-result-object v29

    .line 566
    :goto_b
    :try_start_c
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "getRouteList_debug\t:::: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 568
    :try_start_d
    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getRouteList_debug(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 574
    :goto_c
    :try_start_e
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRouteList_debug\tret_value :: :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    :catch_4
    move-exception v20

    .line 571
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRouteList_debug exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 580
    .end local v15           #bc:Landroid/os/IBinder;
    .end local v18           #cm:Landroid/net/IConnectivityManager;
    .end local v20           #e:Ljava/lang/Exception;
    .end local v29           #ifacename:Ljava/lang/String;
    .end local v37           #network_b:Landroid/os/IBinder;
    .end local v39           #network_service:Landroid/os/INetworkManagementService;
    .end local v44           #props:Landroid/net/LinkProperties;
    .end local v47           #ret_value:Z
    :pswitch_8
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "handleSKT_QA()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move/from16 v46, p3

    .line 584
    .local v46, releaseCause:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 587
    .local v18, cm:Landroid/net/ConnectivityManager;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSKT_QA :  releaseCause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.skt.intent.action.USER_BACKG_SETTING"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v11, DataDisabledIntent:Landroid/content/Intent;
    const/4 v2, 0x2

    move/from16 v0, v46

    if-ne v0, v2, :cond_17

    .line 608
    const-string v2, "on_off"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 611
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "handleSKT_QA : Limit_Background_data_Notification."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 615
    .local v10, mintent:Landroid/content/Intent;
    new-instance v2, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const v4, 0x108008a

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20b028b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v55, 0x20b028c

    move/from16 v0, v55

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v10}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 628
    .end local v10           #mintent:Landroid/content/Intent;
    :cond_17
    const/16 v21, 0x0

    .line 629
    .local v21, enabled:Z
    const/4 v12, 0x0

    .line 643
    .local v12, IsBackgroundRestricted:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_network_user_background_setting_data"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_18

    .line 644
    const/16 v21, 0x1

    .line 648
    :goto_d
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSKT_QA : enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v3, "on_off"

    if-nez v21, :cond_19

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v11, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 646
    :cond_18
    const/16 v21, 0x0

    goto :goto_d

    .line 651
    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    .line 663
    .end local v11           #DataDisabledIntent:Landroid/content/Intent;
    .end local v12           #IsBackgroundRestricted:Z
    .end local v18           #cm:Landroid/net/ConnectivityManager;
    .end local v21           #enabled:Z
    .end local v46           #releaseCause:I
    :pswitch_9
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "debugFileWrite()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v24, "DebugFile.txt"

    .line 666
    .restart local v24       #fileName:Ljava/lang/String;
    new-instance v48, Ljava/lang/StringBuffer;

    const-string v2, ""

    move-object/from16 v0, v48

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 667
    .local v48, sText:Ljava/lang/StringBuffer;
    move/from16 v30, p3

    .line 669
    .restart local v30       #inputFileSize:I
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .restart local v22       #file:Ljava/io/File;
    new-instance v41, Ljava/util/Date;

    invoke-direct/range {v41 .. v41}, Ljava/util/Date;-><init>()V

    .line 675
    .restart local v41       #now:Ljava/util/Date;
    new-instance v49, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd HH:mm:ss"

    move-object/from16 v0, v49

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 676
    .restart local v49       #simpleformat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 678
    .restart local v51       #time:Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 682
    const-wide/16 v25, 0x0

    .line 686
    .local v25, fileSize:J
    :try_start_f
    new-instance v45, Ljava/io/File;

    const-string v2, "data/data/com.android.phone/files/DebugFile.txt"

    move-object/from16 v0, v45

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    .local v45, readFile:Ljava/io/File;
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->length()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-result-wide v25

    .line 697
    .end local v45           #readFile:Ljava/io/File;
    :goto_f
    :try_start_10
    new-instance v23, Ljava/lang/StringBuffer;

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 698
    .local v23, fileContent:Ljava/lang/StringBuffer;
    new-instance v54, Ljava/lang/StringBuffer;

    const-string v2, ""

    move-object/from16 v0, v54

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 701
    .local v54, writeString:Ljava/lang/StringBuffer;
    move/from16 v0, v30

    mul-int/lit16 v2, v0, 0x400

    int-to-long v2, v2

    cmp-long v2, v25, v2

    if-lez v2, :cond_1c

    .line 703
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v27

    .line 705
    .local v27, fis:Ljava/io/FileInputStream;
    :cond_1a
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->read()I

    move-result v42

    .local v42, ouputByte:I
    const/16 v2, 0xa

    move/from16 v0, v42

    if-ne v0, v2, :cond_1a

    .line 709
    :goto_10
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->read()I

    move-result v42

    const/4 v2, -0x1

    move/from16 v0, v42

    if-eq v0, v2, :cond_1b

    .line 710
    move/from16 v0, v42

    int-to-char v2, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_10

    .line 713
    .end local v27           #fis:Ljava/io/FileInputStream;
    .end local v42           #ouputByte:I
    :catch_5
    move-exception v20

    .line 715
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_12
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 717
    .end local v20           #e:Ljava/lang/Exception;
    :goto_11
    move-object/from16 v54, v23

    .line 739
    :goto_12
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v28

    .line 741
    .restart local v28       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 742
    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 743
    .restart local v14       #bText:[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 744
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->flush()V

    .line 745
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    .line 746
    .end local v14           #bText:[B
    .end local v28           #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v20

    .line 749
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_14
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 690
    .end local v20           #e:Ljava/lang/Exception;
    .end local v23           #fileContent:Ljava/lang/StringBuffer;
    .end local v54           #writeString:Ljava/lang/StringBuffer;
    :catch_7
    move-exception v20

    .line 691
    .restart local v20       #e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_f

    .line 712
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v23       #fileContent:Ljava/lang/StringBuffer;
    .restart local v27       #fis:Ljava/io/FileInputStream;
    .restart local v42       #ouputByte:I
    .restart local v54       #writeString:Ljava/lang/StringBuffer;
    :cond_1b
    :try_start_15
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    goto :goto_11

    .line 723
    .end local v27           #fis:Ljava/io/FileInputStream;
    .end local v42           #ouputByte:I
    :cond_1c
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v27

    .line 725
    .restart local v27       #fis:Ljava/io/FileInputStream;
    :goto_13
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->read()I

    move-result v42

    .restart local v42       #ouputByte:I
    const/4 v2, -0x1

    move/from16 v0, v42

    if-eq v0, v2, :cond_1d

    .line 726
    move/from16 v0, v42

    int-to-char v2, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_13

    .line 729
    .end local v27           #fis:Ljava/io/FileInputStream;
    .end local v42           #ouputByte:I
    :catch_8
    move-exception v20

    .line 731
    .restart local v20       #e:Ljava/lang/Exception;
    :try_start_17
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 734
    .end local v20           #e:Ljava/lang/Exception;
    :goto_14
    move-object/from16 v54, v23

    goto :goto_12

    .line 728
    .restart local v27       #fis:Ljava/io/FileInputStream;
    .restart local v42       #ouputByte:I
    :cond_1d
    :try_start_18
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    goto :goto_14

    .line 758
    .end local v22           #file:Ljava/io/File;
    .end local v23           #fileContent:Ljava/lang/StringBuffer;
    .end local v24           #fileName:Ljava/lang/String;
    .end local v25           #fileSize:J
    .end local v27           #fis:Ljava/io/FileInputStream;
    .end local v30           #inputFileSize:I
    .end local v41           #now:Ljava/util/Date;
    .end local v42           #ouputByte:I
    .end local v48           #sText:Ljava/lang/StringBuffer;
    .end local v49           #simpleformat:Ljava/text/SimpleDateFormat;
    .end local v51           #time:Ljava/lang/String;
    .end local v54           #writeString:Ljava/lang/StringBuffer;
    :pswitch_a
    move/from16 v36, p3

    .line 759
    .local v36, networkType:I
    :try_start_19
    const-string v2, "true"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result v34

    .line 763
    .local v34, isTeardownRequested:Z
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1a .. :try_end_1a} :catch_9

    move-result v19

    .line 768
    .local v19, data_roaming:I
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v40

    .line 770
    .local v40, ni:Landroid/net/NetworkInfo;
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] data_roaming ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] gsm.operator.isroaming ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] data_restrict_mode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v5, ""

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v40, :cond_1e

    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA-KAF] ni.isAvailable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_1e
    const-string v2, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 781
    if-gtz v19, :cond_20

    .line 782
    const/16 v53, -0x3

    goto/16 :goto_0

    .line 764
    .end local v19           #data_roaming:I
    .end local v40           #ni:Landroid/net/NetworkInfo;
    :catch_9
    move-exception v50

    .line 766
    .restart local v50       #snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v53, -0x1

    goto/16 :goto_0

    .line 786
    .end local v50           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v19       #data_roaming:I
    .restart local v40       #ni:Landroid/net/NetworkInfo;
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 787
    const/16 v53, -0x2

    goto/16 :goto_0

    .line 791
    :cond_20
    if-eqz v40, :cond_23

    .line 792
    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_21

    .line 793
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/16 v53, -0x1

    goto/16 :goto_0

    .line 797
    :cond_21
    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    if-nez v34, :cond_23

    .line 798
    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 799
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network already active"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v53, 0x0

    goto/16 :goto_0

    .line 803
    :cond_22
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network already connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v53, 0x1

    goto/16 :goto_0

    .line 808
    :cond_23
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "special network is not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/16 v53, -0x1

    goto/16 :goto_0

    .line 818
    .end local v19           #data_roaming:I
    .end local v34           #isTeardownRequested:Z
    .end local v36           #networkType:I
    .end local v40           #ni:Landroid/net/NetworkInfo;
    :pswitch_b
    const/16 v32, 0x1

    .line 820
    .local v32, isMobileDataEnabled:Z
    sget-object v2, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 822
    const/16 v32, 0x0

    .line 824
    :cond_24
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] <startUsingNetworkFeatureId()> isMobileDataAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isNetworkRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isAllowRoaming()Z

    move-result v2

    if-nez v2, :cond_25

    .line 830
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA] <startUsingNetworkFeatureId()> Roaming : return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.net.conn.STARTING_IN_ROAM_SETTING_DISABLE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v17, broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 835
    const/16 v53, 0x2

    goto/16 :goto_0

    .line 838
    .end local v17           #broadcast:Landroid/content/Intent;
    :cond_25
    const/16 v32, 0x1

    .line 839
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA] <startUsingNetworkFeatureId()> Roaming : pass."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_26
    if-nez v32, :cond_0

    .line 844
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA] <startUsingNetworkFeatureId()> Mobile Data is NOT enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v2, "[LGE_DATA][DCM] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] isNetworkSKT_formccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isNetworkSKT_formccmnc()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isNetworkSKT_formccmnc()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "enableMMS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    :cond_27
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .restart local v17       #broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    const/16 v53, 0x2

    goto/16 :goto_0

    .line 862
    .end local v17           #broadcast:Landroid/content/Intent;
    .end local v32           #isMobileDataEnabled:Z
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isNetworkRoaming()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataConnectionManager;->isAllowRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 866
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA_U] <startUsingNetworkFeatureId()> Roaming : return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v53, 0x2

    goto/16 :goto_0

    .line 873
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x17

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 878
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA_U] <startUsingNetworkFeatureId()> KOR : return."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 879
    const/16 v53, 0x2

    goto/16 :goto_0

    .line 563
    .restart local v15       #bc:Landroid/os/IBinder;
    .local v18, cm:Landroid/net/IConnectivityManager;
    .restart local v29       #ifacename:Ljava/lang/String;
    .restart local v37       #network_b:Landroid/os/IBinder;
    .restart local v39       #network_service:Landroid/os/INetworkManagementService;
    .restart local v44       #props:Landroid/net/LinkProperties;
    .restart local v47       #ret_value:Z
    :catch_a
    move-exception v2

    goto/16 :goto_b

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public SendBroadcastPdpRejectCause(I)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 281
    const-string v2, "[LGE_DATA][DCM] "

    const-string v3, "[LGE_DATA][PDP_reject] SendBroadcastPdpRejectCause, intent = android.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "cause"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, intentLge:Landroid/content/Intent;
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method public declared-synchronized functionForPacketDrop(Z)V
    .locals 14
    .parameter "ok"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    iget-boolean v11, v11, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    if-nez v11, :cond_1

    .line 194
    const-string v9, "[LGE_DATA][DCM] "

    const-string v10, "[LGE_DATA] return ~~~~ !!! not defined feature "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 199
    .local v8, tm:Landroid/telephony/TelephonyManager;
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v11, "network_management"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 200
    .local v0, b:Landroid/os/IBinder;
    const-string v11, "connectivity"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 201
    .local v1, bc:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 203
    .local v2, cm:Landroid/net/IConnectivityManager;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 204
    .local v7, service:Landroid/os/INetworkManagementService;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, networkOperator:Ljava/lang/String;
    const/4 v4, 0x0

    .line 206
    .local v4, ifacename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 208
    .local v6, props:Landroid/net/LinkProperties;
    if-eqz v2, :cond_2

    if-nez v7, :cond_3

    .line 209
    :cond_2
    const-string v9, "[LGE_DATA][DCM] "

    const-string v10, " <functionForPacketDrop()> cm == null || service == null, so return!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #bc:Landroid/os/IBinder;
    .end local v2           #cm:Landroid/net/IConnectivityManager;
    .end local v4           #ifacename:Ljava/lang/String;
    .end local v5           #networkOperator:Ljava/lang/String;
    .end local v6           #props:Landroid/net/LinkProperties;
    .end local v7           #service:Landroid/os/INetworkManagementService;
    .end local v8           #tm:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 214
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v1       #bc:Landroid/os/IBinder;
    .restart local v2       #cm:Landroid/net/IConnectivityManager;
    .restart local v4       #ifacename:Ljava/lang/String;
    .restart local v5       #networkOperator:Ljava/lang/String;
    .restart local v6       #props:Landroid/net/LinkProperties;
    .restart local v7       #service:Landroid/os/INetworkManagementService;
    .restart local v8       #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v11, 0x0

    :try_start_2
    invoke-interface {v2, v11}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 221
    :goto_1
    :try_start_3
    const-string v11, "[LGE_DATA][DCM] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " <functionForPacketDrop()> blockPacketMenuFlag : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / blockPakcetProcessFlag :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / ok : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v12, "KTBASE"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 226
    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "multi_rab_setting"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_6

    :goto_2
    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 227
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "functionForPacketDrop  blockPacketMenuFlag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    if-nez v9, :cond_7

    .line 233
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_5

    .line 234
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :try_start_4
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 239
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 245
    :cond_5
    :goto_3
    :try_start_5
    const-string v9, "[LGE_DATA][DCM] "

    const-string v10, " <functionForPacketDrop()> return!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "[LGE_DATA][DCM] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    move v9, v10

    .line 226
    goto :goto_2

    .line 240
    :catch_1
    move-exception v3

    .line 241
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 249
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz p1, :cond_a

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-nez v9, :cond_a

    .line 250
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    .line 252
    if-eqz v5, :cond_0

    const-string v9, "45005"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v10, "SKTBASE"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_8
    const-string v9, "45008"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v10, "KTBASE"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 258
    :cond_9
    :try_start_6
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->dropPacket(Ljava/lang/String;)V

    .line 260
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> dropPacket_SKT  ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 261
    :catch_2
    move-exception v3

    .line 262
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.dropPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    .end local v3           #e:Ljava/lang/Exception;
    :cond_a
    if-nez p1, :cond_0

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_0

    .line 266
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 270
    :try_start_8
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 272
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 273
    :catch_3
    move-exception v3

    .line 274
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v9, "[LGE_DATA][DCM] "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 217
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v11

    goto/16 :goto_1
.end method

.method public isAllowRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 2

    .prologue
    .line 304
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetworkSKT_formccmnc()Z
    .locals 4

    .prologue
    .line 298
    const-string v1, "persist.radio.camped_mccmnc"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, prop_mccmnc:Ljava/lang/String;
    const-string v1, "[LGE_DATA][DCM] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] USIM_MCC_MNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "45005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
