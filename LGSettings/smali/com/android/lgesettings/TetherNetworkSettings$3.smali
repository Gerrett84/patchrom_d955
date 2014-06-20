.class Lcom/android/lgesettings/TetherNetworkSettings$3;
.super Ljava/lang/Object;
.source "TetherNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 565
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$3;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$3;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    #getter for: Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;
    invoke-static {v0}, Lcom/android/lgesettings/TetherNetworkSettings;->access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 569
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 570
    return-void
.end method
