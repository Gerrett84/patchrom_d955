.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$MsgSequence;
.super Ljava/lang/Object;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgSequence"
.end annotation


# instance fields
.field public mEos:I

.field public mPdu:[B

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;I[B)V
    .locals 1
    .parameter
    .parameter "eos"
    .parameter "pdu"

    .prologue
    .line 2460
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$MsgSequence;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2457
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$MsgSequence;->mEos:I

    .line 2458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$MsgSequence;->mPdu:[B

    .line 2461
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$MsgSequence;->mEos:I

    .line 2462
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$MsgSequence;->mPdu:[B

    .line 2463
    return-void
.end method
