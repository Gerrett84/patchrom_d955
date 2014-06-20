.class public Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;
.super Landroid/app/Fragment;
.source "ChooseBackuppinTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseBackuppinTutorialFragment"
.end annotation


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private pinAnimaion:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/lockscreen/ChooseBackupPinNew;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "PASSWORD_EXPIRE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 185
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 111
    const v6, 0x7f040033

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 112
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0a0017

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mNextButton:Landroid/view/View;

    .line 113
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v6, 0x7f0a006f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mSkipButton:Landroid/view/View;

    .line 115
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mSkipButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v6, 0x7f0a006e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->pinAnimaion:Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 121
    .local v0, frame1:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 123
    .local v1, frame2:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v4, 0x3e8

    .line 125
    .local v4, resonableDuration:I
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 126
    .local v3, mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 129
    :cond_0
    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 133
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->pinAnimaion:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 136
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 139
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_3

    .line 140
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/StatusBarManager;

    iput-object v6, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 145
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "PASSWORD_EXPIRE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 154
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-object v5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 205
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 193
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/mdm/LGMDMManager;->getEnforcePasswordChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 200
    :cond_0
    return-void
.end method
