.class Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$4;
.super Landroid/database/ContentObserver;
.source "DisplayWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$4;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 543
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$4;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;

    #calls: Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getBrightnessMode(I)I
    invoke-static {v1, v0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$1200(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 544
    .local v0, checked:Z
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$1300()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 545
    const-string v1, "BrightnessDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBrightnessModeObserver() : checked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method
