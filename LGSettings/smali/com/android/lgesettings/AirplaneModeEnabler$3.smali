.class Lcom/android/lgesettings/AirplaneModeEnabler$3;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

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

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, state:I
    const-string v1, "Airplanemodeenabler"

    const-string v2, "BluetoothAdapter.ACTION_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 180
    :cond_0
    const-string v1, "Airplanemodeenabler"

    const-string v2, "BT status is STATE_ON/STATE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v1, "Airplanemodeenabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "airplanemode_on_off="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$400()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z
    invoke-static {v1, v4}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler;Z)Z

    .line 183
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    .line 184
    invoke-static {v4}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$402(Z)Z

    .line 223
    .end local v0           #state:I
    :cond_1
    :goto_0
    return-void

    .line 211
    .restart local v0       #state:I
    :cond_2
    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 212
    :cond_3
    const-string v1, "Airplanemodeenabler"

    const-string v2, "BT status is STATE_TURNING_ON/STATE_TURNING_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    const/4 v2, 0x1

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z
    invoke-static {v1, v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler;Z)Z

    .line 215
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$600(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v1, v1, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v1, v1, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
