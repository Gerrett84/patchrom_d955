.class Lcom/android/lgesettings/quietmode/QuietModeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "QuietModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "QuietModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - Quietmode changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$100(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$100(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v1

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$202(Lcom/android/lgesettings/quietmode/QuietModeSettings;Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$300(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$200(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$300(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 146
    :cond_0
    return-void
.end method
