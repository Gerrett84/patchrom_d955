.class public Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# instance fields
.field private mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

.field private mSettingFragmentCls:Ljava/lang/String;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const v0, 0x7f0400f2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f0400f3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->setWidgetLayoutResource(I)V

    .line 46
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingFragmentCls:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    :cond_2
    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 113
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 116
    if-nez v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 51
    const v1, 0x7f0a020c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, textLayout:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0a020d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    .line 61
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 62
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 71
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->setChecked(Z)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked()V
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingFragmentCls:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingFragmentCls:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 76
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 77
    return-void
.end method

.method public setFragmentIntent(Lcom/android/lgesettings/SettingsPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "fragment"
    .parameter "intent"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

    .line 81
    iput-object p2, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 82
    return-void
.end method

.method public setFragmentToLaunch(Lcom/android/lgesettings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "fragment"
    .parameter "fragmentClass"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/lgesettings/SettingsPreferenceFragment;

    .line 86
    iput-object p2, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->mSettingFragmentCls:Ljava/lang/String;

    .line 87
    return-void
.end method
