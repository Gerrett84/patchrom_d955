.class public Lcom/android/lgesettings/wifi/WifiHotspotHelp;
.super Landroid/app/Activity;
.source "WifiHotspotHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHelpDesc:Landroid/widget/TextView;

.field private mHelpLink:Landroid/widget/TextView;

.field private mHotspotImg:Landroid/widget/ImageView;

.field private mMark1:Landroid/widget/TextView;

.field private mMark2:Landroid/widget/TextView;

.field private mMark3:Landroid/widget/TextView;

.field private mMark4:Landroid/widget/TextView;

.field private mMark5:Landroid/widget/TextView;

.field private mMark6:Landroid/widget/TextView;

.field private mOkBtn:Landroid/widget/Button;

.field private mStep1:Landroid/widget/TextView;

.field private mStep1_1:Landroid/widget/TextView;

.field private mStep1_2:Landroid/widget/TextView;

.field private mStep2:Landroid/widget/TextView;

.field private mStep2_1:Landroid/widget/TextView;

.field private mStep2_2:Landroid/widget/TextView;

.field private mStep2_3:Landroid/widget/TextView;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field security_key:Ljava/lang/String;

.field ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "SSID"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->ssid:Ljava/lang/String;

    .line 74
    const-string v0, "preshared key"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->security_key:Ljava/lang/String;

    return-void
.end method

.method private initWidget()V
    .locals 2

    .prologue
    .line 206
    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mHelpDesc:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f0a03db

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mHotspotImg:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f0a03dc

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0a03dd

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1_1:Landroid/widget/TextView;

    .line 210
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1_1:Landroid/widget/TextView;

    const v1, 0x7f0816d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_0
    const v0, 0x7f0a03de

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1_2:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0a03df

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0a03e1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_1:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0a03e3

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_2:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0a03e5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_3:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0a03e7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mHelpLink:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark1:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f0a03d8

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark2:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0a03e0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark3:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0a03e2

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark4:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0a03e4

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark5:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0a03e6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark6:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark1:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark3:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark4:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark5:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark6:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark1:Landroid/widget/TextView;

    const-string v1, "\u2022 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark2:Landroid/widget/TextView;

    const-string v1, "\u2022 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark3:Landroid/widget/TextView;

    const-string v1, "\u2022 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark4:Landroid/widget/TextView;

    const-string v1, "\u2022 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark5:Landroid/widget/TextView;

    const-string v1, "\u2022 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark6:Landroid/widget/TextView;

    const-string v1, "\u203b "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_1
    return-void
.end method

.method private setUI(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mHelpDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mHotspotImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1_1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep1_2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mHelpLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mMark6:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 347
    .local v0, view:I
    const v1, 0x7f0a004d

    if-ne v0, v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->finish()V

    .line 350
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v1, 0x7f0401ac

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->initWidget()V

    .line 83
    invoke-direct {p0, v5}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->setUI(I)V

    .line 85
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 88
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->ssid:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mStep2_2:Landroid/widget/TextView;

    const v2, 0x7f0816dc

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->ssid:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 95
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    const v1, 0x7f0804dc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const v1, 0x7f0812f2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 107
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const v1, 0x7f020338

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 114
    :cond_2
    const v1, 0x7f0a004d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mOkBtn:Landroid/widget/Button;

    .line 115
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mOkBtn:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 335
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiHotspotHelp;->onBackPressed()V

    .line 337
    const/4 v1, 0x1

    .line 340
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    return-void
.end method
