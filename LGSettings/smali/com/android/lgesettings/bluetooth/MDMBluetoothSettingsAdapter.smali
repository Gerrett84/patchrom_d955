.class public Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMBluetoothSettingsAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "MDMBluetoothSettingsAdapter"

    sput-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->mInstance:Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    invoke-direct {v0}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;-><init>()V

    sput-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->mInstance:Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->mInstance:Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    return-object v0
.end method


# virtual methods
.method public addBluetoothChangeIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 237
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "addBluetoothChangeIntentFilter: "

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public checkBluetoothAudioOnly(Ljava/lang/String;)Z
    .locals 9
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    sget-object v6, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBluetoothAudioOnly() address : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v3, v4

    .line 148
    .local v3, isAudioOnlyPolicy:Z
    :goto_0
    if-eqz v3, :cond_5

    .line 149
    if-nez p1, :cond_1

    .line 150
    sget-object v5, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "address is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_1
    return v4

    .end local v3           #isAudioOnlyPolicy:Z
    :cond_0
    move v3, v5

    .line 147
    goto :goto_0

    .line 154
    .restart local v3       #isAudioOnlyPolicy:Z
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 156
    .local v1, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 157
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_2

    .line 158
    sget-object v5, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "btClass is null"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_2
    sget-object v6, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btClass.getMajorDeviceClass():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    if-nez v6, :cond_3

    .line 165
    sget-object v4, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "btClass.getMajorDeviceClass() is zero, not set...."

    invoke-static {v4, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 166
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    const/16 v7, 0x400

    if-ne v6, v7, :cond_4

    move v2, v4

    .line 170
    .local v2, isAudioBTClass:Z
    :goto_2
    if-nez v2, :cond_6

    .line 171
    sget-object v5, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "checkBluetoothAudioOnly block bluetooth except audio "

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #isAudioBTClass:Z
    :cond_4
    move v2, v5

    .line 169
    goto :goto_2

    .line 175
    .end local v0           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v1           #btDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    sget-object v4, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "isAudioOnlyPolicy is false"

    invoke-static {v4, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 176
    goto :goto_1

    .line 178
    .restart local v0       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local v1       #btDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #isAudioBTClass:Z
    :cond_6
    sget-object v4, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "checkBluetoothAudioOnly is false"

    invoke-static {v4, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 179
    goto :goto_1
.end method

.method public checkBluetoothPairingAndToast(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetoothPairing(Landroid/content/ComponentName;)Z

    move-result v0

    .line 263
    .local v0, btPolicy:Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20b00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, str1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20b010f

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 271
    sget-object v3, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "MDM Block BT Pairing, show Toast!"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v1           #str1:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public checkBluetoothSearchType(Landroid/content/ComponentName;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)Z
    .locals 7
    .parameter "who"
    .parameter "bluetoothCashedDevice"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    invoke-virtual {p2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 196
    .local v0, bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isUserInitiatedPairing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v4

    .line 200
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/lge/mdm/LGMDMManager;->getBluetoothSearchedDeviceType(Landroid/content/ComponentName;)I

    move-result v3

    .line 201
    .local v3, nBluetoothSearhType:I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 203
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    if-nez v1, :cond_2

    .line 204
    sget-object v4, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "btClass is null"

    invoke-static {v4, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 205
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 210
    .local v2, nBluetoothClass:I
    sparse-switch v2, :sswitch_data_0

    .line 224
    const/16 v2, 0x10

    .line 228
    :goto_1
    and-int v6, v3, v2

    if-eq v6, v2, :cond_0

    .line 229
    sget-object v4, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "checkBluetoothSearchType block bluetooth except device "

    invoke-static {v4, v6}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 230
    goto :goto_0

    .line 212
    :sswitch_0
    const/4 v2, 0x1

    .line 213
    goto :goto_1

    .line 215
    :sswitch_1
    const/4 v2, 0x4

    .line 216
    goto :goto_1

    .line 218
    :sswitch_2
    const/4 v2, 0x2

    .line 219
    goto :goto_1

    .line 221
    :sswitch_3
    const/16 v2, 0x8

    .line 222
    goto :goto_1

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x400 -> :sswitch_0
        0x500 -> :sswitch_3
    .end sparse-switch
.end method

.method public checkBluetoothVisible(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "who"

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetoothVisible(Landroid/content/ComponentName;)Z

    move-result v0

    .line 184
    .local v0, ret:Z
    if-ne v0, v1, :cond_0

    .line 185
    sget-object v1, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "BluetoothVisible is allowed"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    .line 188
    :cond_0
    sget-object v2, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothVisible is disallowed"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBluetoothDiscoverableTimeout(I)I
    .locals 5
    .parameter "timeout"

    .prologue
    const/16 v2, 0xe10

    const/16 v1, 0x12c

    .line 121
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;)I

    move-result v0

    .line 122
    .local v0, maxVisiblityTimeOut:I
    if-nez v0, :cond_1

    .line 141
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 125
    .restart local p1
    :cond_1
    if-gt p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 127
    :cond_2
    if-lez v0, :cond_3

    if-ge v0, v1, :cond_3

    .line 129
    const/16 p1, 0x78

    goto :goto_0

    .line 131
    :cond_3
    if-gt v1, v0, :cond_4

    if-ge v0, v2, :cond_4

    move p1, v1

    .line 133
    goto :goto_0

    .line 135
    :cond_4
    if-gt v2, v0, :cond_0

    move p1, v2

    .line 136
    goto :goto_0
.end method

.method public getVisibilityTimeoutMenu(Landroid/content/ComponentName;Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .parameter "who"
    .parameter "context"

    .prologue
    const/16 v7, 0xe10

    const/16 v6, 0x12c

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 278
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getBluetoothMaxVisiblityTimeOut(Landroid/content/ComponentName;)I

    move-result v0

    .line 279
    .local v0, maxVisiblityTimeOut:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v1, vTimeList:Ljava/util/ArrayList;
    if-lez v0, :cond_1

    if-ge v0, v6, :cond_1

    .line 284
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 287
    :cond_1
    if-gt v6, v0, :cond_2

    if-ge v0, v7, :cond_2

    .line 289
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 291
    :cond_2
    if-gt v7, v0, :cond_0

    .line 292
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public receiveBluetoothChangeIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    const-string v1, "com.lge.mdm.intent.action.BLUETOOTH_POLICY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveBluetoothChangeIntent action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBluetoothDiscoverableEnableMenu(Landroid/content/Context;ZLandroid/preference/Preference;)V
    .locals 10
    .parameter "resContext"
    .parameter "discoverable"
    .parameter "discoveryPreference"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    sget-object v5, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v6, "setBluetoothDiscoverableEnableMenu()"

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    .line 101
    .local v0, btPolicy:I
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetoothVisible(Landroid/content/ComponentName;)Z

    move-result v4

    .line 102
    .local v4, visiblePolicy:Z
    if-eq v0, v9, :cond_0

    if-nez v4, :cond_2

    .line 103
    :cond_0
    sget-object v5, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGMDM] setBluetoothDiscoverableEnableMenu btPolicy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", visiblePolicy :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 p2, 0x0

    .line 106
    instance-of v5, p3, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    move-object v1, p3

    .line 107
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 108
    .local v1, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    .end local v1           #preference:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0814d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20b010f

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, strSummary:Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #strSummary:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setBluetoothEnableMenu(Landroid/widget/Switch;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-object v2, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "setBluetoothEnableMenu()"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 84
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_1

    .line 89
    sget-object v2, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] Disabllow Bluetooth mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 93
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setTextViewDisabledString(Landroid/widget/TextView;)Z
    .locals 2
    .parameter "textView"

    .prologue
    .line 66
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "setTextViewDisabledString"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] Allow bluetooth mode"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] Disabllow bluetooth mode"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const v0, 0x7f080c16

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
