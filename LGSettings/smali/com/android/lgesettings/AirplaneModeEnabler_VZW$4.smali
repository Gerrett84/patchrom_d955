.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, state:I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 198
    :cond_0
    const-string v1, "onAirplaneModeChanged"

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

    .line 199
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z
    invoke-static {v1, v4}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Z)Z

    .line 200
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$400(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    .line 201
    invoke-static {v4}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$202(Z)Z

    .line 211
    .end local v0           #state:I
    :cond_1
    :goto_0
    return-void

    .line 202
    .restart local v0       #state:I
    :cond_2
    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    const/4 v2, 0x1

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z
    invoke-static {v1, v2}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Z)Z

    goto :goto_0
.end method
