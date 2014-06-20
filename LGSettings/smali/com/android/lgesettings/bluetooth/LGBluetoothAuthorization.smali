.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothAuthorization;
.super Ljava/lang/Object;
.source "LGBluetoothAuthorization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkOppAcceptFile(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "intent"
    .parameter "returnPackage"
    .parameter "returnClass"

    .prologue
    .line 71
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 72
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 74
    .local v4, requestType:I
    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    .line 76
    const-string v5, "LGBluetoothAuthorization"

    const-string v6, "The request type is NOT the opp"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 81
    :cond_0
    const-string v5, "LGBluetoothAuthorization"

    const-string v6, "The request type is the opp"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 88
    move-object v3, p1

    .line 89
    .local v3, rPackage:Ljava/lang/String;
    move-object v2, p2

    .line 95
    .local v2, rClass:Ljava/lang/String;
    :goto_1
    const-string v5, "LGBluetoothAuthorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  Class : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, btIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 91
    .end local v0           #btIntent:Landroid/content/Intent;
    .end local v2           #rClass:Ljava/lang/String;
    .end local v3           #rPackage:Ljava/lang/String;
    :cond_1
    const-string v3, "com.android.bluetooth"

    .line 92
    .restart local v3       #rPackage:Ljava/lang/String;
    const-string v2, "com.android.bluetooth.opp.BluetoothOppIncomingFileConfirmActivity"

    .restart local v2       #rClass:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getConnectionDisplayText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "requestType"
    .parameter "remoteName"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    const v1, 0x7f0800a6

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, dialog_text:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    const v1, 0x7f0814f7

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    goto :goto_0

    .line 199
    :pswitch_1
    const v1, 0x7f0814fa

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    goto :goto_0

    .line 202
    :pswitch_2
    const v1, 0x7f081503

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    goto :goto_0

    .line 205
    :pswitch_3
    const v1, 0x7f081500

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getNotificationId(I)I
    .locals 1
    .parameter "requestType"

    .prologue
    .line 106
    const v0, 0x1080080

    .line 107
    .local v0, notificationId:I
    packed-switch p0, :pswitch_data_0

    .line 131
    :goto_0
    :pswitch_0
    return v0

    .line 109
    :pswitch_1
    const v0, 0x1080080

    .line 110
    goto :goto_0

    .line 112
    :pswitch_2
    const v0, -0xf4241

    .line 113
    goto :goto_0

    .line 115
    :pswitch_3
    const v0, -0xf4255

    .line 116
    goto :goto_0

    .line 120
    :pswitch_4
    const v0, -0xf425f

    .line 121
    goto :goto_0

    .line 123
    :pswitch_5
    const v0, -0xf4269

    .line 124
    goto :goto_0

    .line 126
    :pswitch_6
    const v0, -0xf424b

    .line 127
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static getRequestTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "requestType"

    .prologue
    .line 215
    const-string v0, "unknown"

    .line 216
    .local v0, text:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 244
    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    const-string v0, "Pbook"

    .line 219
    goto :goto_0

    .line 221
    :pswitch_1
    const-string v0, "FTP"

    .line 222
    goto :goto_0

    .line 224
    :pswitch_2
    const-string v0, "MAP"

    .line 225
    goto :goto_0

    .line 227
    :pswitch_3
    const-string v0, "MAP(MSE)"

    .line 228
    goto :goto_0

    .line 230
    :pswitch_4
    const-string v0, "MAP(MNS)"

    .line 231
    goto :goto_0

    .line 233
    :pswitch_5
    const-string v0, "SAP"

    .line 234
    goto :goto_0

    .line 236
    :pswitch_6
    const-string v0, "DUN"

    .line 237
    goto :goto_0

    .line 239
    :pswitch_7
    const-string v0, "OPP"

    .line 240
    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static getStringId(I)I
    .locals 1
    .parameter "requestType"

    .prologue
    .line 135
    const v0, 0x7f0800a4

    .line 136
    .local v0, stringId:I
    packed-switch p0, :pswitch_data_0

    .line 163
    :goto_0
    return v0

    .line 138
    :pswitch_0
    const v0, 0x7f0800a4

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    const v0, 0x7f0814f5

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    const v0, 0x7f0814f3

    .line 145
    goto :goto_0

    .line 147
    :pswitch_3
    const v0, 0x7f0814f8

    .line 148
    goto :goto_0

    .line 152
    :pswitch_4
    const v0, 0x7f0814fb

    .line 153
    goto :goto_0

    .line 155
    :pswitch_5
    const v0, 0x7f081502

    .line 156
    goto :goto_0

    .line 158
    :pswitch_6
    const v0, 0x7f081501

    .line 159
    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static getTitleString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "requestType"

    .prologue
    .line 168
    const v1, 0x7f0800a4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, title:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    const v1, 0x7f0814f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    goto :goto_0

    .line 176
    :pswitch_1
    const v1, 0x7f0814f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 179
    :pswitch_2
    const v1, 0x7f081502

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    goto :goto_0

    .line 182
    :pswitch_3
    const v1, 0x7f0814ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isLockScreenExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 64
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 65
    .local v0, exist:Z
    const-string v1, "LGBluetoothAuthorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : isLockScreen ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v0
.end method

.method public static startAlertSoundActivity(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 45
    const-string v0, "ro.factorytest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "sys.allautotest.run"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "LGBluetoothAuthorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BTUI] FTM_Test = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] AAT_Test = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    const-string v0, "LGBluetoothAuthorization"

    const-string v1, "[BTUI] startAlertSoundActivity return!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    const-class v1, Lcom/android/lgesettings/bluetooth/LGBluetoothAlertSoundActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
