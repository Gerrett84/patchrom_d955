.class public Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;
.super Landroid/preference/PreferenceActivity;
.source "LGBluetoothSigSettings.java"


# static fields
.field private static final LG_BTUI_SIG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHfpCategory:Landroid/preference/PreferenceGroup;

.field private mHidCategory:Landroid/preference/PreferenceGroup;

.field private mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSapCategory:Landroid/preference/PreferenceGroup;

.field private mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "persist.service.btui.sig"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->LG_BTUI_SIG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 426
    const-string v0, "LGBluetoothSigSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->updateScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Lcom/lge/bluetooth/LGBluetoothServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    return-object v0
.end method

.method private getBluetoothInputDevice()Z
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 88
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    .line 91
    :cond_0
    return v1
.end method

.method private updateScreen()V
    .locals 17

    .prologue
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 157
    .local v14, prefScreen:Landroid/preference/PreferenceScreen;
    if-nez v14, :cond_0

    .line 158
    const-string v15, "[BTUI] [updateScreen] prefScreen is null."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->BtUiLog(Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 164
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 169
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    .line 170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    const-string v16, "HFP"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    new-instance v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 175
    .local v1, pref1:Landroid/preference/ListPreference;
    const-string v15, "Signal strength"

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    const-string v15, "TC_AG_PSI_BV_01_I"

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    const v15, 0x7f0900e4

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 178
    const v15, 0x7f0900e5

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 179
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$3;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    new-instance v6, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 191
    .local v6, pref2:Landroid/preference/ListPreference;
    const-string v15, "Roaming status"

    invoke-virtual {v6, v15}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    const-string v15, "TC_AG_PSI_BV_02_I"

    invoke-virtual {v6, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    const v15, 0x7f0900e8

    invoke-virtual {v6, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 194
    const v15, 0x7f0900e9

    invoke-virtual {v6, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 195
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$4;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v6, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 206
    new-instance v11, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 207
    .local v11, pref3:Landroid/preference/ListPreference;
    const-string v15, "Battery level"

    invoke-virtual {v11, v15}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    const-string v15, "TC_AG_PSI_BV_03_I"

    invoke-virtual {v11, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    const v15, 0x7f0900e4

    invoke-virtual {v11, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 210
    const v15, 0x7f0900e5

    invoke-virtual {v11, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 211
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$5;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v11, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    new-instance v12, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 223
    .local v12, pref4:Landroid/preference/ListPreference;
    const-string v15, "Service level"

    invoke-virtual {v12, v15}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    const v15, 0x7f0900e6

    invoke-virtual {v12, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 225
    const v15, 0x7f0900e7

    invoke-virtual {v12, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 226
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$6;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v12, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    new-instance v13, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 238
    .local v13, pref5:Landroid/preference/ListPreference;
    const-string v15, "SCO Audio On/Off"

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    const-string v15, "TC_AG_ACS_BV_02_I"

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    const v15, 0x7f0900ea

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 241
    const v15, 0x7f0900e7

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 242
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$7;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    const-string v16, "HID"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    new-instance v2, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 262
    .local v2, pref11:Landroid/preference/Preference;
    const-string v15, "Virtual cable unplug"

    invoke-virtual {v2, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    const-string v15, "TC_HOS_HCR_BV_03_I"

    invoke-virtual {v2, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$8;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v2, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 275
    new-instance v3, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 276
    .local v3, pref12:Landroid/preference/Preference;
    const-string v15, "Send output report"

    invoke-virtual {v3, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    const-string v15, "TC_HOS_HDT_BV_02_I"

    invoke-virtual {v3, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$9;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v3, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    new-instance v4, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 290
    .local v4, pref13:Landroid/preference/Preference;
    const-string v15, "Send Get_Report"

    invoke-virtual {v4, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    const-string v15, "TC_HOS_HID_BV_01_C"

    invoke-virtual {v4, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$10;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v4, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    new-instance v5, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 304
    .local v5, pref14:Landroid/preference/Preference;
    const-string v15, "Send Set_Report"

    invoke-virtual {v5, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    const-string v15, "TC_HOS_HID_BV_02_C"

    invoke-virtual {v5, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$11;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v5, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 320
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    const-string v16, "SAP"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 325
    new-instance v7, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 326
    .local v7, pref21:Landroid/preference/Preference;
    const-string v15, "Graceful disconnection"

    invoke-virtual {v7, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    const-string v15, "TC_SERVER_DCN_BV_02_I"

    invoke-virtual {v7, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$12;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v7, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    new-instance v8, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 340
    .local v8, pref22:Landroid/preference/Preference;
    const-string v15, "Immediate disconnection"

    invoke-virtual {v8, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    const-string v15, "TC_SERVER_DCN_BV_03_I"

    invoke-virtual {v8, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$13;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$13;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v8, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    new-instance v9, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 354
    .local v9, pref23:Landroid/preference/Preference;
    const-string v15, "Status indication (not accessible)"

    invoke-virtual {v9, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    const-string v15, "TC_SERVER_RPS_BV_01_I"

    invoke-virtual {v9, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$14;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v9, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    new-instance v10, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 369
    .local v10, pref24:Landroid/preference/Preference;
    const-string v15, "Status indication (removed)"

    invoke-virtual {v10, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    const-string v15, "TC_SERVER_RPS_BV_02_I"

    invoke-virtual {v10, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    new-instance v15, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$15;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V

    invoke-virtual {v10, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f0815c4

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->setTitle(I)V

    .line 134
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->addPreferencesFromResource(I)V

    .line 135
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 402
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 403
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 387
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    invoke-virtual {v0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->terminateServiceManager()V

    .line 393
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 413
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->updateScreen()V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->getBluetoothInputDevice()Z

    .line 150
    invoke-static {p0}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->getInstance(Landroid/content/Context;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;

    .line 152
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 398
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 407
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 408
    return-void
.end method
