.class public Litectokyo/wiflus/service/SmartShareSwitchClient;
.super Ljava/lang/Object;
.source "SmartShareSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;,
        Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;
    }
.end annotation


# instance fields
.field private final MSG_NOTIFY_UI:I

.field private final MSG_UNBIND_NOW:I

.field private bClosed:Z

.field private bIsBinded:Z

.field private bIsRegReceiver:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Litectokyo/wiflus/service/IRemoteCallback;

.field mConnection:Landroid/content/ServiceConnection;

.field mContext:Landroid/content/Context;

.field mExtra:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mInitClientInfo:Litectokyo/wiflus/service/bean/ClientInfoBean;

.field mNotifyTerminatedEvent:Z

.field private mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

.field mSessionId:J

.field mWFDChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;

.field private mWFDState:I

.field private mWiFlusListener:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Litectokyo/wiflus/service/OnWiFlusListener;",
            ">;"
        }
    .end annotation
.end field

.field mWiFlusStateChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;

.field private smartShareBeamContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Litectokyo/wiflus/service/OnWiFlusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "listener"
    .parameter "profileName"
    .parameter "thumbPath"
    .parameter "password"
    .parameter "basePath"
    .parameter "extra"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v2, 0x1

    iput v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->MSG_NOTIFY_UI:I

    .line 54
    const/4 v2, 0x2

    iput v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->MSG_UNBIND_NOW:I

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mAlertDialog:Landroid/app/AlertDialog;

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mNotifyTerminatedEvent:Z

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsRegReceiver:Z

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bClosed:Z

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    .line 80
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    .line 82
    new-instance v2, Litectokyo/wiflus/service/SmartShareSwitchClient$1;

    invoke-direct {v2, p0}, Litectokyo/wiflus/service/SmartShareSwitchClient$1;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;

    .line 701
    new-instance v2, Litectokyo/wiflus/service/SmartShareSwitchClient$2;

    invoke-direct {v2, p0}, Litectokyo/wiflus/service/SmartShareSwitchClient$2;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    .line 770
    new-instance v2, Litectokyo/wiflus/service/SmartShareSwitchClient$3;

    invoke-direct {v2, p0}, Litectokyo/wiflus/service/SmartShareSwitchClient$3;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mCallback:Litectokyo/wiflus/service/IRemoteCallback;

    .line 1087
    new-instance v2, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;)V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusStateChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;

    .line 1088
    new-instance v2, Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;)V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;

    .line 1089
    const/4 v2, -0x1

    iput v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDState:I

    .line 130
    const-string v2, "SSBEnabler"

    const-string v3, "new SmartShareSwitchClient"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bClosed:Z

    .line 132
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    .line 133
    move-object/from16 v0, p7

    iput-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mExtra:Ljava/lang/String;

    .line 136
    :try_start_0
    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    const-string v3, "itectokyo.wiflus.service"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    invoke-static/range {p5 .. p5}, Litectokyo/wiflus/service/ClientUtils;->getHostUniIdFromProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, duid:Ljava/lang/String;
    const-string v12, "0"

    .line 143
    .local v12, notifyId:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 144
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v13, thumbFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 149
    .end local v13           #thumbFile:Ljava/io/File;
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v12, v2}, Litectokyo/wiflus/service/Hoster;->makeHostInfo(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, hostInfo:Ljava/lang/String;
    new-instance v2, Litectokyo/wiflus/service/bean/ClientInfoBean;

    const/16 v3, 0x39

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v2 .. v7}, Litectokyo/wiflus/service/bean/ClientInfoBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mInitClientInfo:Litectokyo/wiflus/service/bean/ClientInfoBean;

    .line 151
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isMultiChennelConcurrent()Z

    move-result v11

    .line 152
    .local v11, isMCC:Z
    if-nez v11, :cond_2

    .line 153
    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mInitClientInfo:Litectokyo/wiflus/service/bean/ClientInfoBean;

    const-string v3, "-rtype\tSS\t-ctype\tSCC"

    invoke-virtual {v2, v3}, Litectokyo/wiflus/service/bean/ClientInfoBean;->setSpecifyInfo(Ljava/lang/String;)V

    .line 159
    :goto_1
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v6, v1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->copyMyThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->registerListener(Litectokyo/wiflus/service/OnWiFlusListener;)Z

    .line 163
    new-instance v10, Landroid/content/Intent;

    const-string v2, "wiflus.intent.action.CONNECT"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v10, intent:Landroid/content/Intent;
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->getSessionId()J

    move-result-wide v2

    iput-wide v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    .line 165
    const-string v2, "appId"

    const/16 v3, 0x39

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v2, "sessionId"

    iget-wide v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v8

    .line 169
    .local v8, bRet:Z
    if-nez v8, :cond_1

    .line 170
    const/16 v2, -0x3e9

    invoke-direct {p0, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyInitialized(I)V

    .line 173
    :cond_1
    invoke-direct {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->registerReceiver()V

    .line 174
    return-void

    .line 137
    .end local v6           #duid:Ljava/lang/String;
    .end local v7           #hostInfo:Ljava/lang/String;
    .end local v8           #bRet:Z
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #isMCC:Z
    .end local v12           #notifyId:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 138
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 155
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #duid:Ljava/lang/String;
    .restart local v7       #hostInfo:Ljava/lang/String;
    .restart local v11       #isMCC:Z
    .restart local v12       #notifyId:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mInitClientInfo:Litectokyo/wiflus/service/bean/ClientInfoBean;

    const-string v3, "-rtype\tSS\t-ctype\tMCC"

    invoke-virtual {v2, v3}, Litectokyo/wiflus/service/bean/ClientInfoBean;->setSpecifyInfo(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$0(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/ClientEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyToUI(Litectokyo/wiflus/service/ClientEvent;)V

    return-void
.end method

.method static synthetic access$1(Litectokyo/wiflus/service/SmartShareSwitchClient;Landroid/os/Message;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 660
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getCauseCode(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Litectokyo/wiflus/service/SmartShareSwitchClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1222
    invoke-direct {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->showDialog_WFD_RUNNING()V

    return-void
.end method

.method static synthetic access$11(Litectokyo/wiflus/service/SmartShareSwitchClient;)Litectokyo/wiflus/service/IRemoteCallback;
    .locals 1
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mCallback:Litectokyo/wiflus/service/IRemoteCallback;

    return-object v0
.end method

.method static synthetic access$12(Litectokyo/wiflus/service/SmartShareSwitchClient;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z

    return-void
.end method

.method static synthetic access$13(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 979
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyTerminated(I)V

    return-void
.end method

.method static synthetic access$14(Litectokyo/wiflus/service/SmartShareSwitchClient;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1089
    iput p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDState:I

    return-void
.end method

.method static synthetic access$2(Litectokyo/wiflus/service/SmartShareSwitchClient;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->close(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Litectokyo/wiflus/service/SmartShareSwitchClient;Litectokyo/wiflus/service/IRemoteWiFlusService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    return-void
.end method

.method static synthetic access$4(Litectokyo/wiflus/service/SmartShareSwitchClient;)Litectokyo/wiflus/service/IRemoteWiFlusService;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    return-object v0
.end method

.method static synthetic access$5(Litectokyo/wiflus/service/SmartShareSwitchClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 966
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyInitialized(I)V

    return-void
.end method

.method static synthetic access$6(Litectokyo/wiflus/service/SmartShareSwitchClient;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bClosed:Z

    return v0
.end method

.method static synthetic access$7(Litectokyo/wiflus/service/SmartShareSwitchClient;)Z
    .locals 1
    .parameter

    .prologue
    .line 1182
    invoke-direct {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getUserWifiEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Litectokyo/wiflus/service/SmartShareSwitchClient;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1147
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->setUserWifiEnable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Litectokyo/wiflus/service/SmartShareSwitchClient;)Z
    .locals 1
    .parameter

    .prologue
    .line 1206
    invoke-direct {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->checkWFDProcess()Z

    move-result v0

    return v0
.end method

.method private checkWFDProcess()Z
    .locals 3

    .prologue
    .line 1207
    .line 1208
    const-string v0, "SSBEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mWFDState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDState:I

    packed-switch v0, :pswitch_data_0

    .line 1216
    const/4 v0, 0x1

    .line 1219
    :goto_0
    return v0

    .line 1212
    :pswitch_0
    const/4 v0, 0x0

    .line 1213
    goto :goto_0

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private close(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 192
    const-string v0, "SSBEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmartShareSwitchClient.close err="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->unregisterReceiver()V

    .line 195
    invoke-virtual {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z

    .line 198
    :try_start_0
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    iget-wide v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-interface {v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService;->unregisterCallback(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    :try_start_1
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    .line 210
    invoke-direct {p0, p1}, Litectokyo/wiflus/service/SmartShareSwitchClient;->notifyTerminated(I)V

    .line 212
    :cond_0
    iput-boolean v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bClosed:Z

    .line 213
    return v3

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected static convertToHostBean(Litectokyo/wiflus/service/bean/HostInfoBean;)Litectokyo/wiflus/service/bean/HostBean;
    .locals 3
    .parameter "hib"

    .prologue
    .line 1064
    const/4 v1, 0x0

    .line 1065
    .local v1, host:Litectokyo/wiflus/service/bean/HostBean;
    if-eqz p0, :cond_0

    .line 1066
    new-instance v1, Litectokyo/wiflus/service/bean/HostBean;

    .end local v1           #host:Litectokyo/wiflus/service/bean/HostBean;
    invoke-direct {v1}, Litectokyo/wiflus/service/bean/HostBean;-><init>()V

    .line 1067
    .restart local v1       #host:Litectokyo/wiflus/service/bean/HostBean;
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setAppId(I)V

    .line 1068
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setUid(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setMac(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getRequestConnectMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setRequestConnectMac(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->isGroupOwner()Z

    move-result v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setGroupOwner(Z)V

    .line 1072
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getConnection()I

    move-result v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setConnection(I)V

    .line 1073
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setThumbPath(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Litectokyo/wiflus/service/bean/HostInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Litectokyo/wiflus/service/ClientUtils;->splitHostInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, array:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1077
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setProfileName(Ljava/lang/String;)V

    .line 1078
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Litectokyo/wiflus/service/bean/HostBean;->setStatus(Ljava/lang/String;)V

    .line 1081
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private copyMyThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "basePath"
    .parameter "myDuid"
    .parameter "thumbPath"

    .prologue
    .line 1015
    const/4 v1, 0x0

    .line 1016
    .local v1, bRet:Z
    if-eqz p3, :cond_0

    .line 1017
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v9, inFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1022
    const/4 v4, 0x0

    .line 1023
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1027
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Litectokyo/wiflus/service/ClientUtils;->appendLastSeperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, copyPath:Ljava/lang/String;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 1029
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1031
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 1032
    .local v8, i:I
    const/16 v10, 0x400

    :try_start_2
    new-array v0, v10, [B

    .line 1033
    .local v0, b:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    .line 1036
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1041
    if-eqz v5, :cond_5

    .line 1042
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1043
    const/4 v4, 0x0

    .line 1049
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v7, :cond_0

    .line 1050
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1051
    const/4 v6, 0x0

    .line 1060
    .end local v0           #b:[B
    .end local v2           #copyPath:Ljava/lang/String;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #i:I
    .end local v9           #inFile:Ljava/io/File;
    :cond_0
    :goto_2
    return v1

    .line 1034
    .restart local v0       #b:[B
    .restart local v2       #copyPath:Ljava/lang/String;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #i:I
    .restart local v9       #inFile:Ljava/io/File;
    :cond_1
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v7, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1037
    .end local v0           #b:[B
    :catch_0
    move-exception v10

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 1041
    .end local v2           #copyPath:Ljava/lang/String;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v8           #i:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :goto_3
    if-eqz v4, :cond_2

    .line 1042
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1043
    const/4 v4, 0x0

    .line 1049
    :cond_2
    :goto_4
    if-eqz v6, :cond_0

    .line 1050
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1051
    const/4 v6, 0x0

    goto :goto_2

    .line 1045
    :catch_1
    move-exception v3

    .line 1046
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1053
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1054
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1039
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 1041
    :goto_5
    if-eqz v4, :cond_3

    .line 1042
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1043
    const/4 v4, 0x0

    .line 1049
    :cond_3
    :goto_6
    if-eqz v6, :cond_4

    .line 1050
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1051
    const/4 v6, 0x0

    .line 1056
    :cond_4
    :goto_7
    throw v10

    .line 1045
    :catch_3
    move-exception v3

    .line 1046
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1053
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 1054
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1045
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #b:[B
    .restart local v2       #copyPath:Ljava/lang/String;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #i:I
    :catch_5
    move-exception v3

    .line 1046
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3           #e:Ljava/io/IOException;
    :cond_5
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1053
    :catch_6
    move-exception v3

    .line 1054
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1039
    .end local v0           #b:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #i:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #i:I
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1037
    .end local v2           #copyPath:Ljava/lang/String;
    .end local v8           #i:I
    :catch_7
    move-exception v10

    goto :goto_3

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v2       #copyPath:Ljava/lang/String;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private getCauseCode(Landroid/os/Message;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 661
    const/16 v0, -0x3eb

    .line 662
    .local v0, nRet:I
    if-eqz p1, :cond_0

    .line 663
    iget v1, p1, Landroid/os/Message;->arg2:I

    packed-switch v1, :pswitch_data_0

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 665
    :pswitch_0
    const/16 v0, -0x3eb

    .line 666
    goto :goto_0

    .line 668
    :pswitch_1
    const/16 v0, -0x3f3

    .line 669
    goto :goto_0

    .line 671
    :pswitch_2
    const/16 v0, -0x3f4

    .line 672
    goto :goto_0

    .line 674
    :pswitch_3
    const/16 v0, -0x3f5

    .line 675
    goto :goto_0

    .line 677
    :pswitch_4
    const/16 v0, -0x3f6

    .line 678
    goto :goto_0

    .line 680
    :pswitch_5
    const/16 v0, -0x3f7

    .line 681
    goto :goto_0

    .line 683
    :pswitch_6
    const/16 v0, -0x3eb

    .line 684
    goto :goto_0

    .line 686
    :pswitch_7
    const/16 v0, -0x3ed

    .line 687
    goto :goto_0

    .line 689
    :pswitch_8
    const/16 v0, -0x3ee

    .line 690
    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getResourceItecString(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 1249
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@string/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "itectokyo.wiflus.service"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUserWifiEnable()Z
    .locals 4

    .prologue
    .line 1183
    .line 1184
    const-string v1, "userwifi.tmp"

    .line 1186
    const/4 v0, 0x0

    .line 1187
    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist(Landroid/content/Context;)Z

    move-result v2

    .line 1188
    if-nez v2, :cond_1

    .line 1189
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist()Z

    move-result v2

    .line 1190
    if-eqz v2, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1199
    const/4 v0, 0x1

    .line 1201
    :goto_1
    return v0

    .line 1194
    :cond_1
    const-string v0, "/storage/emulated/0/"

    goto :goto_0

    .line 1201
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private notifyInitialized(I)V
    .locals 5
    .parameter "error"

    .prologue
    .line 967
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v3, 0x65

    invoke-direct {v0, v3}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 968
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Litectokyo/wiflus/service/ClientEvent;->put(II)Z

    .line 969
    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    monitor-enter v4

    .line 970
    :try_start_0
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 971
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Litectokyo/wiflus/service/OnWiFlusListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 969
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    const/4 v3, 0x0

    iput-boolean v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mNotifyTerminatedEvent:Z

    .line 977
    return-void

    .line 972
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Litectokyo/wiflus/service/OnWiFlusListener;

    .line 973
    .local v2, wiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;
    invoke-interface {v2, v0}, Litectokyo/wiflus/service/OnWiFlusListener;->onInitialized(Litectokyo/wiflus/service/ClientEvent;)Z

    goto :goto_0

    .line 969
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Litectokyo/wiflus/service/OnWiFlusListener;>;"
    .end local v2           #wiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyTerminated(I)V
    .locals 5
    .parameter "error"

    .prologue
    .line 980
    iget-boolean v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mNotifyTerminatedEvent:Z

    if-eqz v3, :cond_0

    .line 994
    :goto_0
    return-void

    .line 984
    :cond_0
    new-instance v0, Litectokyo/wiflus/service/ClientEvent;

    const/16 v3, 0x66

    invoke-direct {v0, v3}, Litectokyo/wiflus/service/ClientEvent;-><init>(I)V

    .line 985
    .local v0, event:Litectokyo/wiflus/service/ClientEvent;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Litectokyo/wiflus/service/ClientEvent;->put(II)Z

    .line 986
    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    monitor-enter v4

    .line 987
    :try_start_0
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 988
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Litectokyo/wiflus/service/OnWiFlusListener;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 986
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    const/4 v3, 0x1

    iput-boolean v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mNotifyTerminatedEvent:Z

    goto :goto_0

    .line 989
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Litectokyo/wiflus/service/OnWiFlusListener;

    .line 990
    .local v2, wiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;
    invoke-interface {v2, v0}, Litectokyo/wiflus/service/OnWiFlusListener;->onTerminated(Litectokyo/wiflus/service/ClientEvent;)Z

    goto :goto_1

    .line 986
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Litectokyo/wiflus/service/OnWiFlusListener;>;"
    .end local v2           #wiFlusListener:Litectokyo/wiflus/service/OnWiFlusListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyToUI(Litectokyo/wiflus/service/ClientEvent;)V
    .locals 6
    .parameter

    .prologue
    .line 997
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    monitor-enter v1

    .line 998
    :try_start_0
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 999
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    monitor-exit v1

    .line 1009
    return-void

    .line 1000
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/OnWiFlusListener;

    .line 1001
    invoke-interface {v0, p1}, Litectokyo/wiflus/service/OnWiFlusListener;->onEvent(Litectokyo/wiflus/service/ClientEvent;)Z

    .line 1003
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Litectokyo/wiflus/service/ClientEvent;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/MessageBean;

    .line 1004
    if-eqz v0, :cond_0

    .line 1005
    const-string v3, "SSBEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EVENT "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Litectokyo/wiflus/service/bean/MessageBean;->getCommand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Litectokyo/wiflus/service/bean/MessageBean;->getData()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerListener(Litectokyo/wiflus/service/OnWiFlusListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusListener:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    monitor-exit v1

    .line 235
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 1092
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_SERVICE_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1093
    sget-object v1, Litectokyo/wiflus/service/Broadcastor;->WIFLUS_SERVICE_WANT_UNBIND_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusStateChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1096
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1097
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_0

    .line 1099
    const-string v1, "wfd_state"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDState:I

    .line 1102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsRegReceiver:Z

    .line 1103
    return-void
.end method

.method private setUserWifiEnable(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1149
    .line 1150
    const-string v2, "userwifi.tmp"

    .line 1151
    const/4 v1, 0x0

    .line 1152
    iget-object v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist(Landroid/content/Context;)Z

    move-result v3

    .line 1153
    if-nez v3, :cond_1

    .line 1154
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist()Z

    move-result v3

    .line 1155
    if-eqz v3, :cond_0

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1162
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1164
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1165
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1166
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1167
    const-string v3, "UserWifi"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1168
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1169
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    const/4 v0, 0x1

    .line 1178
    :goto_1
    return v0

    .line 1159
    :cond_1
    const-string v1, "/storage/emulated/0/"

    goto :goto_0

    .line 1175
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1171
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private showDialog_WFD_RUNNING()V
    .locals 6

    .prologue
    .line 1223
    const-string v0, "SSBEnabler"

    const-string v1, "showDialog_WFD_RUNNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1225
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1226
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "dialog_title_note"

    invoke-direct {p0, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1227
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "dialog_running_other_connect"

    invoke-direct {p0, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1228
    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    const-string v5, "smartshare_app_name"

    invoke-direct {p0, v5}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getResourceItecString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1229
    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    const-string v5, "miracast_app_name"

    invoke-direct {p0, v5}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getResourceItecString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1230
    iget-object v4, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    const-string v5, "miracast_app_name"

    invoke-direct {p0, v5}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getResourceItecString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1227
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1231
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->smartShareBeamContext:Landroid/content/Context;

    const-string v2, "btn_ok"

    invoke-direct {p0, v2}, Litectokyo/wiflus/service/SmartShareSwitchClient;->getResourceItecString(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Litectokyo/wiflus/service/SmartShareSwitchClient$4;

    invoke-direct {v2, p0}, Litectokyo/wiflus/service/SmartShareSwitchClient$4;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1238
    new-instance v1, Litectokyo/wiflus/service/SmartShareSwitchClient$5;

    invoke-direct {v1, p0}, Litectokyo/wiflus/service/SmartShareSwitchClient$5;-><init>(Litectokyo/wiflus/service/SmartShareSwitchClient;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1224
    iput-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1246
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 1106
    iget-boolean v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsRegReceiver:Z

    if-eqz v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsRegReceiver:Z

    .line 1109
    :try_start_0
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWiFlusStateChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WiFlusStateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1110
    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mWFDChangedReceiver:Litectokyo/wiflus/service/SmartShareSwitchClient$WFDChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1111
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 181
    const-string v0, "SSBEnabler"

    const-string v1, "SmartShareSwitchClient.close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->close(I)Z

    .line 183
    iput-boolean v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bClosed:Z

    .line 184
    return v2
.end method

.method public isBinded()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->bIsBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecoveryHotspotInfo(Z)Z
    .locals 5
    .parameter

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 444
    const-string v2, "onoff"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    new-instance v2, Litectokyo/wiflus/service/bean/CommandBean;

    const/16 v3, 0x84

    invoke-direct {v2, v3, v1}, Litectokyo/wiflus/service/bean/CommandBean;-><init>(ILandroid/os/Bundle;)V

    .line 446
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    iget-wide v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-interface {v1, v3, v4, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService;->setCommand(JLitectokyo/wiflus/service/bean/CommandBean;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    if-nez v1, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRecoveryWiFiDirectInfo(Z)Z
    .locals 5
    .parameter

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 426
    const-string v2, "onoff"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    new-instance v2, Litectokyo/wiflus/service/bean/CommandBean;

    const/16 v3, 0x83

    invoke-direct {v2, v3, v1}, Litectokyo/wiflus/service/bean/CommandBean;-><init>(ILandroid/os/Bundle;)V

    .line 428
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    iget-wide v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-interface {v1, v3, v4, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService;->setCommand(JLitectokyo/wiflus/service/bean/CommandBean;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 429
    if-nez v1, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRecoveryWiFiInfo(ZLjava/util/ArrayList;Landroid/net/wifi/WifiInfo;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/net/wifi/WifiInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    invoke-virtual {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 408
    const-string v2, "onoff"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    new-instance v2, Litectokyo/wiflus/service/bean/CommandBean;

    const/16 v3, 0x82

    invoke-direct {v2, v3, v1, p2, p3}, Litectokyo/wiflus/service/bean/CommandBean;-><init>(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/net/wifi/WifiInfo;)V

    .line 410
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    iget-wide v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-interface {v1, v3, v4, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService;->setCommand(JLitectokyo/wiflus/service/bean/CommandBean;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 411
    if-nez v1, :cond_0

    .line 412
    const/4 v0, 0x1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStandbyTime(I)Z
    .locals 5
    .parameter

    .prologue
    .line 331
    const-string v0, "SSBEnabler"

    const-string v1, "SmartShareSwitchClient.setStandbyTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v2, "time"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    new-instance v2, Litectokyo/wiflus/service/bean/CommandBean;

    const/16 v3, 0x6c

    invoke-direct {v2, v3, v1}, Litectokyo/wiflus/service/bean/CommandBean;-><init>(ILandroid/os/Bundle;)V

    .line 338
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    iget-wide v3, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-interface {v1, v3, v4, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService;->setCommand(JLitectokyo/wiflus/service/bean/CommandBean;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    if-nez v1, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v1

    .line 343
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public shutdownNow()Z
    .locals 4

    .prologue
    .line 462
    const-string v0, "SSBEnabler"

    const-string v1, "SmartShareSwitchClient.shutdownNow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0}, Litectokyo/wiflus/service/SmartShareSwitchClient;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    :try_start_0
    iget-object v1, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mRemoteWiFlusService:Litectokyo/wiflus/service/IRemoteWiFlusService;

    iget-wide v2, p0, Litectokyo/wiflus/service/SmartShareSwitchClient;->mSessionId:J

    invoke-interface {v1, v2, v3}, Litectokyo/wiflus/service/IRemoteWiFlusService;->shutdownNow(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
