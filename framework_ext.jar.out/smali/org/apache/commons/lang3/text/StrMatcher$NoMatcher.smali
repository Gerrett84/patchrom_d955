.class final Lorg/apache/commons/lang3/text/StrMatcher$NoMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    .line 391
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 1
    .parameter "buffer"
    .parameter "pos"
    .parameter "bufferStart"
    .parameter "bufferEnd"

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method
