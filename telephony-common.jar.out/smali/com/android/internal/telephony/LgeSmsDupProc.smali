.class public Lcom/android/internal/telephony/LgeSmsDupProc;
.super Ljava/lang/Object;
.source "LgeSmsDupProc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;
    }
.end annotation


# static fields
.field private static final COMPARE_LIST_NUM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DupCheck"

.field private static compareSmsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public checkNetworkDuplicate(JLjava/lang/String;)Z
    .locals 6
    .parameter "stime"
    .parameter "addr"

    .prologue
    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 32
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;

    iget-wide v4, v2, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->timeStamp:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 33
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;

    iget-object v2, v2, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;->address:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "DupCheck"

    const-string v3, "[TEL-MSG] Network Duplicated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    const/4 v2, 0x1

    .line 47
    :goto_1
    return v2

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;-><init>(Lcom/android/internal/telephony/LgeSmsDupProc;JLjava/lang/String;)V

    .line 42
    .local v1, mtSms:Lcom/android/internal/telephony/LgeSmsDupProc$CompareMtSmsItem;
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_2

    .line 43
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v2, "DupCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TEL-MSG] compareSmsList.size()= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/LgeSmsDupProc;->compareSmsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 47
    goto :goto_1
.end method
