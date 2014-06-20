.class public Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "HandsFreeModeSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mHandsFreeIntent:Landroid/content/Intent;

.field private mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

.field private final mListener:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;

.field private switchView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mListener:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;

    .line 28
    iput-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->activity:Landroid/app/Activity;

    .line 51
    new-instance v0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    .line 52
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setWidgetLayoutResource(I)V

    .line 54
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->activity:Landroid/app/Activity;

    .line 55
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 56
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->jumptoHandsFreeMode()V

    return-void
.end method

.method private jumptoHandsFreeMode()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.settings.HANDSFREE_MODE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeIntent:Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeIntent:Landroid/content/Intent;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 80
    const v1, 0x7f0a020b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 82
    check-cast v1, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 84
    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Landroid/widget/Switch;

    .end local v0           #checkableView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->switchView:Landroid/widget/Switch;

    .line 86
    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->switchView:Landroid/widget/Switch;

    new-instance v2, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$1;-><init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->switchView:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mListener:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public setCheckedUpdate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setChecked(Z)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchEnableStatus(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->switchView:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->switchView:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 72
    :cond_0
    return-void
.end method
