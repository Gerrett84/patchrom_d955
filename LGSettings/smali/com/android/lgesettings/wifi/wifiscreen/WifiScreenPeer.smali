.class public Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
.super Landroid/preference/Preference;
.source "WifiScreenPeer.java"


# static fields
.field private static final STATE_SECURED:[I


# instance fields
.field private final AUDIO_DEVICES:I

.field private final CAMERA:I

.field private final COMPUTER:I

.field private final DISPLAYS:I

.field private final GAMING_DEVICES:I

.field private final INPUT_DEVICE:I

.field private final MULTIMEDIA_DEVICES:I

.field private final NETWORK_INFRASTRUCTURE:I

.field private final OTHERS:I

.field private final PRINTER_SCANNER_FAXES_COPIERS:I

.field private final STORAGE:I

.field private final TELEPHONE:I

.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mRssi:I

.field private mSignal:Landroid/widget/ImageView;

.field private wfdState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->STATE_SECURED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 1
    .parameter "context"
    .parameter "dev"
    .parameter "wfd_state"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->COMPUTER:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->INPUT_DEVICE:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->PRINTER_SCANNER_FAXES_COPIERS:I

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->CAMERA:I

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->STORAGE:I

    .line 43
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->NETWORK_INFRASTRUCTURE:I

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->DISPLAYS:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->MULTIMEDIA_DEVICES:I

    .line 46
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->GAMING_DEVICES:I

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->TELEPHONE:I

    .line 48
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->AUDIO_DEVICES:I

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->OTHERS:I

    .line 62
    iput-object p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 63
    iput p3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->wfdState:I

    .line 64
    const v0, 0x7f04010c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setWidgetLayoutResource(I)V

    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->rssi:I

    iput v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mRssi:I

    .line 67
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 174
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->wfdState:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    .line 176
    :cond_1
    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setSummary(I)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, statusArray:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setDeviceIcon()V
    .locals 5

    .prologue
    const v4, 0x7f0201e1

    .line 184
    const/4 v1, 0x0

    .line 187
    .local v1, mDeviceType:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 188
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    .line 249
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 193
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, mDeviceIcon:I
    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 198
    :sswitch_0
    const v2, 0x7f0201da

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 202
    :sswitch_1
    const v2, 0x7f0201de

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 206
    :sswitch_2
    const v2, 0x7f0201e2

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 210
    :sswitch_3
    const v2, 0x7f0201d9

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 214
    :sswitch_4
    const v2, 0x7f0201e3

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 218
    :sswitch_5
    const v2, 0x7f0201e0

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 222
    :sswitch_6
    const v2, 0x7f0201dc

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 226
    :sswitch_7
    const v2, 0x7f0201df

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 230
    :sswitch_8
    const v2, 0x7f0201dd

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 234
    :sswitch_9
    const v2, 0x7f0201e4

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 238
    :sswitch_a
    const v2, 0x7f0201d8

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 242
    :sswitch_b
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setIcon(I)V

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xff -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 93
    instance-of v5, p1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 94
    check-cast v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;

    .line 95
    .local v1, other:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
    iget v3, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->status:I

    .line 96
    .local v3, other_status:I
    iget-object v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;->device:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    invoke-virtual {v5}, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, otherName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 108
    .end local v1           #other:Lcom/android/lgesettings/wifi/wifiscreen/MiracastDLNADevice;
    .local v0, isP2p:Z
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v5, v3, :cond_2

    .line 109
    iget-object v5, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v5, v3, :cond_0

    const/4 v4, -0x1

    .line 121
    .end local v0           #isP2p:Z
    .end local v2           #otherName:Ljava/lang/String;
    .end local v3           #other_status:I
    .end local p1
    :cond_0
    :goto_1
    return v4

    .line 98
    .restart local p1
    :cond_1
    instance-of v5, p1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 99
    check-cast v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    .line 100
    .local v1, other:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
    iget-object v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 101
    .restart local v3       #other_status:I
    iget-object v5, v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 102
    .restart local v2       #otherName:Ljava/lang/String;
    const/4 v0, 0x1

    .line 103
    .restart local v0       #isP2p:Z
    goto :goto_0

    .line 112
    .end local v1           #other:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;
    :cond_2
    if-eqz v0, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 118
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 121
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    check-cast p1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;

    .end local p1
    iget-object v5, p1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 143
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 144
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 154
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 159
    const/4 v0, -0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setDeviceIcon()V

    .line 77
    const v0, 0x7f0a023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    .line 78
    iget v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->refresh()V

    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->mSignal:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenPeer;->STATE_SECURED:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1
.end method
