.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler_VZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AirplaneModeEnabler_VZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 162
    .local v0, airplaneModeEnabled:Z
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$600(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 163
    const-string v1, "Airplanemodeenabler_VZW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAirplaneModeObserver () start fromSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-boolean v3, v3, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromSettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-boolean v1, v1, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromSettings:Z

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$400(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    .line 166
    invoke-static {v4}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$202(Z)Z

    .line 171
    :goto_0
    const-string v1, "onAirplaneModeChanged - ContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airplanemode_on_off="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$200()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iput-boolean v4, v1, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromSettings:Z

    goto :goto_0
.end method
