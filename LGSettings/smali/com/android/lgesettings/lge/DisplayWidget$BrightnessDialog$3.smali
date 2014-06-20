.class Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$3;
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
    .line 531
    iput-object p1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$3;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog$3;->this$0:Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;

    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$1000()I

    move-result v2

    #calls: Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->getBrightness(I)I
    invoke-static {v1, v2}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$1100(Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;I)I

    move-result v0

    .line 535
    .local v0, brightness:I
    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$800()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$900()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 536
    const-string v1, "BrightnessDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBrightnessObserver() : brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method
