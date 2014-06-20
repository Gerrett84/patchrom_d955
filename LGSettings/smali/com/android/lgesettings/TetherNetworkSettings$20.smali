.class Lcom/android/lgesettings/TetherNetworkSettings$20;
.super Ljava/lang/Object;
.source "TetherNetworkSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherNetworkSettings;
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
    .line 1455
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$20;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$20;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/lgesettings/TetherNetworkSettings;->access$402(Lcom/android/lgesettings/TetherNetworkSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 1458
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$20;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->access$402(Lcom/android/lgesettings/TetherNetworkSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 1461
    return-void
.end method
