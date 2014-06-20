.class public Lcom/android/lgesettings/lge/DisplayWidget;
.super Landroid/app/Activity;
.source "DisplayWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;,
        Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;,
        Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;
    }
.end annotation


# static fields
.field private static bBrightnessOK:Z


# instance fields
.field private dialog:Landroid/app/DialogFragment;

.field private dialogMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/lge/DisplayWidget;->bBrightnessOK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    .line 376
    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/lgesettings/lge/DisplayWidget;->bBrightnessOK:Z

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_display_widget_dialog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget;->finish()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    const-string v2, "ScreenTimeoutDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-static {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->newInstance(Landroid/app/Activity;)Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    .line 78
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    const-string v2, "BrightnessDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    invoke-static {p0}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->newInstance(Landroid/app/Activity;)Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    goto :goto_1

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    const-string v2, "FontSizeDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-static {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->newInstance(Landroid/app/Activity;)Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "DisplayWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bBrightnessOK -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/lge/DisplayWidget;->bBrightnessOK:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget;->dialogMode:Ljava/lang/String;

    const-string v1, "BrightnessDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/lgesettings/lge/DisplayWidget;->bBrightnessOK:Z

    if-nez v0, :cond_0

    .line 90
    #calls: Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->restoreOldState()V
    invoke-static {}, Lcom/android/lgesettings/lge/DisplayWidget$BrightnessDialog;->access$000()V

    .line 93
    :cond_0
    return-void
.end method
