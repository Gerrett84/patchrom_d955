.class public Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
.super Landroid/preference/SwitchPreference;
.source "QuietModeSwitchForActivationNowPreference.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->activity:Landroid/app/Activity;

    .line 30
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 38
    const v0, 0x7f0400fd

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setLayoutResource(I)V

    .line 40
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 41
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->activity:Landroid/app/Activity;

    .line 42
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 44
    const-string v0, "QuietModeSwitchPreferenceForActivationNow"

    const-string v1, "QuietModeSwitchForActivationNowPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 63
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mView:Landroid/view/View;

    .line 64
    const v1, 0x7f0a021c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mTitle:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0a021d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 67
    check-cast v1, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 69
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Landroid/widget/Switch;

    .end local v0           #checkableView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    .line 71
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    const-string v1, "QuietModeSwitchPreferenceForActivationNow"

    const-string v2, "__________checkable VIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v2, "QuietModeSwitchPreferenceForActivationNow"

    const-string v3, "_____________onClicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 110
    .local v0, isQuietModeSwitchChecked:Z
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSwichQuietMode(Z)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSwitchClickable(Z)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setSelectable(Z)V

    .line 113
    const-string v1, "QuietModeSwitchPreferenceForActivationNow"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .end local v0           #isQuietModeSwitchChecked:Z
    :cond_0
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public setCheckedUpdate()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setChecked(Z)V

    .line 118
    return-void
.end method

.method public setSwitchClickable(Z)V
    .locals 2
    .parameter "isClickable"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 55
    const-string v0, "QuietModeSwitchPreferenceForActivationNow"

    const-string v1, "setSwitchClickable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method
