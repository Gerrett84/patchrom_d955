.class Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->updateDeviceName()V

    .line 174
    :cond_0
    const-string v1, "LGBT_COMMON_SCENARIO_OPTIMUS_HELP_GUIDE"

    invoke-static {v1}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothSettings;->addPairGuide()V
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothSettings;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V

    .line 183
    :cond_1
    return-void
.end method
