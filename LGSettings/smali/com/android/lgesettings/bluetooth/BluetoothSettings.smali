.class public final Lcom/android/lgesettings/bluetooth/BluetoothSettings;
.super Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;
    }
.end annotation


# static fields
.field public static final LG_BTUI_DUT:Z

.field private static final LG_BTUI_HIDDEN:Z

.field public static final LG_BTUI_SIG:Z

.field private static mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

.field private mBtDevicePref:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

.field private final mBtTutorialPopupFilter:Landroid/content/IntentFilter;

.field private final mBtTutorialPopupReceiver:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

.field mDutPreference:Landroid/preference/Preference;

.field private mEmptyView:Landroid/widget/TextView;

.field mHiddenPreference:Landroid/preference/Preference;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field mMyDevicePreference:Landroid/preference/CheckBoxPreference;

.field private mNameDialog:Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

.field mPairGuidePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSearchOptionDialog:Landroid/app/AlertDialog;

.field mSigPreference:Landroid/preference/Preference;

.field private mVisibleTimeoutDialog:Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v0, "persist.service.btui.hidden"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_HIDDEN:Z

    .line 118
    const-string v0, "persist.service.btui.dut"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_DUT:Z

    .line 124
    const-string v0, "persist.service.btui.sig"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_SIG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mScanFilters:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;

    invoke-direct {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtTutorialPopupReceiver:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtTutorialPopupReceiver:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtTutorialPopupFilter:Landroid/content/IntentFilter;

    .line 166
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 867
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 1098
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 195
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->addPairGuide()V

    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 635
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 636
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 641
    sget-object v0, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    if-ne p3, v0, :cond_0

    .line 642
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->setFilter(I)V

    .line 647
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 650
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    goto :goto_0
.end method

.method private addPairGuide()V
    .locals 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f081595

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 917
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 918
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    const-string v1, "pair_guide"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 922
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairGuidePreference:Landroid/preference/Preference;

    const v1, 0x7f04001b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 923
    return-void
.end method

.method private startScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 602
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->removeAllSearchedDevices()V

    .line 603
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 605
    iget-boolean v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 611
    const-string v1, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->isHelpAppValueONandShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    const-string v1, "BluetoothSettings"

    const-string v2, "startScanning(), send intent for \'Select device\'"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 616
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 617
    sget-object v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateContent(IZ)V
    .locals 11
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const v10, 0x1080093

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 653
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 654
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 656
    .local v0, messageId:I
    const-string v4, "LGBT_COMMON_SCENARIO_CUSTOM_SEARCH_BUTTON"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->updateSearchButton()V

    .line 661
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 824
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 826
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 829
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v5, 0x41aaa3d7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 832
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 835
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 836
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->setTextViewDisabledString(Landroid/widget/TextView;)Z

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 841
    :goto_1
    return-void

    .line 663
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 664
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 665
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 668
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_3

    .line 671
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    .line 674
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0814db

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 685
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 686
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 687
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 689
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_4

    .line 690
    new-instance v4, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    .line 692
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 693
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 698
    :cond_4
    sget-boolean v4, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_HIDDEN:Z

    if-eqz v4, :cond_6

    .line 699
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    if-nez v4, :cond_5

    .line 700
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    .line 702
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setIcon(I)V

    .line 703
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    const-string v5, "BTUI Settings"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    const-string v5, "btui_hidden"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 705
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 706
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mHiddenPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 710
    :cond_6
    sget-boolean v4, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_DUT:Z

    if-eqz v4, :cond_8

    .line 711
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    if-nez v4, :cond_7

    .line 712
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    .line 714
    :cond_7
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setIcon(I)V

    .line 715
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    const-string v5, "DUT Settings"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    const-string v5, "btui_dut_test"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 717
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 718
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDutPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 722
    :cond_8
    sget-boolean v4, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_SIG:Z

    if-eqz v4, :cond_a

    .line 723
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    if-nez v4, :cond_9

    .line 724
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    .line 726
    :cond_9
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setIcon(I)V

    .line 727
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    const-string v5, "SIG Menu"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    const-string v5, "btui_dut_sig"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 729
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 730
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSigPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 734
    :cond_a
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_d

    .line 735
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 739
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f081528

    sget-object v6, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 742
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 744
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 747
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_e

    .line 748
    new-instance v4, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 752
    :goto_3
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0801aa

    sget-object v6, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/lgesettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 755
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 756
    .local v1, numberOfAvailableDevices:I
    iput-boolean v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 758
    if-nez v1, :cond_b

    .line 759
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 760
    iput-boolean v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 763
    :cond_b
    if-nez v2, :cond_c

    .line 764
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 765
    if-ne p2, v8, :cond_f

    .line 766
    iput-boolean v9, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 767
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 774
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 737
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_d
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 750
    .restart local v2       #numberOfPairedDevices:I
    :cond_e
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 769
    .restart local v1       #numberOfAvailableDevices:I
    :cond_f
    iget-boolean v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_c

    .line 770
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 789
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mNameDialog:Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

    if-eqz v4, :cond_10

    .line 790
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mNameDialog:Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;->dismiss()V

    .line 792
    :cond_10
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtDevicePref:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_11

    .line 793
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtDevicePref:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->dismissDialog()V

    .line 795
    :cond_11
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mVisibleTimeoutDialog:Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    if-eqz v4, :cond_12

    .line 796
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mVisibleTimeoutDialog:Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-virtual {v4}, Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;->dismiss()V

    .line 798
    :cond_12
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSearchOptionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_13

    .line 799
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mSearchOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 801
    :cond_13
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->dismissDialog()V

    .line 803
    const/16 v4, 0xd

    if-ne p1, v4, :cond_14

    const v0, 0x7f0800a2

    .line 808
    :goto_5
    const-string v4, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 809
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->dismissPopup()V

    goto/16 :goto_0

    .line 803
    :cond_14
    const v0, 0x7f081527

    goto :goto_5

    .line 818
    :pswitch_2
    const v0, 0x7f0800a1

    .line 819
    goto/16 :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 210
    const v4, 0x7f06000e

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 214
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 217
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 218
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 222
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 224
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 226
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 233
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    .line 235
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 236
    return-void
.end method

.method initDevicePreference(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 891
    invoke-virtual {p1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 892
    .local v0, cachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 206
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 845
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 846
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 847
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtnSearch:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 952
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 953
    const-string v0, "LGBT_COMMON_SCENARIO_CUSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 959
    :cond_0
    const-string v0, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->isHelpAppValueONandShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 980
    :cond_1
    :goto_0
    return-void

    .line 963
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->updateLayout(I)V

    goto :goto_0

    .line 967
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->updateLayout(I)V

    goto :goto_0

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    new-instance v3, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;-><init>(Landroid/content/Context;)V

    .line 244
    .local v3, filter:Lcom/android/lgesettings/bluetooth/BluetoothDeviceFilter;
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mScanFilters:Ljava/util/ArrayList;

    const/16 v7, 0x1f00

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mScanFilters:Ljava/util/ArrayList;

    const/16 v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mScanFilters:Ljava/util/ArrayList;

    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mScanFilters:Ljava/util/ArrayList;

    const/16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mScanFilters:Ljava/util/ArrayList;

    const/16 v7, 0x500

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v6, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v6}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 255
    .local v1, activity:Landroid/app/Activity;
    const-string v6, "BluetoothSettings"

    const-string v7, "onCreate()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v6, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    if-nez v6, :cond_0

    .line 260
    new-instance v6, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V

    sput-object v6, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    .line 261
    sget-object v6, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->setDaemon(Z)V

    .line 262
    sget-object v6, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->start()V

    .line 266
    :cond_0
    sget-object v6, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    invoke-virtual {v6, p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->setThreadForBtTutorial(Lcom/android/lgesettings/bluetooth/BluetoothSettings;Landroid/app/Activity;)V

    .line 269
    new-instance v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtTutorialPopupReceiver:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;

    iget-object v8, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtTutorialPopupFilter:Landroid/content/IntentFilter;

    invoke-direct {v6, v1, v7, v8}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;-><init>(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 272
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->getHelpAppValue()I

    move-result v6

    if-eqz v6, :cond_4

    .line 276
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 277
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, cmpName:Ljava/lang/String;
    const-string v6, "BluetoothSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cmp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 283
    :cond_1
    const-string v6, "SubSettings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "BluetoothSettingsActivity"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 285
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->isHelpAppValueON()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 286
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->showBtTutorialAlertDialog(Landroid/app/Activity;)V

    .line 290
    :cond_3
    const-string v6, "NULL"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {v1, v5}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 305
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #cmpName:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_5

    .line 306
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v4, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/lgesettings/bluetooth/MDMBluetoothSettingsAdapter;->addBluetoothChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    .end local v4           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_5
    return-void

    .line 295
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v2       #cmpName:Ljava/lang/String;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_6
    const-string v6, "BluetoothSettings"

    const-string v7, "BluetoothSettings is not launched from another activity."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 477
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-nez v6, :cond_0

    .line 523
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    move v0, v4

    .line 481
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 492
    .local v1, isDiscovering:Z
    iget-object v6, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDeviceManager;->isDevicePairing()Z

    move-result v2

    .line 493
    .local v2, isPairing:Z
    if-eqz v1, :cond_3

    const v3, 0x7f0814d6

    .line 495
    .local v3, textId:I
    :goto_2
    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    move v6, v4

    :goto_3
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 500
    const/4 v4, 0x2

    const v6, 0x7f0803f9

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    const/4 v4, 0x3

    const v6, 0x7f08007a

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 507
    const/4 v4, 0x4

    const v6, 0x7f0815b2

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 517
    const-string v4, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    invoke-static {v4}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 518
    const/4 v4, 0x6

    const v6, 0x7f08153b

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 522
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #isPairing:Z
    .end local v3           #textId:I
    :cond_2
    move v0, v5

    .line 480
    goto :goto_1

    .line 493
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    .restart local v2       #isPairing:Z
    :cond_3
    const v3, 0x7f0801a6

    goto :goto_2

    .restart local v3       #textId:I
    :cond_4
    move v6, v5

    .line 495
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 453
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothSettings"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDeviceBondStateChanged(Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 864
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 865
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 628
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBtDevicePref:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    .line 630
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V

    .line 631
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 527
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 597
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 529
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_1

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mNameDialog:Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

    if-nez v1, :cond_2

    .line 548
    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mNameDialog:Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

    .line 552
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mNameDialog:Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "rename device"

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 553
    :catch_0
    move-exception v1

    .line 554
    const-string v1, "BluetoothSettings"

    const-string v2, "Exception happened."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 565
    :pswitch_3
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mVisibleTimeoutDialog:Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    if-nez v1, :cond_3

    .line 566
    new-instance v1, Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v1}, Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mVisibleTimeoutDialog:Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mVisibleTimeoutDialog:Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "visibility timeout"

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 573
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 590
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 466
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->pause()V

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 473
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x1080

    const/4 v0, 0x1

    .line 988
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_HIDDEN:Z

    if-eqz v1, :cond_0

    .line 989
    const-string v1, "btui_hidden"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.btui.action_btui_hidden_ics"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 992
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    .line 1026
    :goto_0
    return v0

    .line 998
    :cond_0
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_DUT:Z

    if-eqz v1, :cond_1

    .line 999
    const-string v1, "btui_dut_test"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.btui.action_btui_dut_test"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1002
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1008
    :cond_1
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->LG_BTUI_SIG:Z

    if-eqz v1, :cond_2

    .line 1009
    const-string v1, "btui_dut_sig"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.btui.action_btui_sig"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1012
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1018
    :cond_2
    const-string v1, "pair_guide"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1019
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/lgesettings/bluetooth/LGBluetoothHelpMenu;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1020
    const-string v2, "Key_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1026
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/lgesettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/BluetoothEnabler;->resume()V

    .line 321
    :cond_0
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 323
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    const-string v1, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->isHelpAppValueONandShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const-string v1, "BluetoothSettings"

    const-string v2, "onResume(), calling registerReceiver(LGBluetoothTutorialReceiver)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->registerBtTutorialReceiver()V

    .line 338
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 339
    const-string v1, "BluetoothSettings"

    const-string v2, "onResume() and BtTutorialPopup is not shown. Start Thread."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 343
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 344
    sget-object v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mThreadForBtTutorial:Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_3

    .line 354
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v1, v2}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 356
    :cond_3
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 851
    invoke-super {p0, p1}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 853
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 855
    const-string v0, "LGBT_COMMON_SCENARIO_CUSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->updateSearchButton()V

    .line 859
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 363
    const-string v0, "LGBT_CNDTL_SCENARIO_VZW_BT_TUTORIAL"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "BluetoothSettings"

    const-string v1, "onStop(), calling unregisterReceiver(LGBluetoothTutorialReceiver)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->unregisterBtTutorialReceiver()V

    .line 367
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->dismissPopup()V

    .line 370
    :cond_0
    return-void
.end method

.method public updateSearchButton()V
    .locals 1

    .prologue
    .line 945
    const-string v0, "LGBT_COMMON_SCENARIO_CUSTOM_SEARCH_BUTTON"

    invoke-static {v0}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    invoke-super {p0}, Lcom/android/lgesettings/bluetooth/DeviceListPreferenceFragment;->updateSearchButton()V

    .line 948
    :cond_0
    return-void
.end method
