.class public Lcom/android/lgesettings/lge/ScreenOffEttectAni;
.super Landroid/app/Activity;
.source "ScreenOffEttectAni.java"


# instance fields
.field private aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private aniImage:Landroid/widget/ImageView;

.field private mCheckingAnimHandler:Landroid/os/Handler;

.field private mCheckingAnimRunnable:Ljava/lang/Runnable;

.field private totalFrame:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 38
    iput-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimHandler:Landroid/os/Handler;

    .line 39
    iput-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->finish()V

    .line 94
    invoke-virtual {p0, v0, v0}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->overridePendingTransition(II)V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f04012f

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->setContentView(I)V

    .line 52
    const v2, 0x7f0a0299

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    .line 53
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_effect_set"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, modeDbValue:I
    if-nez v1, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 70
    iget v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->totalFrame:I

    iget-object v3, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->totalFrame:I

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v0           #i:I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 61
    :cond_2
    if-ne v1, v4, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    .restart local v0       #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 76
    const-string v2, "ScreenOffEttectAni"

    const-string v3, "[onCreate()] Preview animation start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimHandler:Landroid/os/Handler;

    .line 79
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/lgesettings/lge/ScreenOffEttectAni$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/ScreenOffEttectAni$1;-><init>(Lcom/android/lgesettings/lge/ScreenOffEttectAni;)V

    iput-object v3, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->totalFrame:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    const-string v0, "ScreenOffEttectAni"

    const-string v1, "[onPause()] Preview animation stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 104
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->mCheckingAnimRunnable:Ljava/lang/Runnable;

    .line 106
    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 108
    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->aniImage:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->finish()V

    .line 111
    invoke-virtual {p0, v3, v3}, Lcom/android/lgesettings/lge/ScreenOffEttectAni;->overridePendingTransition(II)V

    .line 112
    return-void
.end method
