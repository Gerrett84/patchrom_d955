.class Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$5;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 611
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$5;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->mIsbackUpDialogVisible:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;->access$602(Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;Z)Z

    .line 615
    return-void
.end method
