.class Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;
.super Landroid/app/AlertDialog;
.source "WifiInternetUnavailableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mInternetUnavailableMsg:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "ssid"

    .prologue
    .line 53
    const v0, 0x7f100053

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-static {p2}, Lcom/android/lgesettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mSsid:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog$1;-><init>(Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 99
    const-string v0, "WifiInternetUnavailableDialog"

    const-string v1, "onClick View"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mView:Landroid/view/View;

    .line 70
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->setView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->setInverseBackgroundForced(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f0816aa

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->setTitle(I)V

    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mInternetUnavailableMsg:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mInternetUnavailableMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_internet_unavailable"

    invoke-static {v1, v2, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mInternetUnavailableMsg:Landroid/widget/TextView;

    const v2, 0x7f0816ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mSsid:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mSsid:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    :goto_0
    const/4 v1, -0x1

    const v2, 0x7f08059d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 96
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mInternetUnavailableMsg:Landroid/widget/TextView;

    const v2, 0x7f0816ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiInternetUnavailableDialog;->mSsid:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
