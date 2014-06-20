.class Lcom/android/lgesettings/vibratecreation/VibrateView;
.super Landroid/widget/ImageView;
.source "VibrateCreateActivity.java"


# instance fields
.field private mBGimage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateView;->mBGimage:Z

    .line 869
    sget v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->DEFAULT_COLOR:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setBackgroundColor(I)V

    .line 870
    const v0, 0x7f0202e7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setImageResource(I)V

    .line 871
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 899
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 900
    return-void
.end method

.method public setBackgroundImage()V
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateView;->mBGimage:Z

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    .line 887
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setVibrateBackgroundColor()V

    .line 894
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setVibrateBackgroundColor()V

    .line 891
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setDefaultBackgroundColor()V

    goto :goto_0
.end method

.method public setDefaultBackgroundColor()V
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateView;->mBGimage:Z

    .line 875
    sget v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->DEFAULT_COLOR:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setBackgroundColor(I)V

    .line 876
    const v0, 0x7f0202e7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setImageResource(I)V

    .line 877
    return-void
.end method

.method public setVibrateBackgroundColor()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateView;->mBGimage:Z

    .line 881
    const v0, 0x7f0202e8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrateView;->setImageResource(I)V

    .line 882
    return-void
.end method
