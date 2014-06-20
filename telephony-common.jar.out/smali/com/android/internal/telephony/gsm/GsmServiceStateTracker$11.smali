.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;
.super Ljava/util/TimerTask;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->faCHGReboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pm:Landroid/os/PowerManager;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 5975
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 5976
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;->pm:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5979
    :try_start_0
    const-string v1, "GSM"

    const-string v2, "EVENT_SKT_FA_CHG_DONE Reboot :: try"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$11;->pm:Landroid/os/PowerManager;

    const-string v2, "boot"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5986
    :goto_0
    return-void

    .line 5982
    :catch_0
    move-exception v0

    .line 5983
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "GSM"

    const-string v2, "EVENT_SKT_FA_CHG_DONE Reboot :: catch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
