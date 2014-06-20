.class public Lcom/android/lgesettings/SettingsTipActivity;
.super Landroid/app/Activity;
.source "SettingsTipActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;
    }
.end annotation


# instance fields
.field private mSecondFragment:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    return-void
.end method

.method private attachFragments()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-direct {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity;->mSecondFragment:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity;->mSecondFragment:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsTipActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddNewSettingsTipFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SettingsTipActivity;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SettingsTipActivity;->setContentView(I)V

    .line 55
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity;->mSecondFragment:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity;->mSecondFragment:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dismiss()V

    .line 58
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsTipActivity;->attachFragments()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsTipActivity;->attachFragments()V

    goto :goto_0
.end method
