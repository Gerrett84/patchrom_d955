.class public Lcom/android/lgesettings/MiracastSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "MiracastSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/MiracastSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mListener:Lcom/android/lgesettings/MiracastSwitchPreference$Listener;

.field private mOnDivider:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

.field private mWifiScreenState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/MiracastSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->activity:Landroid/app/Activity;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mOnDivider:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenState:I

    .line 24
    new-instance v0, Lcom/android/lgesettings/MiracastSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/MiracastSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/MiracastSwitchPreference;Lcom/android/lgesettings/MiracastSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mListener:Lcom/android/lgesettings/MiracastSwitchPreference$Listener;

    .line 72
    new-instance v0, Lcom/android/lgesettings/MiracastSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/MiracastSwitchPreference$1;-><init>(Lcom/android/lgesettings/MiracastSwitchPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mContext:Landroid/content/Context;

    .line 58
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MiracastSwitchPreference;->setWidgetLayoutResource(I)V

    .line 59
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemservice.core.wfdmanager.WFD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/MiracastSwitchPreference;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/MiracastSwitchPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenState:I

    return p1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 87
    const v1, 0x7f0a020b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 88
    iget-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    iget-object v2, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget v3, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenState:I

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->setSwitch(Landroid/widget/Switch;I)V

    .line 92
    iget-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/MiracastSwitchPreference$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/MiracastSwitchPreference$2;-><init>(Lcom/android/lgesettings/MiracastSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-boolean v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mOnDivider:Z

    if-nez v1, :cond_0

    .line 100
    const v1, 0x7f0a0228

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, vertical_divider:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .end local v0           #vertical_divider:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->pause()V

    .line 117
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/MiracastSwitchPreference;->mWifiScreenEnabler:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenEnabler;->resume()V

    .line 110
    :cond_0
    return-void
.end method
