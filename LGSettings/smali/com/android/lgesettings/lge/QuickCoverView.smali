.class public Lcom/android/lgesettings/lge/QuickCoverView;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "QuickCoverView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quick_cover_enable"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    .local v1, isEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 97
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 94
    .end local v1           #isEnabled:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "status"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_cover_enable"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mResolver:Landroid/content/ContentResolver;

    .line 67
    const v2, 0x7f060043

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/QuickCoverView;->addPreferencesFromResource(I)V

    .line 69
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    .line 70
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/lge/QuickCoverView$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/QuickCoverView$1;-><init>(Lcom/android/lgesettings/lge/QuickCoverView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 79
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/lge/QuickCoverView;->setHasOptionsMenu(Z)V

    .line 88
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 145
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 153
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 163
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 135
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->removeSwitch()V

    .line 140
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 120
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 121
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quick_cover_enable"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    iget-object v1, p0, Lcom/android/lgesettings/lge/QuickCoverView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->addSwitch(Landroid/widget/Switch;)V

    .line 129
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040113

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, imageView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuickCoverView;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 115
    return-void
.end method
