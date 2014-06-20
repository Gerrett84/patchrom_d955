.class public Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;
.super Landroid/app/Activity;
.source "MiracastHelp01.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnNext:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.wifi.wifiscreen.MiracastHelp02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->finish()V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01b7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f0400ca

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    :cond_0
    const v1, 0x7f0a01b7

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->mBtnNext:Landroid/widget/ImageButton;

    .line 34
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->mBtnNext:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 51
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastHelp01;->onBackPressed()V

    .line 53
    const/4 v1, 0x1

    .line 56
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
