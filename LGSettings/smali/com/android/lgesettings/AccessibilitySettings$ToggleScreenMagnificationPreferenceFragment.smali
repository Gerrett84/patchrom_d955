.class public Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleScreenMagnificationPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 1083
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 1084
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1095
    iget-object v0, p0, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;-><init>(Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/AccessibilitySettings$ToggleSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1079
    return-void

    .line 1077
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1108
    invoke-super {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    .line 1109
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFunctionIcon()Z

    move-result v0

    invoke-static {v0}, Lcom/android/lgesettings/AccessibilitySettings;->access$602(Z)Z

    .line 1110
    invoke-static {}, Lcom/android/lgesettings/AccessibilitySettings;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/android/lgesettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020323

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1113
    :cond_0
    return-void
.end method
