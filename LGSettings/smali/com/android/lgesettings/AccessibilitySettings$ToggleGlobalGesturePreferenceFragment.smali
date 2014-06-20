.class public Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;
.super Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleGlobalGesturePreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 1127
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 1128
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1139
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$2;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_accessibility_global_gesture_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1123
    return-void

    .line 1121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1152
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    .line 1153
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFunctionIcon()Z

    move-result v0

    invoke-static {v0}, Lcom/android/lgesettings/AccessibilitySettings;->access$602(Z)Z

    .line 1154
    invoke-static {}, Lcom/android/lgesettings/AccessibilitySettings;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020323

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1157
    :cond_0
    return-void
.end method
