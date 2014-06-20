.class public Lcom/lge/camera/receiver/MessageReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "MessageReceiver.java"


# static fields
.field private static final CONTENT_URI_MMS:Landroid/net/Uri; = null

.field private static final CONTENT_URI_SMS:Landroid/net/Uri; = null

.field private static final FIELD_DATE:Ljava/lang/String; = "date"

.field private static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final INTENT_MMS:Ljava/lang/String; = "com.lge.message.MMS_RECEIVED_ACTION_FOR_LGE_APPL"

.field public static final INTENT_SMS:Ljava/lang/String; = "com.lge.message.SMS_RECEIVED_ACTION_FOR_LGE_APPL"

.field public static final INTENT_UPLUS_MSG_NOTIFICATION:Ljava/lang/String; = "com.lguplus.umcgp5.im.action.msg.notification"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_SMS:Landroid/net/Uri;

    .line 17
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_MMS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 26
    return-void
.end method

.method private checkOnReceive()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "activity is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doMessageReceivedAction(Landroid/content/Intent;)I
    .locals 6
    .parameter "intent"

    .prologue
    .line 68
    const-string v3, "msg_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, msg_type:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mail received msg_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz v2, :cond_0

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const/4 v1, 0x2

    .line 77
    .local v1, messageType:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setMessageIndicatorReceived(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    return v1

    .line 74
    .end local v1           #messageType:I
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #messageType:I
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "CameraApp"

    const-string v4, "failure to read msg number"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private getRecentMessageTime(Landroid/database/Cursor;)J
    .locals 3
    .parameter "cursor"

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    .line 153
    .local v0, time:J
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 158
    :cond_0
    return-wide v0
.end method

.method private getRecentMessageTypeForNormal(Landroid/content/ContentResolver;JJI)I
    .locals 17
    .parameter "cr"
    .parameter "smsReceivedTime"
    .parameter "mmsReceivedTime"
    .parameter "type"

    .prologue
    .line 100
    const/4 v15, 0x0

    .line 101
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v3, v1

    .line 103
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "read=0 and type=1"

    .line 104
    .local v4, selectionSMS:Ljava/lang/String;
    const-string v8, "read=0 and m_type=132"

    .line 107
    .local v8, selectionMMS:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_SMS:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 108
    if-eqz v15, :cond_0

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTime(Landroid/database/Cursor;)J

    move-result-wide p2

    .line 110
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 111
    const/4 v15, 0x0

    .line 113
    :cond_0
    sget-object v6, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_MMS:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 114
    if-eqz v15, :cond_1

    .line 115
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTime(Landroid/database/Cursor;)J

    move-result-wide p4

    :cond_1
    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move/from16 v14, p6

    .line 117
    invoke-direct/range {v9 .. v14}, Lcom/lge/camera/receiver/MessageReceiver;->getTypeByReceivedTime(JJI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p6

    .line 122
    if-eqz v15, :cond_2

    .line 123
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v15, 0x0

    .line 128
    :cond_2
    :goto_0
    const/16 p1, 0x0

    .line 129
    return p6

    .line 118
    :catch_0
    move-exception v16

    .line 119
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "getRecentMessageTypeForNormal Exception! "

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    const/16 p6, 0x1

    .line 122
    if-eqz v15, :cond_2

    .line 123
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v15, 0x0

    goto :goto_0

    .line 122
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_3

    .line 123
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v15, 0x0

    :cond_3
    throw v1
.end method

.method private getTypeByReceivedTime(JJI)I
    .locals 2
    .parameter "smsReceivedTime"
    .parameter "mmsReceivedTime"
    .parameter "type"

    .prologue
    .line 134
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-wide/16 v0, 0x3e8

    mul-long/2addr p3, v0

    .line 139
    :cond_0
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    .line 140
    const/4 p5, 0x1

    .line 148
    :cond_1
    :goto_0
    return p5

    .line 141
    :cond_2
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 142
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    const/4 p5, 0x1

    goto :goto_0

    .line 145
    :cond_3
    const/4 p5, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getRecentMessageType()I
    .locals 7

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/ModelProperties;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v6, 0x0

    .line 96
    :goto_0
    return v6

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v2, 0x0

    .line 92
    .local v2, smsReceivedTime:J
    const-wide/16 v4, 0x0

    .line 93
    .local v4, mmsReceivedTime:J
    const/4 v6, 0x0

    .local v6, type:I
    move-object v0, p0

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTypeForNormal(Landroid/content/ContentResolver;JJI)I

    move-result v6

    .line 96
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0b032e

    .line 30
    invoke-direct {p0}, Lcom/lge/camera/receiver/MessageReceiver;->checkOnReceive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroadCastReceiver action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const/4 v3, 0x1

    .line 38
    .local v3, messageType:I
    const/4 v2, 0x0

    .line 40
    .local v2, isReadAllMsg:Z
    const-string v5, "com.lge.message.MSG_RECEIVED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/MessageReceiver;->doMessageReceivedAction(Landroid/content/Intent;)I

    move-result v3

    .line 42
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJBPlusModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    iget-object v6, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v6, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->toastLong(Ljava/lang/String;)V

    .line 57
    :cond_1
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v3, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setMessageIndicatorReceived(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_2
    const-string v5, "CameraApp"

    const-string v6, "worning intent rescived!!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v5, "lge.intent.action.UNREAD_MESSAGES"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    const-string v5, "number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 47
    .local v4, remainMsgCount:I
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remain message count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-nez v4, :cond_1

    .line 49
    const/4 v2, 0x1

    goto :goto_1

    .line 51
    .end local v4           #remainMsgCount:I
    :cond_3
    const-string v5, "com.lguplus.umcgp5.im.action.msg.notification"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    iget-object v6, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v6, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->toastLong(Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "CameraApp"

    const-string v6, "failure to read msg number"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method
