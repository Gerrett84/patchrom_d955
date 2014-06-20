.class Lcom/android/lgesettings/vpn2/VpnDialog;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public CAadApter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ServerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public UserAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentCAKey:Ljava/lang/String;

.field public mCurrentCAPos:I

.field public mCurrentServerKey:Ljava/lang/String;

.field public mCurrentServerPos:I

.field public mCurrentUserKey:Ljava/lang/String;

.field public mCurrentUserPos:I

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mNew:Z

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field public oPerlishArrayCA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oPerlishArrayServer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public oPerlishArrayUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "profile"
    .parameter "editing"
    .parameter "isNew"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayUser:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayCA:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayServer:Ljava/util/List;

    .line 86
    iput-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserKey:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAKey:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerKey:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserPos:I

    .line 90
    iput v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAPos:I

    .line 91
    iput v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerPos:I

    .line 97
    iput-object p2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    iput-object p3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 99
    iput-boolean p4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    .line 100
    iput-boolean p5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mNew:Z

    .line 101
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .parameter "type"

    .prologue
    const v6, 0x7f0a0378

    const v5, 0x7f0a0375

    const v4, 0x7f0a0373

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :pswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :pswitch_5
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCACertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 594
    .local v1, context:Landroid/content/Context;
    if-nez p3, :cond_1

    const-string v2, ""

    .line 595
    .local v2, first:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, certificates:[Ljava/lang/String;
    new-instance v4, Lcom/android/lgesettings/vpn2/VpnDialog$7;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayCA:Ljava/util/List;

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/android/lgesettings/vpn2/VpnDialog$7;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    .line 617
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 618
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 620
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->initCACert([Ljava/lang/String;ILjava/lang/String;)V

    .line 622
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 623
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 624
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 629
    :cond_0
    return-void

    .line 594
    .end local v0           #certificates:[Ljava/lang/String;
    .end local v2           #first:Ljava/lang/String;
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 623
    .restart local v0       #certificates:[Ljava/lang/String;
    .restart local v2       #first:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 431
    .local v3, context:Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 432
    .local v4, first:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, certificates:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 435
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #certificates:[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 445
    .restart local v2       #certificates:[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 447
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 448
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 450
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 451
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 452
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 456
    :cond_1
    return-void

    .line 431
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #certificates:[Ljava/lang/String;
    .end local v4           #first:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 439
    .restart local v2       #certificates:[Ljava/lang/String;
    .restart local v4       #first:Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 440
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 441
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    move-object v2, v1

    goto :goto_1

    .line 450
    .end local v1           #array:[Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private loadServerCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 633
    .local v1, context:Landroid/content/Context;
    if-nez p3, :cond_1

    const-string v2, ""

    .line 634
    .local v2, first:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, certificates:[Ljava/lang/String;
    new-instance v4, Lcom/android/lgesettings/vpn2/VpnDialog$8;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayServer:Ljava/util/List;

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/android/lgesettings/vpn2/VpnDialog$8;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    .line 656
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 657
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 659
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->initServerCert([Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 662
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 663
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 664
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 668
    :cond_0
    return-void

    .line 633
    .end local v0           #certificates:[Ljava/lang/String;
    .end local v2           #first:Ljava/lang/String;
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 662
    .restart local v0       #certificates:[Ljava/lang/String;
    .restart local v2       #first:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private loadUserCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 555
    .local v1, context:Landroid/content/Context;
    if-nez p3, :cond_1

    const-string v2, ""

    .line 556
    .local v2, first:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, certificates:[Ljava/lang/String;
    new-instance v4, Lcom/android/lgesettings/vpn2/VpnDialog$6;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayUser:Ljava/util/List;

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/android/lgesettings/vpn2/VpnDialog$6;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;ILjava/util/List;)V

    iput-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    .line 578
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 579
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 581
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->initUserCert([Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 584
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 585
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 586
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 590
    :cond_0
    return-void

    .line 555
    .end local v0           #certificates:[Ljava/lang/String;
    .end local v2           #first:Ljava/lang/String;
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 584
    .restart local v0       #certificates:[Ljava/lang/String;
    .restart local v2       #first:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private validate(Z)Z
    .locals 4
    .parameter "editing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    sget-boolean v3, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v3, :cond_1

    move v0, v1

    .line 378
    .local v0, CERTIFICATE_SPINNER_INDEX_ZERO:I
    :goto_0
    if-nez p1, :cond_3

    .line 379
    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    :cond_0
    :goto_1
    :pswitch_0
    return v1

    .end local v0           #CERTIFICATE_SPINNER_INDEX_ZERO:I
    :cond_1
    move v0, v2

    .line 376
    goto :goto_0

    .restart local v0       #CERTIFICATE_SPINNER_INDEX_ZERO:I
    :cond_2
    move v1, v2

    .line 379
    goto :goto_1

    .line 381
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/lgesettings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v1, v2

    .line 384
    goto :goto_1

    .line 386
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 399
    goto :goto_1

    .line 393
    :pswitch_1
    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1

    .line 397
    :pswitch_2
    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 404
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 405
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 404
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 409
    :cond_1
    const/16 v8, 0x20

    .line 410
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 411
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 413
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 415
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 416
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 418
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 420
    :cond_3
    const/4 v9, 0x0

    .line 426
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 423
    :catch_0
    move-exception v3

    .line 424
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 426
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 278
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 283
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 3

    .prologue
    .line 677
    sget-boolean v2, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 678
    .local v0, CERTIFICATE_SPINNER_INDEX_ZERO:I
    :goto_0
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 679
    .local v1, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 680
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 681
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 682
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 683
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 684
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 685
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 686
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 689
    iget v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v2, :pswitch_data_0

    .line 720
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 721
    return-object v1

    .line 677
    .end local v0           #CERTIFICATE_SPINNER_INDEX_ZERO:I
    .end local v1           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 691
    .restart local v0       #CERTIFICATE_SPINNER_INDEX_ZERO:I
    .restart local v1       #profile:Lcom/android/internal/net/VpnProfile;
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_1

    .line 695
    :pswitch_1
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 698
    :pswitch_2
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 699
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_1

    .line 703
    :pswitch_3
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 706
    :pswitch_4
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 707
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 711
    :cond_2
    :pswitch_5
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 712
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 714
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_1

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initCACert([Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "keys"
    .parameter "type"
    .parameter "installedKey"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 493
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayCA:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 494
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayCA:Ljava/util/List;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c51

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayCA:Ljava/util/List;

    const v6, 0x7f08082b

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 497
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayCA:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    new-instance v6, Lcom/android/lgesettings/vpn2/VpnDialog$4;

    invoke-direct {v6, p0, v1}, Lcom/android/lgesettings/vpn2/VpnDialog$4;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 512
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 513
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    if-eqz p3, :cond_1

    .line 514
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 516
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 517
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 518
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAKey:Ljava/lang/String;

    .line 520
    :cond_2
    return-void
.end method

.method public initServerCert([Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "keys"
    .parameter "type"
    .parameter "installedKey"

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 524
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayServer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 525
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayServer:Ljava/util/List;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c51

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayServer:Ljava/util/List;

    const v6, 0x7f080ab2

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 528
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayServer:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    new-instance v6, Lcom/android/lgesettings/vpn2/VpnDialog$5;

    invoke-direct {v6, p0, v1}, Lcom/android/lgesettings/vpn2/VpnDialog$5;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 543
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 544
    const/4 v5, 0x3

    if-ne p2, v5, :cond_1

    if-eqz p3, :cond_1

    .line 545
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 547
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 548
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->ServerAdapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 549
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerKey:Ljava/lang/String;

    .line 551
    :cond_2
    return-void
.end method

.method public initUserCert([Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "keys"
    .parameter "type"
    .parameter "installedKey"

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 461
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayUser:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 462
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayUser:Ljava/util/List;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080c51

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayUser:Ljava/util/List;

    const v6, 0x7f080437

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 465
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->oPerlishArrayUser:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    new-instance v6, Lcom/android/lgesettings/vpn2/VpnDialog$3;

    invoke-direct {v6, p0, v1}, Lcom/android/lgesettings/vpn2/VpnDialog$3;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 480
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 482
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    if-eqz p3, :cond_1

    .line 483
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 485
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 486
    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->UserAdapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 487
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserKey:Ljava/lang/String;

    .line 489
    :cond_2
    return-void
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "showOptions"

    .prologue
    .line 291
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a037e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedState"

    .prologue
    const v13, 0x7f08082b

    const v11, 0x7f080437

    const/4 v12, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v9, 0x7f04018c

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 106
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0087

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 113
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0370

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    .line 114
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0371

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    .line 115
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0383

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    .line 116
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0384

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    .line 117
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a037f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 118
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0380

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    .line 119
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0381

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    .line 120
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0372

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    .line 121
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0374

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 122
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0376

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 123
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0377

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 124
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0379

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 125
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a037b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 126
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a037c

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 127
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v9, 0x7f0a0385

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 130
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    .line 132
    .local v1, et:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 133
    .local v4, text:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 138
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v9, v9, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 139
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v6, v6, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v9, v9, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget-boolean v6, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v9, "USRPKEY_"

    iget-object v10, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v10, v10, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v11, v10}, Lcom/android/lgesettings/vpn2/VpnDialog;->loadUserCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v9, "CACERT_"

    iget-object v10, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v10, v10, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v13, v10}, Lcom/android/lgesettings/vpn2/VpnDialog;->loadCACertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v9, "USRCERT_"

    const v10, 0x7f080ab2

    iget-object v11, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v11, v11, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v10, v11}, Lcom/android/lgesettings/vpn2/VpnDialog;->loadServerCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v9, v9, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 174
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 182
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 188
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/lgesettings/vpn2/VpnDialog$1;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/vpn2/VpnDialog$1;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 197
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/lgesettings/vpn2/VpnDialog$2;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/vpn2/VpnDialog$2;-><init>(Lcom/android/lgesettings/vpn2/VpnDialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-direct {p0, v8}, Lcom/android/lgesettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v5

    .line 208
    .local v5, valid:Z
    iget-boolean v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_4

    :cond_2
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    .line 210
    iget-boolean v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v6, :cond_7

    .line 212
    iget-boolean v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mNew:Z

    if-ne v8, v6, :cond_5

    .line 213
    const v6, 0x7f080833

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vpn2/VpnDialog;->setTitle(I)V

    .line 219
    :goto_2
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0a036f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v6, v6, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v6}, Lcom/android/lgesettings/vpn2/VpnDialog;->changeType(I)V

    .line 225
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0a037d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 226
    .local v3, showOptions:Landroid/view/View;
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 228
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :goto_3
    const v6, 0x7f08082e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v12, v6, v8}, Lcom/android/lgesettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    .end local v3           #showOptions:Landroid/view/View;
    :goto_4
    const/4 v6, -0x2

    const v8, 0x7f08082d

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/lgesettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 252
    const/4 v6, 0x0

    invoke-super {p0, v6}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0, v12}, Lcom/android/lgesettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v8, :cond_8

    .end local v5           #valid:Z
    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, productname:Ljava/lang/String;
    if-eqz v2, :cond_9

    const-string v6, "vee3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 266
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0xf4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 274
    :goto_6
    return-void

    .line 161
    .end local v2           #productname:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v9, "USRPKEY_"

    iget-object v10, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v10, v10, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v11, v10}, Lcom/android/lgesettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v9, "CACERT_"

    iget-object v10, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v10, v10, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v13, v10}, Lcom/android/lgesettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v9, "USRCERT_"

    const v10, 0x7f080ab2

    iget-object v11, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v11, v11, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v6, v9, v10, v11}, Lcom/android/lgesettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .restart local v5       #valid:Z
    :cond_4
    move v6, v7

    .line 208
    goto/16 :goto_1

    .line 215
    :cond_5
    const v6, 0x7f080830

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vpn2/VpnDialog;->setTitle(I)V

    goto/16 :goto_2

    .line 230
    .restart local v3       #showOptions:Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto :goto_3

    .line 237
    .end local v3           #showOptions:Landroid/view/View;
    :cond_7
    const v6, 0x7f080831

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v6, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0a0382

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    const v6, 0x7f08082f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v12, v6, v8}, Lcom/android/lgesettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_4

    .line 255
    :cond_8
    invoke-direct {p0, v7}, Lcom/android/lgesettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v5

    goto/16 :goto_5

    .line 270
    .end local v5           #valid:Z
    .restart local v2       #productname:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_6
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 299
    invoke-direct {p0, p3}, Lcom/android/lgesettings/vpn2/VpnDialog;->changeType(I)V

    .line 335
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/lgesettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 336
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 303
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAKey:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerKey:Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/vpn2/CertInstallSender;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    const-string v1, "Type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserPos:I

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    sget-boolean v0, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserKey:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerKey:Ljava/lang/String;

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/vpn2/CertInstallSender;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    const-string v1, "Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAPos:I

    goto/16 :goto_0

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentUserKey:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAPos:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAKey:Ljava/lang/String;

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/vpn2/CertInstallSender;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "Type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentServerPos:I

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 287
    return-void
.end method
