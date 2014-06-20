.class public Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
.super Landroid/preference/Preference;
.source "MiracastDLNADevice.java"


# instance fields
.field public device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

.field private mSignal:Landroid/widget/ImageView;

.field public status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V
    .locals 1
    .parameter "context"
    .parameter "dev"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    .line 51
    const v0, 0x7f04010c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setWidgetLayoutResource(I)V

    .line 52
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 115
    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setSummary(I)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, statusArray:[Ljava/lang/String;
    iget v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 73
    instance-of v6, p1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    if-eqz v6, :cond_1

    move-object v1, p1

    .line 74
    check-cast v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    .line 75
    .local v1, other:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
    iget v3, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    .line 76
    .local v3, other_status:I
    iget-object v6, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v6}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, otherName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 88
    .end local v1           #other:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
    .local v0, isP2p:Z
    :goto_0
    iget v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-eq v6, v3, :cond_4

    .line 89
    iget v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-ge v6, v3, :cond_3

    .line 101
    .end local v0           #isP2p:Z
    .end local v2           #otherName:Ljava/lang/String;
    .end local v3           #other_status:I
    .end local p1
    :cond_0
    :goto_1
    return v4

    .line 78
    .restart local p1
    :cond_1
    instance-of v6, p1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    if-eqz v6, :cond_2

    move-object v1, p1

    .line 79
    check-cast v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    .line 80
    .local v1, other:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
    iget-object v6, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 81
    .restart local v3       #other_status:I
    iget-object v6, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 82
    .restart local v2       #otherName:Ljava/lang/String;
    const/4 v0, 0x1

    .line 83
    .restart local v0       #isP2p:Z
    goto :goto_0

    .end local v0           #isP2p:Z
    .end local v1           #other:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
    .end local v2           #otherName:Ljava/lang/String;
    .end local v3           #other_status:I
    :cond_2
    move v4, v5

    .line 84
    goto :goto_1

    .restart local v0       #isP2p:Z
    .restart local v2       #otherName:Ljava/lang/String;
    .restart local v3       #other_status:I
    :cond_3
    move v4, v5

    .line 89
    goto :goto_1

    .line 92
    :cond_4
    if-nez v0, :cond_0

    .line 97
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v4}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 98
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v4}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 101
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v4}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast p1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    .end local p1
    iget-object v5, p1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v5}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    const v0, 0x7f020297

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setIcon(I)V

    .line 62
    const v0, 0x7f0a023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->mSignal:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->mSignal:Landroid/widget/ImageView;

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->refresh()V

    .line 65
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 66
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v0}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .parameter "new_status"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    if-eq v0, p1, :cond_0

    .line 106
    iput p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    .line 107
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->refresh()V

    .line 109
    :cond_0
    return-void
.end method
