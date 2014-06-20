.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;
.super Landroid/app/AlertDialog;
.source "WifiScreenIntroDialog.java"


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const v0, 0x7f100053

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 58
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    new-instance v0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog$1;-><init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;)Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v0

    return-object v0
.end method

.method private getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, mServiceContext:Lcom/lge/systemservice/core/LGContext;
    sget-object v2, Lcom/lge/systemservice/core/LGContext$ServiceList;->LGEWIFIDISPLAY_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v0, v2}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    .line 108
    .local v1, mWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401bc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->mView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->setView(Landroid/view/View;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->setInverseBackgroundForced(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f081358

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->setTitle(I)V

    .line 97
    const/4 v1, -0x1

    const v2, 0x7f08059d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
