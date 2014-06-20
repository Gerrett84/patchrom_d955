.class public Lcom/android/lgesettings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/TrustedCredentialsSettings$4;,
        Lcom/android/lgesettings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/lgesettings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private final mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 383
    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/lgesettings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-object v0
.end method

.method private addTab(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)V
    .locals 6
    .parameter "tab"

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$700(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 160
    .local v2, systemSpec:Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 162
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$800(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 163
    .local v1, lv:Landroid/widget/ListView;
    new-instance v0, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lcom/android/lgesettings/TrustedCredentialsSettings$1;)V

    .line 164
    .local v0, adapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    new-instance v3, Lcom/android/lgesettings/TrustedCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$1;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    return-void
.end method

.method private showCertDialog(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 8
    .parameter "certHolder"

    .prologue
    .line 339
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$2600(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    .line 340
    .local v5, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x104051f

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v6, 0x104000a

    new-instance v7, Lcom/android/lgesettings/TrustedCredentialsSettings$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$2;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 350
    .local v2, certDialog:Landroid/app/Dialog;
    const v6, 0x102035e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 351
    .local v0, body:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 352
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04016d

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 355
    .local v4, removeButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 356
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    move-result-object v6

    #calls: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v6, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$2700(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 357
    new-instance v6, Lcom/android/lgesettings/TrustedCredentialsSettings$3;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/lgesettings/TrustedCredentialsSettings$3;-><init>(Lcom/android/lgesettings/TrustedCredentialsSettings;Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 147
    const v0, 0x7f04016e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 149
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 150
    sget-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/TrustedCredentialsSettings;->addTab(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)V

    .line 152
    sget-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/TrustedCredentialsSettings;->addTab(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)V

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method
