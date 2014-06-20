.class public Lcom/android/lgesettings/LgtRoamingSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "LgtRoamingSettings.java"


# static fields
.field private static bLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/LgtRoamingSettings;->bLaunched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 34
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.uplusroaming.wcdmaroaming.RoamingonLTE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_0
    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_1

    .line 40
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.ktroaming.KTRoaming"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :cond_1
    const-string v1, "SPRINT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v3, v1, :cond_2

    const-string v1, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v3, v1, :cond_2

    const-string v1, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_3

    .line 46
    :cond_2
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeatureSettingRoaming"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_3
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_4

    .line 50
    const-string v1, "com.lge.roamingsettings"

    const-string v2, "com.lge.roamingsettings.troaming.TRoamingFGK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LgtRoamingSettings;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDetach()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 59
    sget-boolean v0, Lcom/android/lgesettings/LgtRoamingSettings;->bLaunched:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/LgtRoamingSettings;->bLaunched:Z

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/LgtRoamingSettings;->finish()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 83
    return-void
.end method
