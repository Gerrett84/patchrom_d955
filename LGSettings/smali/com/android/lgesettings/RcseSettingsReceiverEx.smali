.class public Lcom/android/lgesettings/RcseSettingsReceiverEx;
.super Landroid/content/BroadcastReceiver;
.source "RcseSettingsReceiverEx.java"


# static fields
.field private static KEY_NAME:Ljava/lang/String;

.field private static PREFERENCE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "gsma.joyn.preferences"

    sput-object v0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->PREFERENCE_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "gsma.joyn.enabled"

    sput-object v0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->KEY_NAME:Ljava/lang/String;

    .line 55
    const-string v0, "RcsesettingsEx"

    sput-object v0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->sp:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldWriteableFiles",
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    move-object v2, p1

    .line 63
    .local v2, mcontext:Landroid/content/Context;
    const/4 v1, 0x0

    .line 64
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    .local v0, RcseStatus:Ljava/lang/Boolean;
    const-string v5, "gsma.joyn.enabled"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 67
    sget-object v3, Lcom/android/lgesettings/RcseSettingsReceiverEx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RcseStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->sp:Landroid/content/SharedPreferences;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/lgesettings/RcseSettingsReceiverEx;->PREFERENCE_NAME:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->sp:Landroid/content/SharedPreferences;

    .line 70
    iget-object v3, p0, Lcom/android/lgesettings/RcseSettingsReceiverEx;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/lgesettings/RcseSettingsReceiverEx;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    sget-object v3, Lcom/android/lgesettings/RcseSettingsReceiverEx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void

    :cond_0
    move v3, v4

    .line 66
    goto :goto_0
.end method
