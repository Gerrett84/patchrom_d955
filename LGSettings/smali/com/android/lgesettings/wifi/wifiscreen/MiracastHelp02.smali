.class public Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;
.super Landroid/app/Activity;
.source "MiracastHelp02.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mPrevButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 42
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.wifi.wifiscreen.MiracastHelp01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->finish()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->finish()V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01b8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v1, 0x7f0400cb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 29
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    :cond_0
    const v1, 0x7f0a01b8

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->mPrevButton:Landroid/widget/ImageButton;

    .line 34
    const v1, 0x7f0a01b9

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->mDoneButton:Landroid/widget/Button;

    .line 35
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 57
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp02;->onBackPressed()V

    .line 59
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
