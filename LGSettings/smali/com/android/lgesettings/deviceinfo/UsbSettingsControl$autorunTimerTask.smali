.class public Lcom/android/lgesettings/deviceinfo/UsbSettingsControl$autorunTimerTask;
.super Ljava/util/TimerTask;
.source "UsbSettingsControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "autorunTimerTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 175
    const-string v1, "TIMEOUT"

    .line 176
    .local v1, timout:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->access$000()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.autorun_timeout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 182
    return-void
.end method
