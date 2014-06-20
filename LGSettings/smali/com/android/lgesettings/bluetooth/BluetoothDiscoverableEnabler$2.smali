.class Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;

    #calls: Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V
    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/lgesettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 107
    return-void
.end method
