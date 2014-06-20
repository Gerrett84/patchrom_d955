.class public Lcom/android/lgesettings/powersave/PowerSaveServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveServiceManager.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->initPowerSaveStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->doPowerSaveService()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private doPowerSaveService()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    const-string v0, "PowerSaveServiceManager"

    const-string v1, "doPowerSaveService, Start the Power save service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private initPowerSaveStarted()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_started"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, powerSaveStarted:I
    const-string v2, "PowerSaveServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPowerSaveStarted, POWER_SAVE_STARTED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 78
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSave;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/lgesettings/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, powerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->doRestore()V

    .line 81
    .end local v0           #powerSave:Lcom/android/lgesettings/powersave/PowerSave;
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_started"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "PowerSaveServiceManager"

    const-string v2, "onReceive android.intent.action.BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSaveServiceManager$2;-><init>(Lcom/android/lgesettings/powersave/PowerSaveServiceManager;)V

    .line 48
    .local v0, doThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    .end local v0           #doThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v1, "PowerSaveServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive unexpected intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
