.class public Lcom/android/lgesettings/SettingsPatentInformation;
.super Landroid/app/Activity;
.source "SettingsPatentInformation.java"


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsPatentInformation;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v2, 0x7f0803ef

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SettingsPatentInformation;->setTitle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsPatentInformation;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400d5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/SettingsPatentInformation;->view:Landroid/view/View;

    .line 24
    iget-object v2, p0, Lcom/android/lgesettings/SettingsPatentInformation;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SettingsPatentInformation;->setContentView(Landroid/view/View;)V

    .line 26
    iget-object v2, p0, Lcom/android/lgesettings/SettingsPatentInformation;->view:Landroid/view/View;

    const v3, 0x7f0a01c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 27
    .local v1, patent:Landroid/widget/LinearLayout;
    const-string v2, "starmotor"

    const-string v3, "123456789"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsPatentInformation;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "starmotor"

    const-string v1, "destroy1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 57
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 62
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsPatentInformation;->onBackPressed()V

    .line 64
    const/4 v1, 0x1

    .line 67
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "starmotor"

    const-string v1, "onPause1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 37
    const-string v0, "starmotor"

    const-string v1, "resume1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsPatentInformation;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsPatentInformation;->view:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/SettingsPatentInformation;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SettingsPatentInformation;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 42
    return-void
.end method
