.class Lcom/android/lgesettings/TetherSettings$HotspotClient;
.super Landroid/preference/Preference;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotspotClient"
.end annotation


# instance fields
.field final deviceIP:Ljava/lang/String;

.field final deviceMAC:Ljava/lang/String;

.field final deviceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "result"

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->this$0:Lcom/android/lgesettings/TetherSettings;

    .line 1985
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1986
    iget-object v0, p3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->deviceName:Ljava/lang/String;

    .line 1987
    iget-object v0, p3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->deviceMAC:Ljava/lang/String;

    .line 1988
    iget-object v0, p3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->deviceIP:Ljava/lang/String;

    .line 1989
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x8

    .line 1993
    iget-object v4, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TetherSettings$HotspotClient;->setTitle(Ljava/lang/CharSequence;)V

    .line 1994
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1995
    .local v1, mTitle:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->deviceIP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/TetherSettings$HotspotClient;->deviceMAC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1996
    .local v3, summary:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TetherSettings$HotspotClient;->setSummary(Ljava/lang/CharSequence;)V

    .line 1997
    const-string v4, "wifi"

    const-string v5, "[AccessPoint] onBindView()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    if-eqz v1, :cond_0

    .line 2000
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2001
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$HotspotClient;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    :cond_0
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2006
    .local v0, mSummary:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 2007
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$HotspotClient;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2008
    .local v2, strSummary:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2009
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2010
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2013
    :cond_1
    const v4, -0xfc7374

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2015
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherSettings$HotspotClient;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2022
    .end local v2           #strSummary:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 2023
    return-void

    .line 2017
    .restart local v2       #strSummary:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 2018
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
