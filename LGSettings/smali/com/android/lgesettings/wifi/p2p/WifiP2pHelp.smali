.class public Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;
.super Landroid/app/Activity;
.source "WifiP2pHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMark1:Landroid/widget/TextView;

.field private mMark2:Landroid/widget/TextView;

.field private mOkBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 71
    .local v0, view:I
    const v1, 0x7f0a004d

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->finish()V

    .line 74
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f0401a6

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->setContentView(I)V

    .line 34
    const v1, 0x7f0a03d7

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mMark1:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0a03d8

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mMark2:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mMark1:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mMark2:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mMark1:Landroid/widget/TextView;

    const-string v2, "\u2010 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mMark2:Landroid/widget/TextView;

    const-string v2, "\u2010 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 44
    const v1, 0x7f080503

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 45
    const v1, 0x7f02035a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    :cond_1
    const v1, 0x7f0a004d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mOkBtn:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mOkBtn:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 60
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pHelp;->onBackPressed()V

    .line 62
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
