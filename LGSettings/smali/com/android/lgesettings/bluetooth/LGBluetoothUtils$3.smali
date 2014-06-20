.class final Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$3;
.super Ljava/lang/Object;
.source "LGBluetoothUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 188
    const-string v0, "service.btui.gap.pairByLocal"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->mCachedDevice:Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 190
    return-void
.end method
