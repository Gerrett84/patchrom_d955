.class Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;
.super Ljava/lang/Thread;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadForBtTutorial"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBluetoothSettings:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->this$0:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;)Lcom/android/lgesettings/bluetooth/BluetoothSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mBluetoothSettings:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 397
    new-instance v0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial$1;-><init>(Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;)V

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mHandler:Landroid/os/Handler;

    .line 440
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 443
    return-void
.end method

.method public setThreadForBtTutorial(Lcom/android/lgesettings/bluetooth/BluetoothSettings;Landroid/app/Activity;)V
    .locals 0
    .parameter "bluetoothsettings"
    .parameter "activity"

    .prologue
    .line 389
    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mActivity:Landroid/app/Activity;

    .line 390
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/BluetoothSettings$ThreadForBtTutorial;->mBluetoothSettings:Lcom/android/lgesettings/bluetooth/BluetoothSettings;

    .line 391
    return-void
.end method
