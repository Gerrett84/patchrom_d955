.class Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;
.super Ljava/lang/Object;
.source "UsbSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 368
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$202(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 371
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    .line 387
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    const/4 v1, 0x2

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->callPopup(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$300(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;I)V

    goto :goto_0

    .line 380
    :cond_1
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 381
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$000(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "ecm"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 382
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 383
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->mTetherModeKeep:Z
    invoke-static {v0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->access$202(Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;Z)Z

    .line 385
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 386
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2$5;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0
.end method
