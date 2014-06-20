.class public Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;
.super Ljava/lang/Object;
.source "LGDataConnectionTrackerMsg.java"


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public apntype_n:I

.field public cause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public enable:I

.field public reason:Ljava/lang/String;

.field public success:Z

.field public tag:I

.field public type:Ljava/lang/String;

.field public valid:Z

.field public what:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->DBG:Z

    .line 22
    const-string v0, "LGDataconenctionTrackerMsg"

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->LOG_TAG:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->success:Z

    .line 25
    iput v1, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->enable:I

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->tag:I

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->apntype_n:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->type:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->reason:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->valid:Z

    .line 31
    iput v1, p0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->what:I

    return-void
.end method
