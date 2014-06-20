.class Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->askLEDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 508
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "askLEDisconnect : mLGSmartOneKeyDevice :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setLGSmartOneKeyconnstatus(Landroid/bluetooth/BluetoothDevice;I)V

    .line 510
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->connectedOnekeyAddressChangeToDisconnectingStatus(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v3}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v3, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_SERVICE_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    sget-object v4, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->ONEKEY_CHAR_UUID:Ljava/util/UUID;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->setIndication(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Ljava/util/UUID;Z)Z

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->mLGSmartOneKeyDevice:Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;

    #getter for: Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->remotedevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;->access$300(Lcom/android/lgesettings/bluetooth/BluetoothDevicePreference;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/bluetooth/LGSmartOneKeyProfileClient;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
