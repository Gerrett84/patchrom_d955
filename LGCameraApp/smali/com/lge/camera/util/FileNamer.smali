.class public Lcom/lge/camera/util/FileNamer;
.super Ljava/lang/Object;
.source "FileNamer.java"


# static fields
.field public static final STATUS_NOT_READY:I = 0x0

.field public static final STATUS_READY:I = 0x1

.field private static mFileNamer:Lcom/lge/camera/util/FileNamer;


# instance fields
.field private mCheckAVIThread:Ljava/lang/Thread;

.field private mCheckJPEGThread:Ljava/lang/Thread;

.field private mCheckThread:Ljava/lang/Thread;

.field private mCurrFileName:Ljava/lang/String;

.field private mDCFFileName:Ljava/lang/String;

.field private mDCFFileStatus:I

.field private mDCFFirstNumber:I

.field private mDCFNumber:J

.field private mDigitnum:I

.field private mImageFileName:Ljava/lang/String;

.field private mImageFileNumber:J

.field private mImageFileStatus:I

.field private mInCheckDCF:Z

.field private mInCheckImage:Z

.field private mInCheckVideo:Z

.field private mLastMode:I

.field private mStopThread:Z

.field private mStorageOldState:I

.field private mStorageState:I

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFileNumber:J

.field private mVideoFileStatus:I

.field private temp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageOldState:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    .line 35
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 36
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 37
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 43
    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 45
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 46
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    .line 47
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    .line 681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    return-void
.end method

.method static synthetic access$002(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/util/FileNamer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lge/camera/util/FileNamer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    return p1
.end method

.method static synthetic access$108(Lcom/lge/camera/util/FileNamer;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/util/FileNamer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/util/FileNamer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/util/FileNamer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    return v0
.end method

.method static synthetic access$1500(IIJ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/util/FileNamer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/lge/camera/util/FileNamer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    return p1
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/util/FileNamer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/lge/camera/util/FileNamer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    return p1
.end method

.method static synthetic access$602(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/util/FileNamer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/lge/camera/util/FileNamer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    return-wide p1
.end method

.method static synthetic access$800(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    return-object p1
.end method

.method private addDCFCount()V
    .locals 12

    .prologue
    const/16 v11, 0x5a

    const/16 v10, 0x39

    .line 774
    const/4 v3, 0x0

    .local v3, digitNum:I
    const/4 v0, 0x0

    .line 775
    .local v0, dcfFirstNumber:I
    const-wide/16 v1, 0x0

    .line 777
    .local v1, dcfNumber:J
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 778
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 779
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 781
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    .line 782
    const-wide/high16 v6, 0x4024

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 787
    .local v4, tmpNum:D
    long-to-double v6, v1

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    .line 788
    const-wide/16 v1, 0x0

    .line 789
    const/16 v6, 0x2f

    if-le v0, v6, :cond_0

    if-lt v0, v10, :cond_1

    :cond_0
    const/16 v6, 0x41

    if-le v0, v6, :cond_3

    if-ge v0, v11, :cond_3

    .line 791
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 801
    :cond_2
    :goto_0
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 802
    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 803
    iput-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 807
    return-void

    .line 792
    :cond_3
    if-ne v0, v10, :cond_4

    .line 793
    const/16 v0, 0x41

    goto :goto_0

    .line 794
    :cond_4
    if-ne v0, v11, :cond_2

    .line 795
    const/16 v0, 0x30

    .line 796
    add-int/lit8 v3, v3, 0x1

    .line 798
    const-wide/16 v1, 0x1

    goto :goto_0
.end method

.method public static get()Lcom/lge/camera/util/FileNamer;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/lge/camera/util/FileNamer;

    invoke-direct {v0}, Lcom/lge/camera/util/FileNamer;-><init>()V

    sput-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    .line 54
    :cond_0
    sget-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    return-object v0
.end method

.method private initializeFileNumber(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "storage"

    .prologue
    const/4 v7, -0x1

    const-wide/16 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, "CameraApp"

    const-string v1, "Cannot initialize file number because context is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {p1, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedPictureCount(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 82
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    .line 83
    iput-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 85
    :cond_1
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 87
    invoke-static {p1, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedVideoCount(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 89
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 90
    iput-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 92
    :cond_2
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 94
    invoke-static {p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedDCFFirstCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 95
    invoke-static {p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedDCFCount(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 96
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-ne v0, v7, :cond_3

    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 97
    iput-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 99
    :cond_3
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-eq v0, v7, :cond_4

    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-nez v0, :cond_5

    .line 100
    :cond_4
    const/16 v0, 0x30

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 103
    :cond_5
    invoke-static {p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedDCFDigit(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 104
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    if-nez v0, :cond_6

    .line 105
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 107
    :cond_6
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    goto :goto_0
.end method

.method private makeCurrentDateToString()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v11, 0x4

    .line 698
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 699
    .local v6, time:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 701
    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, CurrentTime:Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "YYYYMMDDTHHDDSS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, month:Ljava/lang/String;
    const/16 v8, 0x8

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 706
    .local v5, monthDay:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, year:Ljava/lang/String;
    const/16 v8, 0x9

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, hour:Ljava/lang/String;
    const/16 v8, 0xd

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, minute:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, fileName:Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-object v1
.end method

.method private static makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    .locals 9
    .parameter "firstNumber"
    .parameter "digit"
    .parameter "count"

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 203
    .local v3, tmpLength:I
    const-string v5, "CAM%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-char v8, p0

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, fileName:Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, fileNum:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 207
    sub-int v4, p1, v3

    .line 208
    .local v4, tmpNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method private static makePictureFileName(J)Ljava/lang/String;
    .locals 5
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 160
    const-wide/32 v1, 0x1869f

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 161
    const-string v1, "IMG%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, fileName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 163
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    const-string v1, "IMG%05d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0           #fileName:Ljava/lang/String;
    :cond_1
    const-wide/16 v1, 0x3e7

    cmp-long v1, p0, v1

    if-lez v1, :cond_2

    .line 167
    const-string v1, "IMG%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0           #fileName:Ljava/lang/String;
    :cond_2
    const-string v1, "IMG%03d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0
.end method

.method private makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "AscCode"

    .prologue
    .line 684
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 685
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 688
    :cond_0
    const-wide/16 v0, 0x7a

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    :goto_0
    return-object v0

    .line 692
    :cond_1
    const-wide/16 p2, 0x7a

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeVideoFileName(J)Ljava/lang/String;
    .locals 5
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 184
    const-wide/32 v1, 0x1869f

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 185
    const-string v1, "MOV%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, fileName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 187
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    const-string v1, "MOV%05d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0           #fileName:Ljava/lang/String;
    :cond_1
    const-wide/16 v1, 0x3e7

    cmp-long v1, p0, v1

    if-lez v1, :cond_2

    .line 191
    const-string v1, "MOV%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0           #fileName:Ljava/lang/String;
    :cond_2
    const-string v1, "MOV%03d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fileName:Ljava/lang/String;
    goto :goto_0
.end method

.method private declared-synchronized startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "mode"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCheckFileName (mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", useThread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage State = NOT AVAILABLE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "startCheckFileName stopThread."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 307
    iput p2, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 310
    if-nez p2, :cond_1

    .line 311
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamera(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 313
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamcorder(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private startCheckFileNameCDMA(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "mode"
    .parameter "dir"

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 717
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileNameCDMA mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    if-nez p1, :cond_1

    .line 720
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 722
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->makeCurrentDateToString()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, fileName:Ljava/lang/String;
    const-wide/16 v1, 0x60

    .line 725
    .local v1, start:J
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    add-long/2addr v1, v8

    .line 727
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/camera/util/FileNamer;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 730
    :cond_0
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 731
    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 733
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 750
    :goto_1
    return-object v3

    .line 735
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #start:J
    :cond_1
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 738
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->makeCurrentDateToString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .restart local v0       #fileName:Ljava/lang/String;
    const-wide/16 v1, 0x60

    .line 742
    .restart local v1       #start:J
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 743
    :cond_2
    add-long/2addr v1, v8

    .line 744
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/camera/util/FileNamer;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 747
    :cond_3
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 748
    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 750
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    goto :goto_1
.end method

.method private startCheckFileNameForCamcorder(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 318
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-ne v3, v8, :cond_1

    .line 319
    const-string v3, "CameraApp"

    const-string v4, "mVideoFileStatus == STATUS_READY"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-nez p4, :cond_6

    .line 324
    iput-boolean v8, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 325
    const-string v3, "CameraApp"

    const-string v4, "startCheckFileName video without thread"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    .local v1, startTime:J
    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {v3, v4}, Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, fileName:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 331
    :cond_3
    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 332
    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {v3, v4}, Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v3, :cond_2

    .line 338
    :cond_4
    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v3, :cond_5

    .line 339
    const-string v3, "CameraApp"

    const-string v4, "startCheckFileName is stop without thread in Video!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 341
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    goto :goto_0

    .line 344
    :cond_5
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 345
    iput v8, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 346
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName is finished without thread (elapse time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 352
    if-eqz p1, :cond_0

    .line 353
    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {p1, p2, v3, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    goto/16 :goto_0

    .line 356
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #startTime:J
    :cond_6
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/util/FileNamer$1;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/lge/camera/util/FileNamer$1;-><init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    .line 392
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private startCheckFileNameForCamera(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 11
    .parameter "context"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 397
    iget v5, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    if-ne v5, v10, :cond_1

    .line 398
    const-string v5, "CameraApp"

    const-string v6, "mImageFileStatus == STATUS_READY"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    if-nez p4, :cond_5

    .line 403
    iput-boolean v10, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 404
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName image without thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 406
    .local v3, startTime:J
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 407
    .local v1, imageFileNumber:J
    invoke-static {v1, v2}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, fileName:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 410
    invoke-static {v1, v2}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-boolean v5, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v5, :cond_2

    .line 415
    :cond_3
    iput-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 417
    iget-boolean v5, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v5, :cond_4

    .line 418
    const-string v5, "CameraApp"

    const-string v6, "startCheckFileName is stop in Camera!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 420
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    goto :goto_0

    .line 423
    :cond_4
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 424
    iput v10, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 425
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image file is ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName is finished without thread (elapse time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 429
    if-eqz p1, :cond_0

    .line 430
    iget-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-static {p1, p2, v5, v6}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    goto/16 :goto_0

    .line 433
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #imageFileNumber:J
    .end local v3           #startTime:J
    :cond_5
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/lge/camera/util/FileNamer$2;

    invoke-direct {v6, p0, p3, p1, p2}, Lcom/lge/camera/util/FileNamer$2;-><init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 469
    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private declared-synchronized startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "mode"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    const/4 v6, 0x1

    .line 474
    monitor-enter p0

    :try_start_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF (mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", useThread : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    if-eqz v3, :cond_1

    .line 477
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage State = NOT AVAILABLE,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v3, v6, :cond_2

    .line 481
    const-string v3, "CameraApp"

    const-string v4, "mDCFFileStatus == STATUS_READY"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 485
    :cond_2
    :try_start_2
    const-string v3, "CameraApp"

    const-string v4, "startCheckFileName stopThread."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 487
    iput p2, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    .line 488
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 490
    if-nez p4, :cond_7

    .line 491
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    .line 492
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF without thread : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 494
    .local v1, startTime:J
    const/4 v0, 0x0

    .line 495
    .local v0, fileName:Ljava/lang/String;
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    iget-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {v3, v4, v5, v6}, Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 500
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    .line 501
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    iget-wide v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {v3, v4, v5, v6}, Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v3, :cond_3

    .line 507
    :cond_5
    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v3, :cond_6

    .line 508
    const-string v3, "CameraApp"

    const-string v4, "startCheckFileName_DCF is stop without Thread by DCF rules!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    .line 510
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    goto/16 :goto_0

    .line 514
    :cond_6
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 515
    const/4 v3, 0x1

    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 516
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcf file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF is finished without thread (elapse time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    .line 521
    if-eqz p1, :cond_0

    .line 522
    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {p1, v3, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 523
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-static {p1, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 524
    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-static {p1, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 527
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #startTime:J
    :cond_7
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/util/FileNamer$3;

    invoke-direct {v4, p0, p3, p1}, Lcom/lge/camera/util/FileNamer$3;-><init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    .line 568
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private subtractDCFCount()V
    .locals 10

    .prologue
    const/16 v9, 0x5a

    const-wide/16 v7, 0x1

    const/16 v6, 0x30

    .line 812
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 813
    const-wide/high16 v2, 0x4024

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 816
    .local v0, tmpNum:D
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-ne v2, v6, :cond_1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 817
    double-to-long v2, v0

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 818
    iput v9, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 819
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 832
    :cond_0
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtractDCFCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void

    .line 820
    :cond_1
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 821
    double-to-long v2, v0

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 822
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-le v2, v6, :cond_2

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x3a

    if-lt v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x42

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_4

    .line 824
    :cond_3
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    goto :goto_0

    .line 825
    :cond_4
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x41

    if-ne v2, v3, :cond_5

    .line 826
    const/16 v2, 0x39

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    goto :goto_0

    .line 827
    :cond_5
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-ne v2, v6, :cond_0

    .line 828
    iput v9, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 829
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    goto :goto_0
.end method


# virtual methods
.method public close(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "storage"

    .prologue
    const/4 v5, 0x0

    .line 111
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 1/4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    if-nez v1, :cond_0

    .line 113
    const-string v1, "CameraApp"

    const-string v2, "Already close()."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    if-eqz v1, :cond_2

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 121
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    if-eqz v1, :cond_4

    .line 123
    :cond_3
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    if-eqz p1, :cond_5

    .line 130
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-static {p1, p2, v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    .line 131
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 2/4 mImageFileNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {p1, p2, v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    .line 134
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 3/4 mVideoFileNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {p1, v1, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 137
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-static {p1, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 138
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-static {p1, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    .line 139
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 4/4 mDCFNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_2
    iput-object v5, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 145
    iput-object v5, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 146
    iput-object v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 147
    iput-object v5, p0, Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;

    .line 148
    sput-object v5, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    goto/16 :goto_0

    .line 141
    :cond_5
    const-string v1, "CameraApp"

    const-string v2, "Cannot accumulate DCF because context is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "mode"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 262
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v1, v2, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    .line 264
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 265
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 266
    .local v0, ret:Ljava/lang/String;
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 267
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 248
    :pswitch_0
    if-nez p2, :cond_0

    .line 249
    const-string v1, "CameraApp"

    const-string v2, "getFileName for CDMA"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p2, p4}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameCDMA(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0       #ret:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    if-ne p2, v2, :cond_1

    .line 254
    invoke-direct {p0, p2, p4}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameCDMA(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0       #ret:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_2
    if-nez p2, :cond_3

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    if-ne v1, v2, :cond_3

    .line 270
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 271
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 272
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 273
    .restart local v0       #ret:Ljava/lang/String;
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 274
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v0           #ret:Ljava/lang/String;
    :cond_3
    if-ne p2, v2, :cond_4

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-ne v1, v2, :cond_4

    .line 277
    iget-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 278
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 279
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 280
    .restart local v0       #ret:Ljava/lang/String;
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 281
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 284
    .end local v0           #ret:Ljava/lang/String;
    :cond_4
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getFileStatus(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 581
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v2, v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 582
    goto :goto_0

    .line 583
    :cond_2
    if-nez p1, :cond_3

    .line 584
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 586
    :cond_3
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reload(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "mode"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    const/4 v2, 0x0

    .line 755
    const-string v0, "CameraApp"

    const-string v1, "&&&&&&&&&&&&& reload call"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    invoke-direct {p0, p1, p3}, Lcom/lge/camera/util/FileNamer;->initializeFileNumber(Landroid/content/Context;I)V

    .line 759
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 760
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 762
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 766
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public setErrorFeedback(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const-wide/16 v2, 0x1

    .line 667
    if-nez p1, :cond_1

    .line 668
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 672
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->subtractDCFCount()V

    .line 674
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error feedback dcf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error feedback image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", video = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void

    .line 670
    :cond_1
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    goto :goto_0
.end method

.method public setStorageState(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "mode"
    .parameter "storage"
    .parameter "dir"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 599
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorageState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageOldState:I

    if-ne v0, p5, :cond_0

    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    if-eq v0, p2, :cond_4

    .line 602
    :cond_0
    iput p5, p0, Lcom/lge/camera/util/FileNamer;->mStorageOldState:I

    .line 603
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    if-eqz v0, :cond_2

    .line 604
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage state : NOT AVAILABLE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 606
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 607
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 608
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 623
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "storage state :  AVAILABLE "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0, p2}, Lcom/lge/camera/util/FileNamer;->getFileStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    const-string v0, "CameraApp"

    const-string v1, "setStorageState : startCheckFileName with thread"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    invoke-direct {p0, p1, p2, p4, v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 616
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0

    .line 621
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "setStorageState: status same"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "mode"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"

    .prologue
    .line 58
    const-string v0, "CameraApp"

    const-string v1, "create()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1, p3}, Lcom/lge/camera/util/FileNamer;->initializeFileNumber(Landroid/content/Context;I)V

    .line 62
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 71
    :cond_0
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "create()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 65
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 66
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 629
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    .line 638
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 641
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 648
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 651
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 656
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    .line 657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 658
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 643
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 653
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public updateNextFileIndex(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "mode"
    .parameter "storage"
    .parameter "dir"
    .parameter "useThread"
    .parameter "fileName"

    .prologue
    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    .line 218
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 221
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 234
    :goto_0
    return-void

    .line 223
    :cond_0
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 224
    if-eqz p6, :cond_1

    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 228
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 229
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0
.end method
