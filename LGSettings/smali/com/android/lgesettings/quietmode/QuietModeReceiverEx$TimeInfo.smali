.class Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;
.super Ljava/lang/Object;
.source "QuietModeReceiverEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeInfo"
.end annotation


# instance fields
.field private mCurrent:J

.field private mCurrentDayString:Ljava/lang/String;

.field private mEnd:J

.field private mEndDayString:Ljava/lang/String;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mStart:J

.field private mStartDayString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;Lcom/android/lgesettings/quietmode/QuietModeInfo;JJ)V
    .locals 3
    .parameter
    .parameter "_QuietModeInfo"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 480
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->this$0:Lcom/android/lgesettings/quietmode/QuietModeReceiverEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mEndDayString:Ljava/lang/String;

    .line 473
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mStartDayString:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mCurrentDayString:Ljava/lang/String;

    .line 483
    iput-object p2, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 485
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mCurrent:J

    .line 486
    iput-wide p3, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mStart:J

    .line 487
    iput-wide p5, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mEnd:J

    .line 489
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-wide v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mCurrent:J

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mCurrentDayString:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-wide v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mStart:J

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mStartDayString:Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-wide v1, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mEnd:J

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getStringDayInfo(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mEndDayString:Ljava/lang/String;

    .line 492
    return-void
.end method


# virtual methods
.method public getCurrentDayInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mCurrentDayString:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDayInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mEndDayString:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDayInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeReceiverEx$TimeInfo;->mStartDayString:Ljava/lang/String;

    return-object v0
.end method
