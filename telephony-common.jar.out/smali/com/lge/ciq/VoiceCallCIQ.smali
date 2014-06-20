.class public Lcom/lge/ciq/VoiceCallCIQ;
.super Ljava/lang/Object;
.source "VoiceCallCIQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;
    }
.end annotation


# static fields
.field private static final ACTION_DDM_CSC:Ljava/lang/String; = "diagandroid.ddm.csc"

.field private static final DEBUG:Z = false

.field private static final EXTRA_DDM_CSC_ATTR:Ljava/lang/String; = "DdmCscAttr"

.field private static final EXTRA_DDM_CSC_CID:Ljava/lang/String; = "DdmCscCID"

.field private static final EXTRA_DDM_CSC_ERROR:Ljava/lang/String; = "DdmCscError"

.field private static final EXTRA_DDM_CSC_MID:Ljava/lang/String; = "DdmCscMID"

.field private static final EXTRA_DDM_CSC_NUMBER:Ljava/lang/String; = "DdmCscNumber"

.field private static final EXTRA_DDM_CSC_STATE:Ljava/lang/String; = "DdmCscState"

.field private static final EXTRA_DDM_CSC_TERM:Ljava/lang/String; = "DdmCscTerm"

.field private static final LOGTAG:Ljava/lang/String; = "LGDDM-CSC"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static getGS01Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS01;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->access$000()Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    move-result-object v0

    return-object v0
.end method

.method public static getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->access$100()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    move-result-object v0

    return-object v0
.end method

.method public static getGS03Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS03;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ$CSCallHolder;->access$200()Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    move-result-object v0

    return-object v0
.end method

.method public static submitCSCall(Landroid/content/Context;Lcom/carrieriq/iqagent/client/Metric;)V
    .locals 3
    .parameter "context"
    .parameter "metric"

    .prologue
    .line 96
    if-nez p0, :cond_1

    .line 97
    const-string v1, "LGDDM-CSC"

    const-string v2, "context is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-nez p1, :cond_2

    .line 102
    const-string v1, "LGDDM-CSC"

    const-string v2, "metric instance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.ddm.csc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    iget v1, p1, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS01Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    sget v2, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ID:I

    if-ne v1, v2, :cond_3

    .line 109
    const-string v2, "DdmCscCID"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->dwCallId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v2, "DdmCscAttr"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    iget-byte v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallAttr:B

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 111
    const-string v2, "DdmCscState"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    iget-byte v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->ucCallState:B

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 112
    const-string v2, "DdmCscNumber"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;

    iget-object v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :goto_1
    const-string v1, "DdmCscMID"

    iget v2, p1, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_3
    iget v1, p1, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS02Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    sget v2, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ID:I

    if-ne v1, v2, :cond_4

    .line 115
    const-string v2, "DdmCscCID"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->dwCallId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string v2, "DdmCscState"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;

    iget-byte v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS02;->ucCallState:B

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    goto :goto_1

    .line 117
    :cond_4
    iget v1, p1, Lcom/carrieriq/iqagent/client/Metric;->metricID:I

    invoke-static {}, Lcom/lge/ciq/VoiceCallCIQ;->getGS03Metric()Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    sget v2, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->ID:I

    if-ne v1, v2, :cond_0

    .line 119
    const-string v2, "DdmCscCID"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwCallId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v2, "DdmCscError"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    iget v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->dwErrCode:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v2, "DdmCscTerm"

    move-object v1, p1

    check-cast v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;

    iget-short v1, v1, Lcom/carrieriq/iqagent/client/metrics/gs/GS03;->wTermCode:S

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    goto :goto_1
.end method
