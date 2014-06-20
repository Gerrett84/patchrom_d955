.class Lcom/android/lgesettings/quietmode/QuietModeAlertActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "QuietModeAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v1, "lge.settings.QMODE_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "QuietModeAlertActivity"

    const-string v2, "onReceive ==>lge.settings.QMODE_OFF "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeAlertActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method
