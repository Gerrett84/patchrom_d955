.class public final Lcom/android/lgesettings/bluetooth/DevicePickerFragment;
.super Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 238
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->setFilter(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 244
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->removeAllSearchedDevices()V

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 136
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 140
    return-void
.end method

.method private updateContent(I)V
    .locals 7
    .parameter "bluetoothState"

    .prologue
    const/4 v6, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 170
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v3, "LGBT_COMMON_SCENARIO_CUMSTOM_SEARCH_BUTTON"

    invoke-static {v3}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateSearchButton()V

    .line 175
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->removeAllDevices()V

    .line 234
    :goto_1
    return-void

    .line 177
    :pswitch_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 178
    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 179
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 182
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_4

    .line 183
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 187
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7f081528

    sget-object v5, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 190
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 193
    .local v1, numberOfPairedDevices:I
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_5

    .line 194
    new-instance v3, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 198
    :goto_3
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0801aa

    sget-object v5, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 201
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 202
    .local v0, numberOfAvailableDevices:I
    iput-boolean v6, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    .line 204
    if-nez v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    .line 209
    :cond_1
    if-nez v1, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_2
    iget-boolean v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v3, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    .line 185
    .end local v0           #numberOfAvailableDevices:I
    .end local v1           #numberOfPairedDevices:I
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 196
    .restart local v1       #numberOfPairedDevices:I
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 220
    .end local v1           #numberOfPairedDevices:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->finish()V

    goto/16 :goto_0

    .line 175
    nop

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 66
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 68
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 69
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 73
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 279
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 285
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mBtnSearch:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 80
    return-void

    .line 79
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

    .line 101
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 102
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 103
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f0814d6

    .line 105
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 111
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 101
    goto :goto_0

    .line 103
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f0801a6

    goto :goto_1
.end method

.method public onDeviceBondStateChanged(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 263
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 265
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->finish()V

    .line 271
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 273
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 250
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->finish()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 124
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 92
    iget-boolean v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 96
    :cond_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 160
    const-string v0, "LGBT_COMMON_SCENARIO_CUMSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DevicePickerFragment;->updateSearchButton()V

    .line 164
    :cond_0
    return-void
.end method

.method public updateSearchButton()V
    .locals 1

    .prologue
    .line 312
    const-string v0, "LGBT_COMMON_SCENARIO_CUMSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->updateSearchButton()V

    .line 315
    :cond_0
    return-void
.end method
