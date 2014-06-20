.class Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;
.super Ljava/lang/Object;
.source "LGBluetoothSigSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 117
    .end local p2
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 101
    .restart local p2
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$202(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 102
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 108
    .end local v0           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local p2
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2
    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v1, p2}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$402(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 109
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Landroid/bluetooth/BluetoothInputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 110
    .restart local v0       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$2;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$302(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 127
    :pswitch_0
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
