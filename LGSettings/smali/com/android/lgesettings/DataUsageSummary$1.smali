.class final Lcom/android/lgesettings/DataUsageSummary$1;
.super Ljava/util/TimerTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    .line 312
    return-void
.end method
