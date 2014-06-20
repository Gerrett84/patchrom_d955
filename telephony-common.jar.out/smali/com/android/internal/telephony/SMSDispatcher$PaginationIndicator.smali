.class Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaginationIndicator"
.end annotation


# instance fields
.field private mLength:I

.field private mSequence:I

.field private mTotalCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "sequence"
    .parameter "totalCount"
    .parameter "length"

    .prologue
    .line 4341
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4342
    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;->mSequence:I

    .line 4343
    iput p2, p0, Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;->mTotalCount:I

    .line 4344
    iput p3, p0, Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;->mLength:I

    .line 4345
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 4356
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;->mLength:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 4348
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;->mSequence:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 4352
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PaginationIndicator;->mTotalCount:I

    return v0
.end method
