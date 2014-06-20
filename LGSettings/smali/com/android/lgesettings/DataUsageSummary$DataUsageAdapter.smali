.class public Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/lgesettings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/net/UidDetailProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 2143
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2140
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 2144
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    .line 2145
    iput p2, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 2146
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 19
    .parameter "stats"
    .parameter "restrictedUids"

    .prologue
    .line 2152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2154
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2155
    .local v4, currentUserId:I
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 2157
    .local v9, knownItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/lgesettings/DataUsageSummary$AppItem;>;"
    const/4 v5, 0x0

    .line 2158
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v11

    .line 2159
    .local v11, size:I
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_6

    .line 2160
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 2163
    iget v12, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 2165
    .local v12, uid:I
    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2166
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-ne v13, v4, :cond_2

    .line 2167
    move v3, v12

    .line 2177
    .local v3, collapseKey:I
    :goto_2
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 2178
    .local v8, item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    if-nez v8, :cond_0

    .line 2179
    new-instance v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    invoke-direct {v8, v3}, Lcom/android/lgesettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 2180
    .restart local v8       #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    iget v13, v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2183
    :cond_0
    invoke-virtual {v8, v12}, Lcom/android/lgesettings/DataUsageSummary$AppItem;->addUid(I)V

    .line 2184
    iget-wide v13, v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    .line 2159
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2158
    .end local v3           #collapseKey:I
    .end local v6           #i:I
    .end local v8           #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    .end local v11           #size:I
    .end local v12           #uid:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 2169
    .restart local v6       #i:I
    .restart local v11       #size:I
    .restart local v12       #uid:I
    :cond_2
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/lgesettings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .restart local v3       #collapseKey:I
    goto :goto_2

    .line 2171
    .end local v3           #collapseKey:I
    :cond_3
    const/4 v13, -0x4

    if-eq v12, v13, :cond_4

    const/4 v13, -0x5

    if-ne v12, v13, :cond_5

    .line 2172
    :cond_4
    move v3, v12

    .restart local v3       #collapseKey:I
    goto :goto_2

    .line 2174
    .end local v3           #collapseKey:I
    :cond_5
    const/16 v3, 0x3e8

    .restart local v3       #collapseKey:I
    goto :goto_2

    .line 2187
    .end local v3           #collapseKey:I
    .end local v12           #uid:I
    :cond_6
    move-object/from16 v2, p2

    .local v2, arr$:[I
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v10, :cond_9

    aget v12, v2, v7

    .line 2189
    .restart local v12       #uid:I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-eq v13, v4, :cond_7

    .line 2187
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2191
    :cond_7
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 2192
    .restart local v8       #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    if-nez v8, :cond_8

    .line 2193
    new-instance v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    invoke-direct {v8, v12}, Lcom/android/lgesettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 2194
    .restart local v8       #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    const-wide/16 v13, -0x1

    iput-wide v13, v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    .line 2195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    iget v13, v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2198
    :cond_8
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/lgesettings/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_4

    .line 2201
    .end local v8           #item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    .end local v12           #uid:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    iget-wide v13, v13, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    :goto_5
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 2203
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 2204
    return-void

    .line 2202
    :cond_a
    const-wide/16 v13, 0x0

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 2223
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/lgesettings/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/lgesettings/AppViewHolder;

    move-result-object v1

    .line 2224
    .local v1, holder:Lcom/android/lgesettings/AppViewHolder;
    iget-object p2, v1, Lcom/android/lgesettings/AppViewHolder;->rootView:Landroid/view/View;

    .line 2226
    iget v4, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v4, :cond_0

    .line 2227
    iget v4, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v5, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v4, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 2232
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 2233
    .local v2, item:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    iget-object v4, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/lgesettings/net/UidDetailProvider;

    iget v5, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->key:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/lgesettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/lgesettings/net/UidDetail;

    move-result-object v0

    .line 2234
    .local v0, detail:Lcom/android/lgesettings/net/UidDetail;
    iget-object v4, v0, Lcom/android/lgesettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2235
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/lgesettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2238
    :cond_1
    iget-object v4, v0, Lcom/android/lgesettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 2239
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/lgesettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2243
    :cond_2
    iget-boolean v4, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v4, :cond_4

    iget-wide v4, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    cmp-long v4, v4, v8

    if-gtz v4, :cond_4

    .line 2244
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->text1:Landroid/widget/TextView;

    const v5, 0x7f0807e6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2245
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2251
    :goto_0
    iget-wide v4, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    iget-wide v4, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/lgesettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 2252
    .local v3, percentTotal:I
    :cond_3
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2254
    return-object p2

    .line 2247
    .end local v3           #percentTotal:I
    :cond_4
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/lgesettings/DataUsageSummary$AppItem;->total:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2248
    iget-object v4, v1, Lcom/android/lgesettings/AppViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
