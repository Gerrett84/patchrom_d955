.class public Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;
.super Ljava/lang/Object;
.source "CdmaSmsStateQeTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA/SMS/SmsStateQeTest"

.field private static m_nPrl:I


# instance fields
.field private m_bIsTestInKorea:Z

.field private m_bKoreaDomesticPrl:Z

.field private m_bRoamingState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_nPrl:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bIsTestInKorea:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bKoreaDomesticPrl:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bRoamingState:Z

    .line 37
    const-string v0, "CDMA/SMS/SmsStateQeTest"

    const-string v1, "CdmaSmsStateQeTest created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method private CheckPrl()Z
    .locals 4

    .prologue
    .line 56
    const-string v1, "CDMA/SMS/SmsStateQeTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckPrl() - m_nPrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_nPrl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, bRetValue:Z
    sget v1, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_nPrl:I

    const/16 v2, 0x2713

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_nPrl:I

    const/16 v2, 0x2716

    if-ne v1, v2, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x1

    .line 64
    :cond_1
    return v0
.end method

.method private UpdateState()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bRoamingState:Z

    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->CheckPrl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bKoreaDomesticPrl:Z

    .line 45
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bRoamingState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bKoreaDomesticPrl:Z

    if-ne v0, v1, :cond_0

    .line 46
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bIsTestInKorea:Z

    .line 51
    :goto_0
    const-string v0, "CDMA/SMS/SmsStateQeTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateState() - isRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bRoamingState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isKoreaPrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bKoreaDomesticPrl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", KSC5601 Encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bIsTestInKorea:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bIsTestInKorea:Z

    goto :goto_0
.end method


# virtual methods
.method public getPrl()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_nPrl:I

    return v0
.end method

.method public isTestInKorea()Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->UpdateState()V

    .line 84
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_bIsTestInKorea:Z

    return v0
.end method

.method public setPrl(Ljava/lang/String;)V
    .locals 4
    .parameter "prl"

    .prologue
    .line 68
    const-string v1, "CDMA/SMS/SmsStateQeTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrl() - PRL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cdma/CdmaSmsStateQeTest;->m_nPrl:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v1, "CDMA/SMS/SmsStateQeTest"

    const-string v2, "setPrl() - NumberFormatException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
