.class public Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "LGBluetoothHiddenSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final BTUI_HIDDEN_MENU:[Z

.field private static KEY_setting1:Ljava/lang/String;

.field private static KEY_setting10:Ljava/lang/String;

.field private static KEY_setting11:Ljava/lang/String;

.field private static KEY_setting12:Ljava/lang/String;

.field private static KEY_setting2:Ljava/lang/String;

.field private static KEY_setting3:Ljava/lang/String;

.field private static KEY_setting4:Ljava/lang/String;

.field private static KEY_setting5:Ljava/lang/String;

.field private static KEY_setting6:Ljava/lang/String;

.field private static KEY_setting7:Ljava/lang/String;

.field private static KEY_setting8:Ljava/lang/String;

.field private static KEY_setting9:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field private static final SNOOP_FILE_PATH:Ljava/lang/String;

.field private static mLogServicetIntent:Landroid/content/Intent;


# instance fields
.field private ONOFF_INTERVAL:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDispMsg:Ljava/lang/String;

.field private mDoTurnOn:Z

.field private mInterval:Ljava/lang/String;

.field private mIsAptxDisabled:Z

.field private mIsBTSnoopEnabled:Z

.field private mIsHciLogEnabled:Z

.field private mIsSapEnabled:Z

.field private mIsSigFeatureEnabled:Z

.field private mIsSspDebug:Z

.field private mNewState:I

.field private mOnOffDialog:Landroid/app/AlertDialog;

.field private mOnOffTest:Z

.field private mOnOffTestCount:I

.field private mPrevState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

.field private prefHidden1:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden12:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden2:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden7:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden8:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

.field private prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/16 v0, 0xc

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    .line 66
    const-string v0, "btui_dut"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting1:Ljava/lang/String;

    .line 70
    const-string v0, "btui_onoff_test"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting2:Ljava/lang/String;

    .line 84
    const-string v0, "btui_hci"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting3:Ljava/lang/String;

    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->SDCARD_PATH:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bluetooth/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->SNOOP_FILE_PATH:Ljava/lang/String;

    .line 93
    const-string v0, "btui_snoop"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting4:Ljava/lang/String;

    .line 99
    const-string v0, "btui_ssp_debug"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting5:Ljava/lang/String;

    .line 109
    const-string v0, "btui_sig"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting6:Ljava/lang/String;

    .line 115
    const-string v0, "btui_log_viewer"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting7:Ljava/lang/String;

    .line 120
    const-string v0, "btui_log_service"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting8:Ljava/lang/String;

    .line 126
    const-string v0, "btui_opp_save_folder"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting9:Ljava/lang/String;

    .line 131
    const-string v0, "btui_use_aptx"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting10:Ljava/lang/String;

    .line 137
    const-string v0, "btui_use_sap"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting11:Ljava/lang/String;

    .line 142
    const-string v0, "btui_dummy_paired_list"

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting12:Ljava/lang/String;

    return-void

    .line 49
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 77
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mInterval:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 730
    const-string v0, "LGBluetoothHiddenSettingsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mPrevState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTest:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTest:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->closeOnOffTestDialog()V

    return-void
.end method

.method private addDummyPairedList()V
    .locals 1

    .prologue
    .line 707
    const-string v0, "[BTUI] generateDummyPairedList"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->addDummyPairedList()V

    .line 711
    :cond_0
    return-void
.end method

.method private closeOnOffTestDialog()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    .line 686
    :cond_0
    return-void
.end method

.method private enterSSPDebugMode()V
    .locals 2

    .prologue
    .line 689
    const-string v0, "[BTUI] enterSSPDebugMode"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->setSspDebugMode(Z)V

    .line 695
    :cond_0
    return-void
.end method

.method private exitSSPDebugMode()V
    .locals 2

    .prologue
    .line 698
    const-string v0, "[BTUI] exitSSPDebugMode"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->setSspDebugMode(Z)V

    .line 704
    :cond_0
    return-void
.end method

.method private onOnOffTestDialog()V
    .locals 4

    .prologue
    .line 656
    new-instance v1, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$3;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V

    .line 663
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$4;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V

    .line 671
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    .line 677
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 678
    return-void
.end method

.method private updatePrefence()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 261
    .local v2, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 263
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_0

    .line 267
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting1:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v6, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden1:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 268
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden1:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "DUT Mode"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden1:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "Bluetooth DUT test"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden1:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting1:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden1:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    :cond_0
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    .line 278
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting2:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v6, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden2:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 279
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden2:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "On/Off Test"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden2:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "Bluetooth on/off test"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden2:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting2:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 282
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden2:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_1
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v7, 0x2

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_2

    .line 289
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting3:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 290
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "HCI Log"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting3:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 292
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    const-string v4, "persist.service.btui.hci"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    .line 295
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v4, :cond_c

    .line 296
    const-string v3, "HCI log is enabled"

    .line 300
    .local v3, sum_toast:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 304
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v7, 0x3

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_3

    .line 308
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting4:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 309
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "BTSnoop"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting4:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    const-string v4, "service.brcm.bt.btsnoop"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    .line 314
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v4, :cond_e

    .line 315
    const-string v3, "BTSnoop is enabled"

    .line 319
    .restart local v3       #sum_toast:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 322
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->SNOOP_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, btdir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 325
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->SNOOP_FILE_PATH:Ljava/lang/String;

    const/16 v7, 0x1fd

    invoke-static {v4, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 329
    .end local v0           #btdir:Ljava/io/File;
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v7, 0x4

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_4

    .line 333
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting5:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 334
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "SSP Debug"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting5:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 338
    const-string v4, "service.btui.ssp_debug"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    .line 339
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v4, :cond_f

    .line 340
    const-string v3, "SSP debug mode is enabled"

    .line 344
    .restart local v3       #sum_toast:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 348
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v7, 0x5

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_5

    .line 352
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting6:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v5, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 353
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "Bluetooth SIG"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting6:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    const-string v4, "persist.service.btui.sig"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    .line 358
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v4, :cond_10

    .line 359
    const-string v3, "SIG feature is enabled"

    .line 363
    .restart local v3       #sum_toast:Ljava/lang/String;
    :goto_4
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 367
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v7, 0x6

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_6

    .line 371
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting7:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v6, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden7:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 372
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden7:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "Log Viewer"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden7:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting7:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden7:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_6
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v7, 0x7

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_7

    .line 381
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting8:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v6, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden8:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 382
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden8:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "Log Service"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden8:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting8:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden8:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_7
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/16 v7, 0x8

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_8

    .line 391
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting9:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v6, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 392
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "OPP Save Folder"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting9:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 395
    const-string v4, "persist.service.btui.opp_save"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 396
    .local v1, enabled:Z
    if-eqz v1, :cond_11

    .line 397
    const-string v3, "External SDcard"

    .line 401
    .restart local v3       #sum_toast:Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden9:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 405
    .end local v1           #enabled:Z
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_8
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/16 v7, 0x9

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_9

    const-string v4, "ro.build.product"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "x3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 409
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting10:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 410
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v7, "APT-X Codec"

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting10:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 413
    const-string v4, "persist.service.btui.use_aptx"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    .line 414
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    if-eqz v4, :cond_12

    .line 415
    const-string v3, "APT-X Codec disabled"

    .line 419
    .restart local v3       #sum_toast:Ljava/lang/String;
    :goto_6
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    if-nez v4, :cond_13

    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 421
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 424
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_9
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/16 v7, 0xa

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_a

    .line 428
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v7, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting11:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v5, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 429
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v5, "SAP profile"

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting11:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 432
    const-string v4, "persist.service.bt.support.sap"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    .line 433
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    if-eqz v4, :cond_14

    .line 434
    const-string v3, "SAP profile enabled"

    .line 438
    .restart local v3       #sum_toast:Ljava/lang/String;
    :goto_8
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v4, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 440
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 443
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_a
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/16 v5, 0xb

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_b

    .line 447
    new-instance v4, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting12:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v6}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden12:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    .line 448
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden12:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    const-string v5, "Add dummy paired list"

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden12:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting12:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden12:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 453
    :cond_b
    return-void

    .line 298
    :cond_c
    const-string v3, "HCI log is disabled"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto/16 :goto_0

    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_d
    move v4, v6

    .line 313
    goto/16 :goto_1

    .line 317
    :cond_e
    const-string v3, "BTSnoop is disabled"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto/16 :goto_2

    .line 342
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_f
    const-string v3, "SSP debug mode is disabled"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto/16 :goto_3

    .line 361
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_10
    const-string v3, "SIG feature is disabled"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto/16 :goto_4

    .line 399
    .end local v3           #sum_toast:Ljava/lang/String;
    .restart local v1       #enabled:Z
    :cond_11
    const-string v3, "Internal memory"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto/16 :goto_5

    .line 417
    .end local v1           #enabled:Z
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_12
    const-string v3, "APT-X Codec enabled"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto/16 :goto_6

    :cond_13
    move v4, v6

    .line 420
    goto/16 :goto_7

    .line 436
    .end local v3           #sum_toast:Ljava/lang/String;
    :cond_14
    const-string v3, "SAP profile disabled"

    .restart local v3       #sum_toast:Ljava/lang/String;
    goto :goto_8
.end method

.method private updateScreen()V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 255
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->updatePrefence()V

    .line 256
    return-void
.end method


# virtual methods
.method BtUiDisplayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 720
    return-void
.end method

.method handleBTOnOffTest()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mInterval:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    .line 170
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mPrevState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 171
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 172
    const-string v0, "[BTUI] ### OnOff Test : ON success"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    if-lez v0, :cond_0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BTUI] ### OnOff Test : wait ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :cond_0
    :goto_0
    const-string v0, "[BTUI] ### OnOff Test : OFF start"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 210
    :cond_1
    :goto_1
    return-void

    .line 183
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BTUI] #OnOff Test# : ### ON failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->closeOnOffTestDialog()V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turn On failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onOnOffTestDialog()V

    goto :goto_1

    .line 189
    :cond_3
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mPrevState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 190
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 191
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BTUI] ### OnOff Test : OFF success ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth On/Off Test ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    if-lez v0, :cond_4

    .line 196
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BTUI] ### OnOff Test : wait ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->ONOFF_INTERVAL:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :cond_4
    :goto_2
    const-string v0, "[BTUI] ### OnOff Test : ON start"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_1

    .line 204
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BTUI] ### OnOff Test : ### OFF failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mNewState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->closeOnOffTestDialog()V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Turn Off failed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onOnOffTestDialog()V

    goto/16 :goto_1

    .line 198
    :catch_0
    move-exception v0

    goto :goto_2

    .line 177
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCheckboxResult(Ljava/lang/String;)V
    .locals 14
    .parameter "key"

    .prologue
    .line 461
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting1:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 463
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.lge.btui.action_btui_dut_test"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    .line 464
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    const/high16 v12, 0x1080

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 465
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting2:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 469
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTest:Z

    .line 470
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mOnOffTestCount:I

    .line 471
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 472
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 476
    :goto_1
    const-string v11, "Bluetooth On/Off Test"

    iput-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->onOnOffTestDialog()V

    goto :goto_0

    .line 474
    :cond_2
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    .line 479
    :cond_3
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting3:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 481
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    :goto_2
    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    .line 482
    const-string v12, "persist.service.btui.hci"

    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v11, :cond_6

    const-string v11, "1"

    :goto_3
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v11, :cond_7

    .line 485
    const-string v10, "HCI log is enabled"

    .line 489
    .local v10, sum_toast:Ljava/lang/String;
    :goto_4
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 490
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z

    .line 491
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 493
    :cond_4
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v11, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden3:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsHciLogEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 495
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 482
    :cond_6
    const-string v11, "0"

    goto :goto_3

    .line 487
    :cond_7
    const-string v10, "HCI log is disabled"

    .restart local v10       #sum_toast:Ljava/lang/String;
    goto :goto_4

    .line 497
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_8
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting4:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 499
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    :goto_5
    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    .line 500
    const/4 v6, 0x0

    .line 502
    .local v6, logFileName:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v11, :cond_b

    .line 503
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmss"

    sget-object v12, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v4, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 504
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 505
    .local v2, currentTime:Ljava/util/Date;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, dTime:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->SNOOP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "btsnoop_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".cfa"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 507
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BTUI] BTSnoop enabled... logFileName ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 508
    const-string v10, "BTSnoop is enabled"

    .line 512
    .end local v2           #currentTime:Ljava/util/Date;
    .end local v3           #dTime:Ljava/lang/String;
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .restart local v10       #sum_toast:Ljava/lang/String;
    :goto_6
    const-string v11, "service.brcm.bt.btsnoop"

    iget-boolean v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v12, :cond_c

    .end local v6           #logFileName:Ljava/lang/String;
    :goto_7
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 514
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z

    .line 515
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 517
    :cond_9
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v11, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden4:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 519
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 510
    .restart local v6       #logFileName:Ljava/lang/String;
    :cond_b
    const-string v10, "BTSnoop is disabled"

    .restart local v10       #sum_toast:Ljava/lang/String;
    goto :goto_6

    .line 512
    :cond_c
    const-string v6, "0"

    goto :goto_7

    .line 521
    .end local v6           #logFileName:Ljava/lang/String;
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_d
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting5:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 523
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    :goto_8
    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    .line 524
    const-string v12, "service.btui.ssp_debug"

    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v11, :cond_f

    const-string v11, "1"

    :goto_9
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v11, :cond_10

    .line 527
    const-string v10, "SSP debug mode is enabled"

    .line 528
    .restart local v10       #sum_toast:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->enterSSPDebugMode()V

    .line 533
    :goto_a
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v11, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden5:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSspDebug:Z

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 535
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_e
    const/4 v11, 0x1

    goto :goto_8

    .line 524
    :cond_f
    const-string v11, "0"

    goto :goto_9

    .line 530
    :cond_10
    const-string v10, "SSP debug mode is disabled"

    .line 531
    .restart local v10       #sum_toast:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->exitSSPDebugMode()V

    goto :goto_a

    .line 537
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_11
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting6:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 539
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    :goto_b
    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    .line 540
    const-string v12, "persist.service.btui.sig"

    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v11, :cond_13

    const-string v11, "1"

    :goto_c
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v11, :cond_14

    .line 543
    const-string v10, "SIG feature is enabled"

    .line 547
    .restart local v10       #sum_toast:Ljava/lang/String;
    :goto_d
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v11, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden6:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 549
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". It will be applied after reboot."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_12
    const/4 v11, 0x1

    goto :goto_b

    .line 540
    :cond_13
    const-string v11, "0"

    goto :goto_c

    .line 545
    :cond_14
    const-string v10, "SIG feature is disabled"

    .restart local v10       #sum_toast:Ljava/lang/String;
    goto :goto_d

    .line 551
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_15
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting7:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 553
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.lge.btui.action_btui_log_viewer"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v7, logViewerIntent:Landroid/content/Intent;
    const/high16 v11, 0x1080

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 557
    .end local v7           #logViewerIntent:Landroid/content/Intent;
    :cond_16
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting8:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 559
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.lge.hiddenmenu.log_service.MainActivity"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    .line 560
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    const/high16 v12, 0x1080

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 561
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 563
    :cond_17
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting9:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 565
    const-string v11, "persist.service.btui.opp_save"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v8, 0x1

    .line 566
    .local v8, pos:I
    :goto_e
    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Internal memory"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string v12, "External SDcard"

    aput-object v12, v5, v11

    .line 568
    .local v5, items:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 569
    .local v1, alt_bld:Landroid/app/AlertDialog$Builder;
    const-string v11, "Select folder"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 570
    new-instance v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;)V

    invoke-virtual {v1, v5, v8, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    const/high16 v11, 0x104

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 589
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 565
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alt_bld:Landroid/app/AlertDialog$Builder;
    .end local v5           #items:[Ljava/lang/String;
    .end local v8           #pos:I
    :cond_18
    const/4 v8, 0x0

    goto :goto_e

    .line 591
    :cond_19
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting10:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 593
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    if-eqz v11, :cond_1b

    const/4 v11, 0x0

    :goto_f
    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    .line 594
    const-string v12, "persist.service.btui.use_aptx"

    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    if-eqz v11, :cond_1c

    const-string v11, "0"

    :goto_10
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    if-eqz v11, :cond_1d

    .line 597
    const-string v10, "APT-X Codec disabled"

    .line 601
    .restart local v10       #sum_toast:Ljava/lang/String;
    :goto_11
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 602
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z

    .line 603
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 605
    :cond_1a
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v11, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden10:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsAptxDisabled:Z

    if-nez v11, :cond_1e

    const/4 v11, 0x1

    :goto_12
    invoke-virtual {v12, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 607
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_1b
    const/4 v11, 0x1

    goto :goto_f

    .line 594
    :cond_1c
    const-string v11, "1"

    goto :goto_10

    .line 599
    :cond_1d
    const-string v10, "APT-X Codec enabled"

    .restart local v10       #sum_toast:Ljava/lang/String;
    goto :goto_11

    .line 606
    :cond_1e
    const/4 v11, 0x0

    goto :goto_12

    .line 609
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_1f
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting11:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 611
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    if-eqz v11, :cond_21

    const/4 v11, 0x0

    :goto_13
    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    .line 613
    iget-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    if-eqz v11, :cond_23

    .line 614
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    const-string v12, "sap"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->setProfileOnOff(Ljava/lang/String;Z)Z

    move-result v9

    .line 615
    .local v9, result:Z
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_20

    .line 616
    const/4 v9, 0x1

    .line 618
    :cond_20
    const-string v12, "persist.service.bt.support.sap"

    if-eqz v9, :cond_22

    const-string v11, "true"

    :goto_14
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v10, "SAP profile enabled"

    .line 628
    .restart local v10       #sum_toast:Ljava/lang/String;
    :goto_15
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    invoke-virtual {v11, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->prefHidden11:Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;

    iget-boolean v12, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mIsSapEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsPreference;->setChecked(Z)V

    .line 630
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    .end local v9           #result:Z
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_21
    const/4 v11, 0x1

    goto :goto_13

    .line 618
    .restart local v9       #result:Z
    :cond_22
    const-string v11, "false"

    goto :goto_14

    .line 621
    .end local v9           #result:Z
    :cond_23
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    const-string v12, "sap"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->setProfileOnOff(Ljava/lang/String;Z)Z

    move-result v9

    .line 622
    .restart local v9       #result:Z
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_24

    .line 623
    const/4 v9, 0x1

    .line 625
    :cond_24
    const-string v12, "persist.service.bt.support.sap"

    if-eqz v9, :cond_25

    const-string v11, "false"

    :goto_16
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v10, "SAP profile disabled"

    .restart local v10       #sum_toast:Ljava/lang/String;
    goto :goto_15

    .line 625
    .end local v10           #sum_toast:Ljava/lang/String;
    :cond_25
    const-string v11, "true"

    goto :goto_16

    .line 632
    .end local v9           #result:Z
    :cond_26
    sget-object v11, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting12:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->addDummyPairedList()V

    .line 636
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 637
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mDoTurnOn:Z

    .line 638
    iget-object v11, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 640
    :cond_27
    const-string v11, "Dummy paired list added"

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->addPreferencesFromResource(I)V

    .line 216
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 251
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->terminateServiceManager()V

    .line 240
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 221
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->updateScreen()V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getInstance(Landroid/content/Context;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    .line 230
    return-void
.end method

.method public onSettingsButtonResult(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 645
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->KEY_setting6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.btui.action_btui_sig"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    .line 647
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 648
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 650
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 245
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    return-void
.end method
