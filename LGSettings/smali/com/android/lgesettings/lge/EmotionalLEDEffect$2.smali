.class Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;
.super Ljava/lang/Object;
.source "EmotionalLEDEffect.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/EmotionalLEDEffect;->updateTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 421
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    #getter for: Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->access$100(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "hsmodel"

    const-string v2, "cancel animator"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    #getter for: Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->access$100(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 426
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$2;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    #calls: Lcom/android/lgesettings/lge/EmotionalLEDEffect;->OnSilentGroupClick(Z)V
    invoke-static {v1, p2}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->access$200(Lcom/android/lgesettings/lge/EmotionalLEDEffect;Z)V

    .line 431
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
