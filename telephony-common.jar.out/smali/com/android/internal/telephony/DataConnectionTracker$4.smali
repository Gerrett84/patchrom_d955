.class final Lcom/android/internal/telephony/DataConnectionTracker$4;
.super Ljava/lang/Object;
.source "DataConnectionTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/ApnContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2519
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/ApnContext;Lcom/android/internal/telephony/ApnContext;)I
    .locals 1
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 2524
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->isEqualPriority(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2525
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->isLowerPriority(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2519
    check-cast p1, Lcom/android/internal/telephony/ApnContext;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/ApnContext;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker$4;->compare(Lcom/android/internal/telephony/ApnContext;Lcom/android/internal/telephony/ApnContext;)I

    move-result v0

    return v0
.end method
