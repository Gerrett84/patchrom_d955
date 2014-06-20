.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;
.super Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;
.source "LGBluetoothHandsfreePickerFragment.java"


# instance fields
.field private USE_AUTOSCAN:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->USE_AUTOSCAN:Z

    .line 64
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 345
    const-string v0, "LGBluetoothHandsfreePickerFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->USE_AUTOSCAN:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->startScanning()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mStartScanOnResume:Z

    return p1
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 2
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    const/4 v1, 0x1

    .line 281
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 282
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 283
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->setFilter(I)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 286
    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    if-ne p3, v0, :cond_0

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->addCachedDevices(Z)V

    .line 291
    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 292
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->addCachedDevices(Z)V

    goto :goto_0
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->removeAllSearchedDevices()V

    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->updateContent(I)V

    .line 180
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 184
    return-void
.end method

.method private updateContent(I)V
    .locals 7
    .parameter "bluetoothState"

    .prologue
    const/4 v6, 0x1

    .line 213
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 215
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v3, "LGBT_COMMON_SCENARIO_CUMSTOM_SEARCH_BUTTON"

    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->updateSearchButton()V

    .line 220
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->removeAllDevices()V

    .line 277
    :cond_1
    :goto_1
    return-void

    .line 222
    :pswitch_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 223
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 227
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_3

    .line 228
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 232
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7f081528

    sget-object v5, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 235
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 238
    .local v1, numberOfPairedDevices:I
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_4

    .line 239
    new-instance v3, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 243
    :goto_3
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0801aa

    sget-object v5, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 246
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 247
    .local v0, numberOfAvailableDevices:I
    iput-boolean v6, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    .line 249
    if-nez v0, :cond_2

    .line 250
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    .line 254
    :cond_2
    if-nez v1, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-boolean v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v3, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 230
    .end local v0           #numberOfAvailableDevices:I
    .end local v1           #numberOfPairedDevices:I
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 241
    .restart local v1       #numberOfPairedDevices:I
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 263
    .end local v1           #numberOfPairedDevices:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->finish()V

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->addPreferencesFromResource(I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->setHasOptionsMenu(Z)V

    .line 104
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 312
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->updateContent(I)V

    .line 318
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mBtnSearch:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->startScanning()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mStartScanOnResume:Z

    .line 111
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 146
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 147
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f0814d6

    .line 149
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 155
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 145
    goto :goto_0

    .line 147
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f0801a6

    goto :goto_1
.end method

.method public onDeviceBondStateChanged(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->updateContent(I)V

    .line 306
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 298
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    .line 299
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 168
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->startScanning()V

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 192
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 117
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->updateContent(I)V

    .line 123
    iget-boolean v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->USE_AUTOSCAN:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mStartScanOnResume:Z

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 125
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->startScanning()V

    .line 127
    iput-boolean v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mStartScanOnResume:Z

    .line 135
    .end local v0           #bluetoothIsEnabled:Z
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 136
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void

    :cond_1
    move v0, v1

    .line 124
    goto :goto_0

    .line 131
    :cond_2
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->mStartScanOnResume:Z

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 205
    const-string v0, "LGBT_COMMON_SCENARIO_CUMSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHandsfreePickerFragment;->updateSearchButton()V

    .line 209
    :cond_0
    return-void
.end method

.method public updateSearchButton()V
    .locals 1

    .prologue
    .line 336
    const-string v0, "LGBT_COMMON_SCENARIO_CUMSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->updateSearchButton()V

    .line 339
    :cond_0
    return-void
.end method
