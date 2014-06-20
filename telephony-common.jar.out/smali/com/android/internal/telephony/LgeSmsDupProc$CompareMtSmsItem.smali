.class Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;
.super Ljava/lang/Object;
.source "LgeSmsDupProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeSmsDupProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompareMtSmsItem"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/LgeSmsDupProc;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LgeSmsDupProc;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "stime"
    .parameter "addr"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->this$0:Lcom/android/internal/telephony/LgeSmsDupProc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->timeStamp:J

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    .line 56
    const-string v0, "DupCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEL-MSG] timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, "DupCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEL-MSG] origination address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-wide p2, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->timeStamp:J

    .line 59
    iput-object p4, p0, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    .line 60
    return-void
.end method
