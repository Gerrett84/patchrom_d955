.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;
.super Landroid/os/Handler;
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
    .line 101
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 106
    :pswitch_0
    const-string v2, "Airplanemodeenabler_VZW"

    const-string v3, "mHandler EVENT_SERVICE_STATE_CHANGED timer set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 108
    .local v1, timer:Ljava/util/Timer;
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1$1;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;)V

    .line 114
    .local v0, task:Ljava/util/TimerTask;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 117
    .end local v0           #task:Ljava/util/TimerTask;
    .end local v1           #timer:Ljava/util/Timer;
    :pswitch_1
    const-string v2, "Airplanemodeenabler_VZW"

    const-string v3, "mHandler EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z
    invoke-static {v2, v6}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Z)Z

    goto :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$100(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    .line 126
    const-string v2, "Airplanemodeenabler_VZW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler airplanemode_on_off = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$200()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$300()Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 128
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v2, v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 132
    const-string v2, "Airplanemodeenabler_VZW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_POWER_OFF airplanemode_on_off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$200()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->onAirplaneModeChanged()V
    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$400(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    .line 134
    invoke-static {v5}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$202(Z)Z

    .line 148
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z
    invoke-static {v2, v5}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Z)Z

    goto/16 :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$300()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    const-string v2, "Airplanemodeenabler_VZW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in else first ifglobal_airplane = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$300()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v2, "Airplanemodeenabler_VZW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceState.getState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v4, v4, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v2, v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v2, v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v2, v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v7, :cond_4

    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-object v2, v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 143
    :cond_4
    const-string v2, "Airplanemodeenabler_VZW"

    const-string v3, "EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER = in 2nd if"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->onAirplaneModeChanged()V
    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$400(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    .line 145
    invoke-static {v5}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$202(Z)Z

    goto/16 :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
