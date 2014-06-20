.class Lcom/android/lgesettings/WirelessSettings$2;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/WirelessSettings;
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
    .line 879
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/lgesettings/WirelessSettings;->access$002(Lcom/android/lgesettings/WirelessSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 883
    const-string v0, "WirelessSettings"

    const-string v1, "ServiceListener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    .line 889
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->access$002(Lcom/android/lgesettings/WirelessSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 893
    const-string v0, "WirelessSettings"

    const-string v1, "ServiceListener onServiceDisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->unsendTetherStateChangedBroadcast()V
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$300(Lcom/android/lgesettings/WirelessSettings;)V

    .line 897
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$2;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    .line 902
    return-void
.end method
