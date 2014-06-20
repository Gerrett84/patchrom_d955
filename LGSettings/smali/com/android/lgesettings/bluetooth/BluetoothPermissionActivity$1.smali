.class Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 93
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;)V

    .line 105
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, state:I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothPermissionActivity;)V

    goto :goto_0
.end method
