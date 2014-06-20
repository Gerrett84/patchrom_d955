.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1377
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iput-object p2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;->val$donotshow:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;->this$1:Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;->val$donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mChekshowDoNot:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1702(Lcom/android/lgesettings/deviceinfo/UsbSettings;Z)Z

    .line 1382
    return-void
.end method
