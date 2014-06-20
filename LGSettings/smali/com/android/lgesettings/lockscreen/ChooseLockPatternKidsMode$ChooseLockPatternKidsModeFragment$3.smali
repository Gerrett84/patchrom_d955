.class Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockPatternKidsMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 687
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment$3;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/ChooseLockPatternKidsMode$ChooseLockPatternKidsModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 688
    return-void
.end method
