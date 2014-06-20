.class Lcom/android/lgesettings/ResetSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ResetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/lgesettings/ResetSettings$5;->this$0:Lcom/android/lgesettings/ResetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, action:Ljava/lang/String;
    const-string v1, "lge.settings.intent.action.RESET_SETTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/lgesettings/ResetSettings$5;->this$0:Lcom/android/lgesettings/ResetSettings;

    #calls: Lcom/android/lgesettings/ResetSettings;->updateSettingsDB()V
    invoke-static {v1}, Lcom/android/lgesettings/ResetSettings;->access$400(Lcom/android/lgesettings/ResetSettings;)V

    .line 258
    :cond_0
    return-void
.end method
