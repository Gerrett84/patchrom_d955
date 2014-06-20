.class public final Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# instance fields
.field private LE_ADDRESS:Ljava/lang/String;

.field private LE_FUNCTION_NUMBER:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

.field private mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field private mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDeviceNamePref:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

.field private remotedevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->LE_ADDRESS:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 8

    .prologue
    .line 354
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 355
    .local v4, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v4}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    .line 356
    .local v3, pref:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 359
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    const-string v5, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v5}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 360
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 361
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 364
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v6, v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v5, v6, :cond_2

    .line 365
    const-string v5, "DeviceProfilesSettings"

    const-string v6, "addPreferencesForProfiles : LE One key Profile Temporary Create"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LG RCB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 367
    const/4 v0, 0x0

    .local v0, control_funcion:I
    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2

    .line 368
    const-string v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-------addPreferencesForProfiles : Control Function : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->createLGSmartOnekeyProfilePreference(I)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    .line 370
    .restart local v3       #pref:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    .end local v0           #control_funcion:I
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_1
    const-string v5, "DeviceProfilesSettings"

    const-string v6, "addPreferencesForProfiles : LE device but no onekey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 384
    return-void

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V
    .locals 12
    .parameter "context"
    .parameter "profile"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 656
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 657
    .local v0, device:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 659
    const v7, 0x7f080093

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 662
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 669
    .local v5, profileName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 671
    .local v2, mDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v6, 0x0

    .line 672
    .local v6, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 674
    .local v3, message:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PAN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 675
    const v7, 0x7f0814eb

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 676
    instance-of v7, p2, Lcom/android/lgesettings/bluetooth/PanProfile;

    if-eqz v7, :cond_1

    move-object v7, p2

    check-cast v7, Lcom/android/lgesettings/bluetooth/PanProfile;

    invoke-virtual {v7, v2}, Lcom/android/lgesettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 677
    const v7, 0x7f0814ec

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 698
    :goto_0
    new-instance v1, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$3;-><init>(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    .line 706
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-static {p1, v7, v1, v6, v8}, Lcom/android/lgesettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 708
    return-void

    .line 679
    .end local v1           #disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    const v7, 0x7f0814ed

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 682
    :cond_2
    const v7, 0x7f08152e

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 684
    invoke-interface {p2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 685
    :cond_3
    const v7, 0x7f08152f

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    aput-object v4, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 688
    :cond_4
    const v7, 0x7f081530

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    aput-object v4, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private askLGSmartOnekeyDisconnect(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "function_control"

    .prologue
    .line 629
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 630
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 632
    const v6, 0x7f080093

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 635
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v6, p2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getNameResource(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f0815c0

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0815c1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v6}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->setLGSmartOnekeyFunctionData(ILjava/lang/String;)V

    .line 641
    new-instance v1, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)V

    .line 649
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/lgesettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 650
    return-void
.end method

.method private createLGSmartOnekeyProfilePreference(I)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "control_function"

    .prologue
    const/4 v1, 0x0

    .line 445
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    const-string v2, "DeviceProfilesSettings"

    const-string v3, " --------createLGSmartOnekeyProfilePreference : LE One key Profile Temporary Create "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, p1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getNameResource(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 449
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 450
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 451
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 452
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 453
    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshLGSmartOnekeyPreference(Landroid/preference/CheckBoxPreference;I)V

    .line 455
    return-object v0
.end method

.method private createProfilePreference(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 421
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 422
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 424
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 425
    invoke-interface {p1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 426
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 428
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 429
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 438
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    .line 440
    return-object v1
.end method

.method private getFunctionControlOf(Landroid/preference/Preference;)I
    .locals 3
    .parameter "pref"

    .prologue
    .line 831
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, key:Ljava/lang/String;
    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    const-string v1, "DeviceProfilesSettings"

    const-string v2, " --------getFunctionControlOf : return MUSIC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v1, 0x0

    .line 843
    :goto_0
    return v1

    .line 835
    :cond_0
    const-string v1, "CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "--------getFunctionControlOf : return CAMERA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v1, 0x1

    goto :goto_0

    .line 838
    :cond_1
    const-string v1, "VOICECALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 839
    const-string v1, "DeviceProfilesSettings"

    const-string v2, "--------getFunctionControlOf : return VOICECALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v1, 0x2

    goto :goto_0

    .line 842
    :cond_2
    const-string v1, "DeviceProfilesSettings"

    const-string v2, " --------getFunctionControlOf : return FINDME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 849
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-object v2

    .line 852
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onLGSmartOneKeyFunctionClicked(I)V
    .locals 4
    .parameter "function_control"

    .prologue
    .line 602
    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------onLGSmartOneKeyFunctionClicked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 604
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isOnekeyControl(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->askLGSmartOnekeyDisconnect(Landroid/content/Context;I)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setOnekeyControl(IZLjava/lang/String;)V

    goto :goto_0
.end method

.method private onProfileClicked(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V
    .locals 6
    .parameter "profile"
    .parameter "profilePref"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 580
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 582
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 583
    .local v2, status:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    .line 586
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    .line 598
    :goto_1
    return-void

    .end local v1           #isConnected:Z
    :cond_0
    move v1, v4

    .line 583
    goto :goto_0

    .line 589
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 591
    invoke-interface {p1, v0, v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 592
    invoke-direct {p0, p2, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 594
    :cond_2
    invoke-interface {p1, v0, v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 595
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 720
    const-string v1, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 722
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 724
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v2, v2, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v1, v2, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG RCB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshLGSmartOnekey()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    goto :goto_0

    .line 735
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    goto :goto_0
.end method

.method private refreshLGSmartOnekey()V
    .locals 5

    .prologue
    .line 764
    const-string v2, "DeviceProfilesSettings"

    const-string v3, " --------refreshLGSmartOnekey"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x0

    .local v0, control_funcion:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 767
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 768
    .local v1, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v1, :cond_0

    .line 769
    const-string v2, "DeviceProfilesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " --------refreshLGSmartOnekey : createLGSmartOnekeyProfilePreference Retry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->createLGSmartOnekeyProfilePreference(I)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .line 771
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 766
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshLGSmartOnekeyPreference(Landroid/preference/CheckBoxPreference;I)V

    goto :goto_1

    .line 776
    .end local v1           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 777
    return-void
.end method

.method private refreshLGSmartOnekeyPreference(Landroid/preference/CheckBoxPreference;I)V
    .locals 5
    .parameter "profilePref"
    .parameter "control_function"

    .prologue
    .line 814
    const-string v2, "DeviceProfilesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------refreshLGSmartOnekeyPreference : LE One key Control Function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 817
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDrawableResource(ILjava/lang/String;)I

    move-result v1

    .line 818
    .local v1, iconResource:I
    if-eqz v1, :cond_0

    .line 819
    const-string v2, "DeviceProfilesSettings"

    const-string v3, "--------refreshLGSmartOnekeyPreference : Found Icon Image"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 826
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->isOnekeyControl(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 827
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 828
    return-void

    .line 822
    :cond_0
    const-string v2, "DeviceProfilesSettings"

    const-string v3, " --------refreshLGSmartOnekeyPreference : Couldn\'t find Icon Image"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 825
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V
    .locals 7
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 782
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 784
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p2, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move v2, v3

    .line 785
    .local v2, isConnected:Z
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-interface {p2, v5, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v1

    .line 786
    .local v1, iconResource:I
    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 794
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    :goto_1
    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 795
    invoke-interface {p2, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 796
    invoke-interface {p2, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 799
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PAN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-ne v5, v3, :cond_1

    if-nez v2, :cond_1

    .line 800
    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 806
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SAP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 807
    invoke-virtual {p1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 810
    :cond_2
    return-void

    .end local v1           #iconResource:I
    .end local v2           #isConnected:Z
    :cond_3
    move v2, v4

    .line 784
    goto :goto_0

    .restart local v1       #iconResource:I
    .restart local v2       #isConnected:Z
    :cond_4
    move v5, v4

    .line 794
    goto :goto_1
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 742
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 743
    .local v1, profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 744
    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_0

    .line 745
    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    .line 746
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 748
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 751
    .end local v1           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    .line 752
    .restart local v1       #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 753
    .local v2, profilePref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 754
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 758
    .end local v1           #profile:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 759
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 401
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 409
    .end local v0           #numProfiles:I
    :cond_0
    :goto_0
    return-void

    .line 404
    .restart local v0       #numProfiles:I
    :cond_1
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 406
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 870
    return-void
.end method


# virtual methods
.method getLGSmartOnekeyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->LE_ADDRESS:Ljava/lang/String;

    return-object v0
.end method

.method getLGSmartOnekeyFunctionNumber()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->LE_FUNCTION_NUMBER:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f0814c6

    const v12, 0x7f0814c4

    const/16 v11, 0x500

    const/16 v10, 0x400

    const/16 v9, 0x3c

    .line 169
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    if-eqz p1, :cond_1

    .line 173
    const-string v7, "device"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 179
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const v7, 0x7f06000c

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 181
    const-string v7, "profile_container"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 182
    const-string v7, "rename_device"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    .line 184
    if-nez v2, :cond_2

    .line 185
    const-string v7, "DeviceProfilesSettings"

    const-string v8, "Activity started without a remote Bluetooth device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 175
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 176
    .local v1, args:Landroid/os/Bundle;
    const-string v7, "device"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 189
    .end local v1           #args:Landroid/os/Bundle;
    :cond_2
    new-instance v7, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    .line 191
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    if-eqz v7, :cond_0

    .line 194
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    .line 195
    .local v4, deviceManager:Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 196
    invoke-virtual {v4, v2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 197
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    if-nez v7, :cond_3

    .line 198
    const-string v7, "DeviceProfilesSettings"

    const-string v8, "Device not found, cannot connect to it"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 203
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, deviceName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    const v8, 0x7f0804ac

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 213
    const-string v7, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v7}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 214
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;->getLGSmartOneKeyProfile()Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    .line 215
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 216
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 218
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v8, v8, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v7, v8, :cond_5

    .line 219
    const-string v7, "DeviceProfilesSettings"

    const-string v8, "This is onekey device. Profile change to Function."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    const v8, 0x7f0815c2

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 264
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 266
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    goto/16 :goto_1

    .line 223
    :cond_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .line 224
    .local v3, deviceClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    if-eq v7, v10, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    if-eq v7, v11, :cond_4

    .line 227
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 228
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, Pref:Landroid/preference/Preference;
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 230
    const-string v7, "connect_access"

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 232
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 233
    const v7, 0x7f0814c7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 237
    :goto_3
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 235
    :cond_6
    invoke-virtual {v0, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 243
    .end local v0           #Pref:Landroid/preference/Preference;
    .end local v3           #deviceClass:Landroid/bluetooth/BluetoothClass;
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .line 244
    .restart local v3       #deviceClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    if-eq v7, v10, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    if-eq v7, v11, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 247
    .restart local v6       #prefScreen:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 248
    .restart local v0       #Pref:Landroid/preference/Preference;
    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 249
    const-string v7, "connect_access"

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 251
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 252
    const v7, 0x7f0814c7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 256
    :goto_4
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 254
    :cond_8
    invoke-virtual {v0, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 277
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 712
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 344
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 345
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] unregisterReceiver error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 551
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v4, :cond_0

    .line 552
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 576
    .end local p1
    :goto_0
    return v2

    .line 553
    .restart local p1
    .restart local p2
    :cond_0
    instance-of v4, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 555
    const-string v4, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 556
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 557
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 559
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v5, v5, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LG RCB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 561
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getFunctionControlOf(Landroid/preference/Preference;)I

    move-result v0

    .line 562
    .local v0, function_control:I
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->onLGSmartOneKeyFunctionClicked(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refresh()V

    move v2, v3

    .line 564
    goto :goto_0

    .line 569
    .end local v0           #function_control:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;

    move-result-object v1

    .line 570
    .local v1, prof:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V

    move v2, v3

    .line 571
    goto :goto_0

    .end local v1           #prof:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;
    .restart local p1
    :cond_2
    move v2, v3

    .line 573
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 461
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, key:Ljava/lang/String;
    const-string v4, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 465
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    .line 470
    :cond_0
    const-string v4, "rename_device"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 471
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 472
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_1

    .line 473
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 475
    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0xf7

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/lgesettings/bluetooth/Utf8ByteLengthFilter;-><init>(ILandroid/content/Context;)V

    aput-object v5, v4, v8

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 477
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    .end local v0           #et:Landroid/widget/EditText;
    :goto_0
    return v3

    .line 479
    .restart local v0       #et:Landroid/widget/EditText;
    :cond_1
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "[BTUI] EditText is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v0           #et:Landroid/widget/EditText;
    :cond_2
    const-string v4, "unpair"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 487
    const-string v4, "LGBT_COMMON_FUNCTION_SMARTONEKEY"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 488
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget v5, v5, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->DEVICE_TYPE_BLE:I

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LG RCB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v3, :cond_7

    .line 490
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 491
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-ne v4, v3, :cond_4

    .line 492
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connectedOnekeyAddressChangeToDisconnectingStatus(Ljava/lang/String;)V

    .line 493
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 495
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_3

    .line 496
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 499
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v6, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_SERVICE_UUID:Ljava/util/UUID;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_CHAR_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setIndication(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;Z)Z

    .line 502
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 522
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto/16 :goto_0

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 509
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    if-eq v4, v3, :cond_6

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->remotedevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->getStatusOfOnekeyAddressFromList(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 512
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->allOnekeyAddressChangeToDisconnectedStatus()V

    .line 516
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_4

    .line 517
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_1

    .line 524
    :cond_7
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 525
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto/16 :goto_0

    .line 528
    :cond_8
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 529
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto/16 :goto_0

    .line 541
    :cond_9
    const-string v4, "connect_access"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 542
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-static {v4, p2, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->askIncomingSecurity(Landroid/content/Context;Landroid/preference/Preference;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_0

    .line 547
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 287
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 289
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 296
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 297
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v7, 0xa

    if-ne v4, v7, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 301
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 302
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_3

    .line 303
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 304
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 305
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    .line 306
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 307
    .local v0, b:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    .end local v0           #b:Landroid/widget/Button;
    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->getLinkKey(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_0

    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .restart local v0       #b:Landroid/widget/Button;
    :cond_4
    move v4, v6

    .line 323
    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    return-void
.end method

.method setLGSmartOnekeyFunctionData(ILjava/lang/String;)V
    .locals 0
    .parameter "function_control"
    .parameter "address"

    .prologue
    .line 613
    iput p1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->LE_FUNCTION_NUMBER:I

    .line 614
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->LE_ADDRESS:Ljava/lang/String;

    .line 615
    return-void
.end method
