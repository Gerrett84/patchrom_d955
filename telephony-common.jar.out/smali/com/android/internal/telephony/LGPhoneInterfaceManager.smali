.class public Lcom/android/internal/telephony/LGPhoneInterfaceManager;
.super Lcom/android/internal/telephony/ILGTelephony$Stub;
.source "LGPhoneInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "LGPhoneInterfaceManager"

.field private static sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;


# instance fields
.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/ILGTelephony$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->publish()V

    .line 53
    return-void
.end method

.method static init(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/LGPhoneInterfaceManager;
    .locals 4
    .parameter "phone"

    .prologue
    .line 39
    const-class v1, Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    .line 45
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 43
    :cond_0
    const-string v0, "LGPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!\tsInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->sInstance:Lcom/android/internal/telephony/LGPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 68
    const-string v0, "LGPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LPhoneMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 57
    const-string v0, "Lphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    return-void
.end method


# virtual methods
.method public sendDefaultAttachProfile(I)V
    .locals 2
    .parameter "profileId"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDefaultAttachProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/LGPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDefaultAttachProfile(I)V

    .line 64
    return-void
.end method
