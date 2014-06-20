.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;
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

.field final synthetic val$donotshow:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iput-object p2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;->val$donotshow:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;->val$donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setAutorunDialogDoNotShow(Landroid/content/Context;Z)V

    .line 1423
    if-eqz p1, :cond_0

    .line 1424
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #calls: Lcom/android/lgesettings/deviceinfo/UsbSettings;->startAutorun()V
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    .line 1427
    return-void
.end method
