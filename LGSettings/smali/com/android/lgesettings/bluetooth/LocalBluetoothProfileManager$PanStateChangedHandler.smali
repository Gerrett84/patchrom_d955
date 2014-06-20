.class Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/lgesettings/bluetooth/LocalBluetoothProfile;)V

    .line 338
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 346
    const-string v1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, role:I
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 352
    return-void
.end method
