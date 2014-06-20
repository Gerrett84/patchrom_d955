.class Lcom/android/lgesettings/DeviceInfoSettings$MyHandler;
.super Landroid/os/Handler;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mDeviceInfoSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/DeviceInfoSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/DeviceInfoSettings;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/DeviceInfoSettings$MyHandler;->mDeviceInfoSettings:Ljava/lang/ref/WeakReference;

    .line 144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/lgesettings/DeviceInfoSettings$MyHandler;->mDeviceInfoSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DeviceInfoSettings;

    .line 149
    .local v0, deviceInfoSettings:Lcom/android/lgesettings/DeviceInfoSettings;
    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    #getter for: Lcom/android/lgesettings/DeviceInfoSettings;->mBasebandVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/DeviceInfoSettings;->access$000(Lcom/android/lgesettings/DeviceInfoSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    #getter for: Lcom/android/lgesettings/DeviceInfoSettings;->mBasebandVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/DeviceInfoSettings;->access$000(Lcom/android/lgesettings/DeviceInfoSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/DeviceInfoSettings;->onBasebandeVersionLoaded(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/DeviceInfoSettings;->access$100(Lcom/android/lgesettings/DeviceInfoSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
