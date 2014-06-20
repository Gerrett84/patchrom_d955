.class public Lcom/lge/camera/controller/BarController;
.super Lcom/lge/camera/controller/Controller;
.source "BarController.java"

# interfaces
.implements Lcom/lge/camera/components/BarAction;


# static fields
.field private static final SETTING_ANIMATION_TIME:J = 0x12cL


# instance fields
.field private mNormalBarView:Lcom/lge/camera/components/BarView;

.field private mSettingBarView:Lcom/lge/camera/components/BarView;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/BarController;)Lcom/lge/camera/components/BarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    return-object v0
.end method


# virtual methods
.method public doCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;I)V
    .locals 3
    .parameter "command"
    .parameter "delay"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 245
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationMode()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    return v0
.end method

.method public getBarPreferenceSettingValue(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/BarController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getDegreeInBarAction()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPixelFromDimens(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/lge/camera/controller/Controller;->getPixelFromDimens(I)I

    move-result v0

    return v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomCursorMaxStep()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomMaxValue()F
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public hideSettingBarControl(IZ)V
    .locals 4
    .parameter "ResId"
    .parameter "useAnim"

    .prologue
    .line 92
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-eqz p2, :cond_2

    .line 96
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/BarController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 97
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 101
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/BarController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/BarController$2;-><init>(Lcom/lge/camera/controller/BarController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 114
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 117
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #rlC:Lcom/lge/camera/components/RotateLayout;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    goto :goto_0
.end method

.method public isBarVisible()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->isBarVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    return v0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    return v0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->unbind()V

    .line 174
    iput-object v1, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->unbind()V

    .line 178
    iput-object v1, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    .line 180
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->stopTimerTask()V

    .line 166
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public refreshController()V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BarView;->initBar(Lcom/lge/camera/components/BarAction;)V

    .line 38
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/BarView;->initBar(Lcom/lge/camera/components/BarAction;)V

    goto :goto_0
.end method

.method public refreshSettingBars()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->refreshBar()V

    .line 153
    :cond_0
    return-void
.end method

.method public removePostRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    goto :goto_0
.end method

.method public rotateSettingBar(II)V
    .locals 1
    .parameter "mBarType"
    .parameter "value"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->rotateSettingBar(II)V

    .line 255
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public setDegreeInBarAction(IIZ)V
    .locals 1
    .parameter "resId"
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 190
    return-void
.end method

.method public setNormalBarView(Lcom/lge/camera/components/BarView;)V
    .locals 0
    .parameter "normalBarView"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    .line 27
    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSettingBarView(Lcom/lge/camera/components/BarView;)V
    .locals 0
    .parameter "settingBarView"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    .line 31
    return-void
.end method

.method public showControl(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    goto :goto_0
.end method

.method public showSettingBarControl(IZ)V
    .locals 4
    .parameter "ResId"
    .parameter "useAnim"

    .prologue
    .line 58
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/BarController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 63
    .local v1, rlC:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->clearAnimation()V

    .line 68
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/lge/camera/controller/BarController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/BarController$1;-><init>(Lcom/lge/camera/controller/BarController;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 85
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #rlC:Lcom/lge/camera/components/RotateLayout;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/BarView;->showControl(Z)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/BarView;->startRotation(IZ)V

    goto :goto_0
.end method

.method public updateAllBars(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mNormalBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BarView;->setBarValue(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/lge/camera/controller/BarController;->mSettingBarView:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BarView;->setBarValue(I)V

    .line 147
    :cond_1
    return-void
.end method

.method public updateAllBars(II)V
    .locals 1
    .parameter "mBarType"
    .parameter "value"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->updateAllBars(II)V

    .line 250
    return-void
.end method
