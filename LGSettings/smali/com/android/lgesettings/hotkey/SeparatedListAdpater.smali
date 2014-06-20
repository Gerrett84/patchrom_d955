.class public Lcom/android/lgesettings/hotkey/SeparatedListAdpater;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdpater.java"


# instance fields
.field public mHeaders:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    .line 25
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04009c

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->mHeaders:Landroid/widget/ArrayAdapter;

    .line 26
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .parameter "section"
    .parameter "adapter"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, total:I
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 39
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    goto :goto_0

    .line 42
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 43
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, header:Ljava/lang/String;
    const-string v5, "NO_HEADER"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    add-int/lit8 v4, v4, -0x1

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v1           #header:Ljava/lang/String;
    :cond_2
    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 54
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, section:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 56
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 57
    .local v3, size:I
    const-string v4, "NO_HEADER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    if-ge p1, v3, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 68
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :cond_0
    :goto_1
    return-object v2

    .line 62
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #section:Ljava/lang/String;
    .restart local v3       #size:I
    :cond_1
    if-eqz p1, :cond_0

    .line 63
    if-ge p1, v3, :cond_2

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 66
    :cond_2
    sub-int/2addr p1, v3

    .line 67
    goto :goto_0

    .line 68
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 108
    const/4 v4, 0x1

    .line 109
    .local v4, type:I
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, section:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 113
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 114
    .local v3, size:I
    const-string v5, "NO_HEADER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    add-int/lit8 v3, v3, -0x1

    .line 116
    if-ge p1, v3, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    .line 126
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :goto_1
    return v5

    .line 119
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #section:Ljava/lang/String;
    .restart local v3       #size:I
    :cond_0
    if-nez p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    .line 120
    :cond_1
    if-ge p1, v3, :cond_2

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 123
    :cond_2
    sub-int/2addr p1, v3

    .line 124
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 125
    goto :goto_0

    .line 126
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v3           #size:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, sectionNum:I
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, section:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 81
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 82
    .local v4, size:I
    const-string v5, "NO_HEADER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    add-int/lit8 v4, v4, -0x1

    .line 84
    if-ge p1, v4, :cond_2

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 94
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v4           #size:I
    :goto_1
    return-object v5

    .line 87
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v2       #section:Ljava/lang/String;
    .restart local v4       #size:I
    :cond_0
    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v3, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 88
    :cond_1
    if-ge p1, v4, :cond_2

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 91
    :cond_2
    sub-int/2addr p1, v4

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    goto :goto_0

    .line 94
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v2           #section:Ljava/lang/String;
    .end local v4           #size:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 99
    const/4 v2, 0x1

    .line 100
    .local v2, total:I
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 101
    .local v0, adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 103
    .end local v0           #adapter:Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->getItemViewType(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
