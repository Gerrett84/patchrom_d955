.class Lcom/android/lgesettings/deviceinfo/UsbSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateTetherState()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 119
    return-void
.end method
