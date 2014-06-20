.class Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;
.super Ljava/lang/Object;
.source "EmotionalLEDEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/EmotionalLEDEffect;->setEmotionalLEDSettings()V
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
    .line 784
    iput-object p1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 803
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 796
    const-string v0, "hsmodel"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    iget-object v0, v0, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    #getter for: Lcom/android/lgesettings/lge/EmotionalLEDEffect;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->access$300(Lcom/android/lgesettings/lge/EmotionalLEDEffect;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDEffect$4;->this$0:Lcom/android/lgesettings/lge/EmotionalLEDEffect;

    iget v2, v2, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->lastSelectedFunction:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 799
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 792
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 788
    return-void
.end method
