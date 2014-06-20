.class public Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;
.super Landroid/preference/ListPreference;
.source "PowerSaveCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;,
        Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;
    }
.end annotation


# instance fields
.field private mButtonClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

.field private mCheckBox:Landroid/view/View;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSetingsButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mTreeClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;-><init>(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mButtonClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

    .line 44
    const v0, 0x7f0400f2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f0400f3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 47
    const-string v0, "power_save_front_led"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setEntries(I)V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;)Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mTreeClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;

    return-object v0
.end method

.method private enableSettingsButton()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 98
    .local v1, entries:[Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 99
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    .end local v1           #entries:[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    :cond_2
    return-void

    .line 101
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 102
    .local v0, checked:Z
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 103
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 104
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 105
    if-nez v0, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    const v4, 0x3ecccccd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 101
    .end local v0           #checked:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSummary()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    const-string v0, "%s"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v0, "power_save_brightness"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const v0, 0x7f081214

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "power_save_screen_timeout"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    const v0, 0x7f08123a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v0, "power_save_front_led"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const v0, 0x7f08123b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 64
    const v1, 0x7f0a020c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mCheckBox:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mCheckBox:Landroid/view/View;

    new-instance v2, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0a020d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    .line 75
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mTitleText:Landroid/widget/TextView;

    .line 76
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSummaryText:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mButtonClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->enableSettingsButton()V

    .line 81
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, checkboxView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkboxView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 141
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :goto_1
    return-void

    .line 139
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->onCheckBoxClicked()V

    .line 154
    const-string v2, "toggle_power_save_wifi"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_wifi"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/ListPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    const-string v2, "toggle_power_save_sync"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_sync"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 162
    :cond_4
    const-string v2, "toggle_power_save_bluetooth"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_bt"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 166
    :cond_6
    const-string v2, "toggle_power_save_gps"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 167
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_gps"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 170
    :cond_8
    const-string v2, "toggle_power_save_nfc"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 171
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_nfc"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    .line 174
    :cond_a
    const-string v2, "toggle_power_save_animations"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 175
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_animations"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_6

    .line 178
    :cond_c
    const-string v2, "power_save_ecomode"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 179
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_cpu_adjust"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7

    .line 183
    :cond_e
    const-string v2, "power_save_brightness"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 184
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_brightness_adjust"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_8
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->updateSummary()V

    goto/16 :goto_1

    :cond_f
    move v0, v1

    .line 184
    goto :goto_8

    .line 188
    :cond_10
    const-string v2, "power_save_screen_timeout"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 189
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_screen_timeout_adjust"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_9
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->updateSummary()V

    goto/16 :goto_1

    :cond_11
    move v0, v1

    .line 189
    goto :goto_9

    .line 193
    :cond_12
    const-string v2, "power_save_front_led"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 194
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_front_led_adjust"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_a
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->updateSummary()V

    goto/16 :goto_1

    :cond_13
    move v0, v1

    .line 194
    goto :goto_a

    .line 198
    :cond_14
    const-string v2, "toggle_power_save_touch"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_touch"

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_b
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v0, v1

    goto :goto_b
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 120
    iput-boolean p1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->persistBoolean(Z)Z

    .line 122
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->notifyDependencyChange(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->notifyChanged()V

    .line 125
    :cond_0
    return-void
.end method

.method public setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mTreeClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;

    .line 58
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    iget-boolean v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    .line 134
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/ListPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 133
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
