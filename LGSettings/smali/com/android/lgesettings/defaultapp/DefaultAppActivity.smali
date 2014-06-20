.class public Lcom/android/lgesettings/defaultapp/DefaultAppActivity;
.super Landroid/app/Activity;
.source "DefaultAppActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v4, 0x7f04005a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/defaultapp/DefaultAppActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 19
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    .line 21
    .local v3, options:I
    or-int/lit8 v4, v3, 0x4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 24
    .end local v3           #options:I
    :cond_0
    if-nez p1, :cond_1

    .line 25
    invoke-static {}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->newInstance()Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    move-result-object v2

    .line 26
    .local v2, newFragment:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 27
    .local v1, ft:Landroid/app/FragmentTransaction;
    const v4, 0x7f0a00cc

    invoke-virtual {v1, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 30
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    .end local v2           #newFragment:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/DefaultAppActivity;->onBackPressed()V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
