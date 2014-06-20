.class final enum Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f08083c

    const v5, 0x7f0a0331

    const v6, 0x7f0a0332

    const v7, 0x7f0a0333

    invoke-direct/range {v0 .. v8}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    .line 62
    new-instance v6, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    const-string v7, "USER"

    const-string v9, "user"

    const v10, 0x7f08083d

    const v11, 0x7f0a0334

    const v12, 0x7f0a0335

    const v13, 0x7f0a0336

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v6, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "tag"
    .parameter "label"
    .parameter "view"
    .parameter "progress"
    .parameter "list"
    .parameter "checkbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 77
    iput p4, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 78
    iput p5, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 79
    iput p6, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 80
    iput p7, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 81
    iput-boolean p8, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 82
    return-void
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;ZLcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3
    .parameter "store"
    .parameter "alias"

    .prologue
    const/4 v0, 0x0

    .line 93
    sget-object v1, Lcom/android/lgesettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 97
    :cond_0
    :pswitch_1
    return v0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .parameter "store"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .parameter "certHolder"

    .prologue
    .line 114
    sget-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :pswitch_0
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f080841

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    const v0, 0x7f080842

    goto :goto_0

    .line 121
    :pswitch_1
    const v0, 0x7f080843

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .parameter "certHolder"

    .prologue
    .line 102
    sget-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :pswitch_0
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const v0, 0x7f08083f

    .line 109
    :goto_0
    return v0

    .line 107
    :cond_0
    const v0, 0x7f08083e

    goto :goto_0

    .line 109
    :pswitch_1
    const v0, 0x7f080840

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .parameter "ok"
    .parameter "certHolder"

    .prologue
    .line 126
    if-eqz p1, :cond_2

    .line 127
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 128
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 132
    :goto_1
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 137
    :goto_2
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_2
    #getter for: Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/lgesettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #calls: Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V
    invoke-static {v0}, Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$400(Lcom/android/lgesettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/lgesettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
