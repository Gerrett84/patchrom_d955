.class Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;
.super Lcom/broadcom/bt/gatt/BluetoothGattCallback;
.source "LGSmartOneKeyProfileClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-direct {p0}, Lcom/broadcom/bt/gatt/BluetoothGattCallback;-><init>()V

    .line 142
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1$1;-><init>(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAppRegistered(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 134
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public onCharacteristicChanged(Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;)V
    .locals 13
    .parameter "characteristic"

    .prologue
    const/4 v12, 0x4

    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, key:Ljava/lang/String;
    const/4 v8, 0x0

    .line 220
    .local v8, value:Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.lge.action.BLE_ONEKEY"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 222
    .local v1, data:[B
    const/4 v5, 0x0

    .line 224
    .local v5, isWakeOn:Z
    if-eqz v1, :cond_7

    .line 225
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCharacteristicChanged data[0]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_3

    .line 228
    const-string v6, "ShortKey"

    .line 239
    :cond_0
    :goto_0
    const-string v9, "_service"

    const-string v10, "lge_onekey_service"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v9, "_key"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendBroadcast to Application key Value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_1
    const-string v9, "persist.service.btui.onekey"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    .line 248
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "---------- All Function Value : null -> Set Default(All enable)"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v9, "_onekeyMusic"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v9, "_onekeyCamera"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v9, "_onekeyVoiceCall"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v9, "_onekeyFindme"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_1
    if-eqz v5, :cond_2

    .line 309
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v10, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v10, v10, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    #calls: Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->acquireScreenWakeLock(Landroid/content/Context;)V
    invoke-static {v9, v10}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->access$000(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Landroid/content/Context;)V

    .line 310
    const/4 v5, 0x0

    .line 313
    :cond_2
    iget-object v9, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v9, v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 317
    .end local v1           #data:[B
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isWakeOn:Z
    :goto_2
    return-void

    .line 229
    .restart local v1       #data:[B
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #isWakeOn:Z
    :cond_3
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x51

    if-ne v9, v10, :cond_4

    .line 230
    const-string v6, "DoubleKey"

    goto :goto_0

    .line 231
    :cond_4
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x52

    if-ne v9, v10, :cond_5

    .line 232
    const-string v6, "TripleKey"

    goto :goto_0

    .line 233
    :cond_5
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x53

    if-ne v9, v10, :cond_6

    .line 234
    const-string v6, "LongKey"

    goto/16 :goto_0

    .line 235
    :cond_6
    const/4 v9, 0x0

    aget-byte v9, v1, v9

    const/16 v10, 0x60

    if-ne v9, v10, :cond_0

    .line 236
    const-string v6, "FivefoldKey"

    goto/16 :goto_0

    .line 244
    :cond_7
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "sendBroadcast to Application key Value is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 314
    .end local v1           #data:[B
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isWakeOn:Z
    :catch_0
    move-exception v2

    .line 315
    .local v2, e:Ljava/lang/NullPointerException;
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCharacteristicChanged NullPointerException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 254
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #data:[B
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #isWakeOn:Z
    :cond_8
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const-string v9, "persist.service.btui.onekey"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 255
    .local v7, onekeyFunctionValue:Ljava/lang/String;
    const/4 v9, 0x4

    new-array v3, v9, [C

    .line 257
    .local v3, functionValue:[C
    const/4 v0, 0x0

    .local v0, control_funcion:I
    :goto_3
    if-ge v0, v12, :cond_1

    .line 258
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v3, v0

    .line 259
    const-string v9, "1"

    aget-char v10, v3, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 262
    :pswitch_0
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyMusic Function Value : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v9, "_onekeyMusic"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 266
    :pswitch_1
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyCamera Function Value : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v9, "_onekeyCamera"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v9, "LongKey"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 269
    const/4 v5, 0x1

    goto :goto_4

    .line 273
    :pswitch_2
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyVoiceCall Function Value : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v9, "_onekeyVoiceCall"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 277
    :pswitch_3
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyFindme Function Value : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v9, "_onekeyFindme"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 283
    :cond_a
    const-string v9, "0"

    aget-char v10, v3, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 284
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 286
    :pswitch_4
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyMusic Function Value : false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v9, "_onekeyMusic"

    const-string v10, "false"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 290
    :pswitch_5
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyCamera Function Value : false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v9, "_onekeyCamera"

    const-string v10, "false"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 294
    :pswitch_6
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyVoiceCall Function Value : false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v9, "_onekeyVoiceCall"

    const-string v10, "false"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 298
    :pswitch_7
    sget-object v9, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v10, "_onekeyFindme Function Value : false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v9, "_onekeyFindme"

    const-string v10, "false"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 284
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCharacteristicRead(Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;I)V
    .locals 3
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 212
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead() - characteristic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/gatt/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "status"
    .parameter "newState"

    .prologue
    .line 162
    if-nez p1, :cond_1

    .line 163
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "onConnectionStateChange() - device null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG RCB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 168
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionStateChange() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICECONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-nez p3, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_DEVICEDISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "This onConnectionStateChange callback is not for smartonekey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScanResult(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .parameter "device"
    .parameter "rssi"
    .parameter "scanRecord"

    .prologue
    .line 139
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanResult() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "status"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "onServicesDiscovered() - device null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG RCB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServicesDiscovered() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.device.action.LG_SMART_ONEKEY_REFRESHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$1;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mainContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v2, "This onServicesDiscovered callback is not for smartonekey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
