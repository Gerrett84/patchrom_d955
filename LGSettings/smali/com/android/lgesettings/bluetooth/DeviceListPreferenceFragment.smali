.class public abstract Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/lgesettings/bluetooth/BluetoothCallback;


# instance fields
.field public mBtnSearch:Landroid/widget/Button;

.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    .line 76
    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 77
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 149
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 150
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 152
    .end local v0           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method addCachedDevices(Z)V
    .locals 5
    .parameter "pairedDevice"

    .prologue
    const/16 v4, 0xc

    .line 156
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 158
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 159
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v4, :cond_2

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 161
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 164
    .end local v0           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_3
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .parameter "cachedDevice"

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    .line 225
    .local v1, preference:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    .line 226
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 227
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1           #preference:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "DeviceListPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method initDevicePreference(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 239
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 263
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 267
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 100
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 288
    const-string v0, "LGBT_COMMON_SCENARIO_CUSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .parameter "cachedDevice"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    .local v0, isRmoved:Z
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v1, v1, Lcom/android/lgesettings/ProgressCategory;

    if-eqz v1, :cond_2

    .line 198
    const/4 v0, 0x1

    .line 200
    :cond_2
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->checkBluetoothAudioOnly(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->checkBluetoothSearchType(Landroid/content/ComponentName;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    :cond_3
    const-string v1, "DeviceListPreferenceFragment"

    const-string v2, "onDeviceAdded MDM block"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    .line 243
    .local v0, preference:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter "btPreference"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 188
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/lgesettings/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 170
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 183
    :goto_0
    return v2

    .line 175
    :cond_0
    instance-of v3, p2, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 176
    check-cast v0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    .line 177
    .local v0, btPreference:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 178
    .local v1, device:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 183
    .end local v0           #btPreference:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;
    .end local v1           #device:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/lgesettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/lgesettings/bluetooth/BluetoothCallback;)V

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 250
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 144
    return-void
.end method

.method public removeAllSearchedDevices()V
    .locals 5

    .prologue
    .line 271
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 273
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 274
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDeviceDeleted(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    .line 276
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 279
    .end local v0           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 105
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .parameter "filterType"

    .prologue
    .line 84
    invoke-static {p1}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 85
    return-void
.end method

.method final setFilter(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 81
    return-void
.end method

.method public updateSearchButton()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 297
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    if-nez v7, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0a0048

    invoke-virtual {v7, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    .line 299
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    :cond_0
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v7

    const/16 v10, 0xc

    if-ne v7, v10, :cond_3

    move v0, v8

    .line 303
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v5

    .line 304
    .local v5, isDiscovering:Z
    if-eqz v5, :cond_4

    const v6, 0x7f0814d6

    .line 306
    .local v6, textId:I
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setText(I)V

    .line 307
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 309
    .local v2, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    const/4 v4, 0x0

    .line 310
    .local v4, isBonding:Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    .line 311
    .local v1, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    const/16 v10, 0xb

    if-ne v7, v10, :cond_1

    .line 312
    const/4 v4, 0x1

    .line 316
    .end local v1           #cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v2           #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isBonding:Z
    .end local v5           #isDiscovering:Z
    .end local v6           #textId:I
    :cond_3
    move v0, v9

    .line 302
    goto :goto_0

    .line 304
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v5       #isDiscovering:Z
    :cond_4
    const v6, 0x7f0801a6

    goto :goto_1

    .restart local v2       #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #isBonding:Z
    .restart local v6       #textId:I
    :cond_5
    move v8, v9

    .line 316
    goto :goto_2
.end method
