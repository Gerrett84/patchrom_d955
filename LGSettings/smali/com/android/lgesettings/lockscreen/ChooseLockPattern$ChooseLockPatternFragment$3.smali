.class Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->showPinchangeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 586
    new-instance v0, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;

    invoke-direct {v0}, Lcom/android/lgesettings/lockscreen/PinSettingsUtils;-><init>()V

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 593
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    const-string v1, "PASSWORD_EXPIRE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    const/16 v2, 0x42

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 601
    return-void
.end method
