.class Lcom/android/lgesettings/WirelessSettings$5;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/WirelessSettings;->onCreateBluetoothTetherAlertDialg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$5;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1237
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$5;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$5;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1239
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$5;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->access$1000(Lcom/android/lgesettings/WirelessSettings;Z)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$5;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    .line 1242
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1243
    return-void
.end method
