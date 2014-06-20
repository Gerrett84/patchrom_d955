.class Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pInfoDialog.java"


# instance fields
.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mP2pInfo0:Landroid/widget/TextView;

.field private mP2pInfo1:Landroid/widget/TextView;

.field private mP2pInfo1_dot:Landroid/widget/TextView;

.field private mP2pInfo2:Landroid/widget/TextView;

.field private mP2pInfo2_dot:Landroid/widget/TextView;

.field private mP2pInfo3:Landroid/widget/TextView;

.field private mP2pInfo3_dot:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .parameter "context"
    .parameter "group"

    .prologue
    .line 59
    const v0, 0x7f100053

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    iput-object p2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mSsid:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mPassword:Ljava/lang/String;

    .line 71
    :goto_0
    new-instance v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog$1;-><init>(Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    return-void

    .line 67
    :cond_0
    const-string v0, "Wi-Fi Direct SSID"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mSsid:Ljava/lang/String;

    .line 68
    const-string v0, "xxxxxxxx"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mPassword:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->setView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->setInverseBackgroundForced(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f08164c

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->setTitle(I)V

    .line 99
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo0:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo1_dot:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo1_dot:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 104
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo1_dot:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo1:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2_dot:Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2_dot:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 116
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2_dot:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2:Landroid/widget/TextView;

    const v2, 0x7f081650

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mSsid:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3_dot:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3_dot:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 131
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3_dot:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0400

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 140
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3:Landroid/widget/TextView;

    const v2, 0x7f081651

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mPassword:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_7
    const/4 v1, -0x1

    const v2, 0x7f08059d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 146
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 147
    return-void

    .line 107
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo1_dot:Landroid/widget/TextView;

    const-string v2, "1. "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo2_dot:Landroid/widget/TextView;

    const-string v2, "2. "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 134
    :cond_a
    iget-object v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pInfoDialog;->mP2pInfo3_dot:Landroid/widget/TextView;

    const-string v2, "3. "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
