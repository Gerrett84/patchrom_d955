.class Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;
.super Ljava/lang/Object;
.source "LGSmartOneKeyProfileClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 324
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v1, "Gatt proxy service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    check-cast p2, Lcom/broadcom/bt/gatt/BluetoothGatt;

    .end local p2
    #setter for: Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;
    invoke-static {v0, p2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->access$102(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Lcom/broadcom/bt/gatt/BluetoothGatt;)Lcom/broadcom/bt/gatt/BluetoothGatt;

    .line 326
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothGatt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    #getter for: Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->access$100(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/broadcom/bt/gatt/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    #getter for: Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->access$100(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/broadcom/bt/gatt/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    #getter for: Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mGattCallbacks:Lcom/broadcom/bt/gatt/BluetoothGattCallback;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->access$200(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;)Lcom/broadcom/bt/gatt/BluetoothGattCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/gatt/BluetoothGatt;->registerAppforOneKey(Lcom/broadcom/bt/gatt/BluetoothGattCallback;)Z

    .line 331
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 335
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->TAG:Ljava/lang/String;

    const-string v1, "Gatt proxy service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient$2;->this$0:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->mBluetoothGatt:Lcom/broadcom/bt/gatt/BluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->access$102(Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;Lcom/broadcom/bt/gatt/BluetoothGatt;)Lcom/broadcom/bt/gatt/BluetoothGatt;

    .line 337
    return-void
.end method
