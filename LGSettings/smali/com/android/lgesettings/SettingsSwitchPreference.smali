.class public Lcom/android/lgesettings/SettingsSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SettingsSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/SettingsSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/lgesettings/SettingsSwitchPreference$Listener;

.field private mOnDivider:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/SettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v1, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->activity:Landroid/app/Activity;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mOnDivider:Z

    .line 18
    new-instance v0, Lcom/android/lgesettings/SettingsSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/SettingsSwitchPreference;Lcom/android/lgesettings/SettingsSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mListener:Lcom/android/lgesettings/SettingsSwitchPreference$Listener;

    .line 34
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SettingsSwitchPreference;->setWidgetLayoutResource(I)V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/SettingsSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/SettingsSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 49
    const v2, 0x7f0a020b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 51
    check-cast v2, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 52
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 53
    check-cast v0, Landroid/widget/Switch;

    .end local v0           #checkableView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 54
    iget-object v2, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mListener:Lcom/android/lgesettings/SettingsSwitchPreference$Listener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v2, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/SettingsSwitchPreference$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/SettingsSwitchPreference$1;-><init>(Lcom/android/lgesettings/SettingsSwitchPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    iget-boolean v2, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mOnDivider:Z

    if-nez v2, :cond_1

    .line 64
    const v2, 0x7f0a0228

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, vertical_divider:Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .end local v1           #vertical_divider:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDivider(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/lgesettings/SettingsSwitchPreference;->mOnDivider:Z

    .line 43
    return-void
.end method
