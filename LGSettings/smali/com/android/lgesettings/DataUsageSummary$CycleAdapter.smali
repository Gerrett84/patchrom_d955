.class public Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/lgesettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2041
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2035
    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 2036
    iput-boolean v1, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 2042
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 2043
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

    .line 2044
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 2058
    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 2061
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/lgesettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "target"

    .prologue
    .line 2068
    if-eqz p1, :cond_2

    .line 2069
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 2070
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 2071
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/DataUsageSummary$CycleItem;

    .line 2072
    .local v2, item:Lcom/android/lgesettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/lgesettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 2070
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2074
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/lgesettings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/lgesettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 2079
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/lgesettings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .parameter "possible"

    .prologue
    .line 2047
    iput-boolean p1, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 2048
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 2049
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 2052
    iput-boolean p1, p0, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 2053
    invoke-direct {p0}, Lcom/android/lgesettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 2054
    return-void
.end method
