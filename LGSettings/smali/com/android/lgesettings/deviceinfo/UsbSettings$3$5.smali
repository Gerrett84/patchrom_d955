.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1462
    if-eqz p1, :cond_0

    .line 1463
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->startAutorun()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 1467
    return-void
.end method
