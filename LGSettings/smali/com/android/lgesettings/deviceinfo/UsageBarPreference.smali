.class public Lcom/android/lgesettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f0400f7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const v0, 0x7f0400f7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 42
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2
    .parameter "order"
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/lgesettings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/lgesettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/lgesettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 83
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 75
    const v0, 0x7f0a0055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/lgesettings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 77
    return-void
.end method
