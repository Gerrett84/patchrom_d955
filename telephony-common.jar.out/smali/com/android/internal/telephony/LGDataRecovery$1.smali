.class Lcom/android/internal/telephony/LGDataRecovery$1;
.super Landroid/content/BroadcastReceiver;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGDataRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGDataRecovery;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGDataRecovery;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 199
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 202
    :cond_2
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 203
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/internal/telephony/LGDataRecovery;->isScreenOn:Z

    .line 204
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v12, 0x42065

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 206
    :cond_3
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 207
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/internal/telephony/LGDataRecovery;->isScreenOn:Z

    .line 208
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v12, 0x42066

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 210
    :cond_4
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 211
    const-class v10, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v11, "state"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 212
    .local v9, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v9, v10, :cond_5

    .line 213
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v12, 0x42068

    invoke-virtual {v11, v12, p2}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    .line 215
    :cond_5
    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v9, v10, :cond_0

    .line 216
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    iget-object v11, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v12, 0x42067

    invoke-virtual {v11, v12, p2}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 218
    .end local v9           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_6
    const-string v10, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 219
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v11, 0x4206a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 220
    .local v7, msg:Landroid/os/Message;
    const-string v10, "data.stall.alram.tag"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 221
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 222
    .end local v7           #msg:Landroid/os/Message;
    :cond_7
    const-string v10, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 223
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const v11, 0x4206b

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 224
    .restart local v7       #msg:Landroid/os/Message;
    const-string v10, "conn.check.alram.tag"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, iface:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v2, data:Landroid/os/Bundle;
    const-string v10, "iface"

    invoke-virtual {v2, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 228
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/LGDataRecovery;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 229
    .end local v2           #data:Landroid/os/Bundle;
    .end local v5           #iface:Ljava/lang/String;
    .end local v7           #msg:Landroid/os/Message;
    :cond_8
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 230
    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 232
    .local v8, networkInfo:Landroid/net/NetworkInfo;
    iget-object v11, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_1
    #setter for: Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v11, v10}, Lcom/android/internal/telephony/LGDataRecovery;->access$002(Lcom/android/internal/telephony/LGDataRecovery;Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 233
    .end local v8           #networkInfo:Landroid/net/NetworkInfo;
    :cond_a
    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 234
    const-string v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    const/4 v4, 0x1

    .line 237
    .local v4, enabled:Z
    :goto_2
    if-nez v4, :cond_0

    .line 240
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/LGDataRecovery;->mIsWifiConnected:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->access$002(Lcom/android/internal/telephony/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .line 234
    .end local v4           #enabled:Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    .line 242
    :cond_c
    const-string v10, "com.lge.ims.action.CALL_STATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 243
    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 244
    .local v6, imscallstate:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMS_CALL_STATE intent received: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " [1:active / 0:inactive]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 245
    const/4 v10, 0x1

    if-ne v6, v10, :cond_d

    .line 246
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const/4 v11, 0x1

    #setter for: Lcom/android/internal/telephony/LGDataRecovery;->mIMScall:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->access$102(Lcom/android/internal/telephony/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .line 248
    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    const/4 v11, 0x0

    #setter for: Lcom/android/internal/telephony/LGDataRecovery;->mIMScall:Z
    invoke-static {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->access$102(Lcom/android/internal/telephony/LGDataRecovery;Z)Z

    goto/16 :goto_0

    .line 250
    .end local v6           #imscallstate:I
    :cond_e
    const-string v10, "lg-data-pulllog"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 252
    const-string v10, "LG Data pull log"

    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 254
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v10

    if-nez v10, :cond_f

    .line 255
    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 256
    .local v1, b:Landroid/os/IBinder;
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    #setter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10, v11}, Lcom/android/internal/telephony/LGDataRecovery;->access$202(Lcom/android/internal/telephony/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;

    .line 260
    .end local v1           #b:Landroid/os/IBinder;
    :cond_f
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/LGDataRecovery$1;->this$0:Lcom/android/internal/telephony/LGDataRecovery;

    #getter for: Lcom/android/internal/telephony/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->access$200(Lcom/android/internal/telephony/LGDataRecovery;)Landroid/os/INetworkManagementService;

    move-result-object v10

    const-string v11, "lgdata_pulllog"

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 261
    :catch_0
    move-exception v3

    .line 262
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "Error in pulling LGData log"

    invoke-static {v10}, Lcom/android/internal/telephony/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
