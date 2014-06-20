.class Lcom/android/lgesettings/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
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
    .line 87
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    const-string v3, "Airplanemodeenabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const-string v3, "Airplanemodeenabler"

    const-string v4, "----------------EVENT_SERVICE_STATE_CHANGED------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 95
    .local v2, timer:Ljava/util/Timer;
    new-instance v1, Lcom/android/lgesettings/AirplaneModeEnabler$1$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AirplaneModeEnabler$1$1;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler$1;)V

    .line 101
    .local v1, task:Ljava/util/TimerTask;
    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 104
    .end local v1           #task:Ljava/util/TimerTask;
    .end local v2           #timer:Ljava/util/Timer;
    :pswitch_1
    const-string v3, "Airplanemodeenabler"

    const-string v4, "----------------EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER----------------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 107
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z
    invoke-static {v3, v7}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler;Z)Z

    .line 111
    const-string v3, "Airplanemodeenabler"

    const-string v4, "mIsStateChanging is true ---- return "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v4}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$100(Lcom/android/lgesettings/AirplaneModeEnabler;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    iput-object v4, v3, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    .line 117
    const-string v3, "Airplanemodeenabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceState.getState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v5, v5, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$200()Z

    move-result v3

    if-ne v3, v7, :cond_4

    .line 119
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v3, v3, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$300(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    :cond_2
    const-string v3, "Airplanemodeenabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE_POWER_OFF airplanemode_on_off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$400()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    .line 125
    invoke-static {v6}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$402(Z)Z

    .line 137
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #setter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z
    invoke-static {v3, v6}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$002(Lcom/android/lgesettings/AirplaneModeEnabler;Z)Z

    goto/16 :goto_0

    .line 127
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$200()Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    const-string v3, "Airplanemodeenabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in else first ifglobal_airplane"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v3, v3, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v3, v3, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v7, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v3, v3, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 132
    :cond_5
    const-string v3, "Airplanemodeenabler"

    const-string v4, "in 2nd if"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$1;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    .line 134
    invoke-static {v6}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$402(Z)Z

    goto :goto_1

    .line 91
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
