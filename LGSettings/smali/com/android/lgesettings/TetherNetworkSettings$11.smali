.class Lcom/android/lgesettings/TetherNetworkSettings$11;
.super Ljava/lang/Object;
.source "TetherNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$11;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 702
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$11;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/TetherNetworkSettings;->disableWifi()V

    .line 703
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$11;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$11;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings$11;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v1}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/TetherNetworkSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 706
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 707
    return-void
.end method
