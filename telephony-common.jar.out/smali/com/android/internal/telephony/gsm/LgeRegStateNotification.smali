.class public Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
.super Ljava/lang/Object;
.source "LgeRegStateNotification.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field static final REJECTCAUSE_NOTIFICATION_ID:I = 0xc73b

.field static final SEARCHING_NOTIFICATION_ID:I = 0xc73a

.field static final SUCCESS_NOTIFICATION_ID:I = 0xc739

.field private static sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;


# instance fields
.field private mFailNotification:Landroid/app/Notification;

.field private mHasShownOperatorInfo:Z

.field private mIMSI:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOperatorMccMnc:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPrevOperatorName:Ljava/lang/String;

.field private mRef:I

.field private mSearchingNotification:Landroid/app/Notification;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSuccessNotification:Landroid/app/Notification;

.field private newSS:Landroid/telephony/ServiceState;

.field private prevSS:Landroid/telephony/ServiceState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 73
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    .line 78
    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    .line 79
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 83
    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 87
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
    .locals 4
    .parameter "phone"

    .prologue
    .line 91
    const-class v1, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    .line 96
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v2, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    .line 98
    const-string v0, "CALL_FRW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LgeRegStateNotification] getInstance():: sInstance.mRef = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v3, v3, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOperatorInfo()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    .line 247
    return-void
.end method

.method private showOperatorInfoLGU()V
    .locals 8

    .prologue
    const/high16 v7, 0x1000

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getUsimIsSponIMSI()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIMSI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 255
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Zone1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    .line 265
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, RoamingIntent:Landroid/content/Intent;
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.imsi.RoamingIMSISelect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const v2, 0x20203cb

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xc739

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    return-void

    .line 257
    .end local v0           #RoamingIntent:Landroid/content/Intent;
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    if-nez v1, :cond_2

    .line 258
    const-string v1, "no Imsi zone"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Zone2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    goto :goto_0
.end method

.method private showOperatorInfoSKT()V
    .locals 9

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, TRoamingIntent:Landroid/content/Intent;
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG-F240S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG-F260S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG-F320S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.troaming.TRoamingFGK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :goto_0
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    .line 291
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/16 v2, 0x20

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    const v2, 0x202053b

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SKT_ROAMING_SUCCESS_NOTIFICATION_TITLE"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 298
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0xc739

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSuccessNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 299
    return-void

    .line 286
    :cond_1
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.troaming.TRoamingonLTE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private showSearching()V
    .locals 5

    .prologue
    .line 302
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    const v1, 0x202054f

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_TITLE"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPLUS_ROAMING_SEARCHING_NOTIFICATION_CONTENT"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73a

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSearchingNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 311
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 104
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose mRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->sInstance:Lcom/android/internal/telephony/gsm/LgeRegStateNotification;

    iget v2, v2, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mRef:I

    if-gtz v1, :cond_0

    .line 108
    const v1, 0xc739

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    const v1, 0xc73a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 110
    const-string v1, "dispose() mRef <= 0 : clear succes and searching notification"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 113
    :cond_0
    const v1, 0xc73b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 114
    const-string v1, "CALL_FRW"

    const-string v2, "dispose(): clear reject cause notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public handleNotification()V
    .locals 7

    .prologue
    const v6, 0xc73b

    const v5, 0xc73a

    const v4, 0xc739

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    .line 122
    const-string v0, "KR"

    const-string v1, "LGU"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVoiceSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isVoiceSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDataSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isDataSearching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 135
    const-string v0, "Airplane Mode : clear success, searching, and reject cause notification."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 195
    :cond_0
    :goto_0
    const-string v0, "KR"

    const-string v1, "SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 204
    const-string v0, "Airplane Mode : clear both success & fail notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    .line 241
    :cond_1
    :goto_1
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    if-nez v0, :cond_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->getOperatorInfo()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    .line 149
    const-string v0, "Show roaming operator info. since operator name changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 150
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    .line 160
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mIMSI:I

    if-nez v0, :cond_5

    .line 161
    const-string v0, "update operator info since imsi is not decided yet"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    .line 189
    :cond_5
    :goto_3
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_0

    .line 151
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoLGU()V

    .line 154
    const-string v0, "Show roaming operator info. since it has not been shown before"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 155
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_2

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isVoiceSearching()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isDataSearching()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSimState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_9

    .line 174
    const-string v0, "Show searching ..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showSearching()V

    .line 178
    :cond_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_3

    .line 182
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 184
    const-string v0, "clear success notification or searching notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 185
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_3

    .line 208
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->getOperatorInfo()V

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mOperatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mPrevOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoSKT()V

    .line 217
    const-string v0, "Show roaming operator info. since operator name changed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 218
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    .line 235
    :cond_c
    :goto_4
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->newSS:Landroid/telephony/ServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->prevSS:Landroid/telephony/ServiceState;

    goto/16 :goto_1

    .line 219
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    if-nez v0, :cond_c

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->showOperatorInfoSKT()V

    .line 222
    const-string v0, "Show roaming operator info. since it has not been shown before."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 223
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_4

    .line 229
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 230
    const-string v0, "clear success notification"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 231
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mHasShownOperatorInfo:Z

    goto :goto_4
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 325
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeRegStateNotification] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public setSimState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .parameter "simState"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mSimState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 318
    const-string v0, "cancel searching notification since sim is not inserted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->log(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeRegStateNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0xc73a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 321
    :cond_0
    return-void
.end method
