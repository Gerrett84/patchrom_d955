.class Lcom/android/lgesettings/TetherNetworkSettings$23;
.super Landroid/database/ContentObserver;
.source "TetherNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$23;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    .line 2142
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$23;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 2144
    .local v0, value:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$23;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2100(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2146
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$23;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2100(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2147
    const-string v2, "TetherNetworkSettings"

    const-string v3, "mApnChangeObserver mMobileNetworkSettings.setEnabled = false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$23;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2200(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2152
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings$23;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$2200(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2155
    :cond_2
    return-void
.end method
