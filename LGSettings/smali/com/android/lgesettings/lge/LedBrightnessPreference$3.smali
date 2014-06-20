.class Lcom/android/lgesettings/lge/LedBrightnessPreference$3;
.super Ljava/lang/Object;
.source "LedBrightnessPreference.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/LedBrightnessPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/LedBrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$3;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$3;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    iget-object v0, v0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference$3;->this$0:Lcom/android/lgesettings/lge/LedBrightnessPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 108
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 104
    return-void
.end method
