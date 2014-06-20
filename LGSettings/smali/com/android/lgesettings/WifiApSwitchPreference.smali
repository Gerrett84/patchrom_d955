.class public Lcom/android/lgesettings/WifiApSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "WifiApSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/WifiApSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/lgesettings/WifiApSwitchPreference$Listener;

.field private mOnDivider:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/WifiApSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->activity:Landroid/app/Activity;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mOnDivider:Z

    .line 20
    new-instance v0, Lcom/android/lgesettings/WifiApSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/WifiApSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/WifiApSwitchPreference;Lcom/android/lgesettings/WifiApSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mListener:Lcom/android/lgesettings/WifiApSwitchPreference$Listener;

    .line 38
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WifiApSwitchPreference;->setWidgetLayoutResource(I)V

    .line 39
    new-instance v0, Lcom/android/lgesettings/wifi/WifiApEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/WifiApSwitchPreference;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 54
    const v1, 0x7f0a020b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 55
    iget-object v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 59
    iget-object v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/WifiApSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/WifiApSwitchPreference$1;-><init>(Lcom/android/lgesettings/WifiApSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-boolean v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mOnDivider:Z

    if-nez v1, :cond_0

    .line 67
    const v1, 0x7f0a0228

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, vertical_divider:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .end local v0           #vertical_divider:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->pause()V

    .line 82
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/WifiApSwitchPreference;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->resume()V

    .line 76
    :cond_0
    return-void
.end method
