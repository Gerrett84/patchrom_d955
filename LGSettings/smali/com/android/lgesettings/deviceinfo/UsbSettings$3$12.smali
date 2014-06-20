.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$12;
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
    .line 1720
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$12;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$12;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$12;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v1, v1, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1724
    return-void
.end method
