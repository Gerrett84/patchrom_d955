.class Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .parameter "store"
    .parameter "adapter"
    .parameter "tab"
    .parameter "alias"
    .parameter "x509Cert"

    .prologue
    .line 279
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 281
    iput-object p2, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .line 282
    iput-object p3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    .line 283
    iput-object p4, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    .line 284
    iput-object p5, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 286
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    .line 288
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, cn:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, o:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, ou:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    iput-object v1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    .line 311
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    iget-object v4, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iget-object v5, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    #calls: Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    .line 312
    return-void

    .line 299
    :cond_0
    iput-object v1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 300
    iput-object v2, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 304
    iput-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 305
    const-string v3, ""

    iput-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    .line 307
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    .line 308
    const-string v3, ""

    iput-object v3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/lgesettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p5}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, primary:I
    if-eqz v0, :cond_0

    .line 318
    .end local v0           #primary:I
    :goto_0
    return v0

    .restart local v0       #primary:I
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 321
    instance-of v1, p1, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 325
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 324
    check-cast v0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;

    .line 325
    .local v0, other:Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
