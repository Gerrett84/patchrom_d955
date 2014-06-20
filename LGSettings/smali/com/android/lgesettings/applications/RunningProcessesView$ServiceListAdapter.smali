.class Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/lgesettings/applications/RunningState;

.field final synthetic this$0:Lcom/android/lgesettings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/applications/RunningProcessesView;Lcom/android/lgesettings/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 245
    iput-object p2, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    .line 246
    invoke-virtual {p1}, Lcom/android/lgesettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 249
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 349
    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v4, v3, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 354
    monitor-exit v4

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    .line 357
    .local v2, vh:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    .line 358
    .local v1, item:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/lgesettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/lgesettings/applications/RunningState;Lcom/android/lgesettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 359
    .local v0, ai:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/lgesettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 333
    if-nez p2, :cond_0

    .line 334
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 339
    return-object v0

    .line 336
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04012a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 345
    return-object v0
.end method

.method refreshItems()V
    .locals 7

    .prologue
    .line 266
    iget-boolean v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v5}, Lcom/android/lgesettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    .local v2, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v5, v2, :cond_0

    .line 270
    iput-object v2, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 271
    if-nez v2, :cond_6

    .line 272
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    invoke-virtual {v5}, Lcom/android/lgesettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->getHiddenApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 284
    .local v0, hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v5, "TCL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 285
    invoke-static {}, Lcom/android/lgesettings/applications/RunningProcessesView;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    const-string v5, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/Utils;->checkChameleon()V

    .line 291
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 293
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/applications/RunningState$BaseItem;

    .line 294
    .local v4, tempItem:Lcom/android/lgesettings/applications/RunningState$BaseItem;
    iget-object v3, v4, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 296
    .local v3, pInfo:Landroid/content/pm/PackageItemInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 297
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 291
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 266
    .end local v0           #hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    .end local v3           #pInfo:Landroid/content/pm/PackageItemInfo;
    .end local v4           #tempItem:Lcom/android/lgesettings/applications/RunningState$BaseItem;
    :cond_5
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v5}, Lcom/android/lgesettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 274
    .restart local v2       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/RunningState$MergedItem;>;"
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-boolean v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v5, :cond_0

    .line 277
    iget-object v5, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    iget-object v6, v6, Lcom/android/lgesettings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_1

    .line 300
    .restart local v0       #hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_7
    return-void
.end method

.method setShowBackground(Z)V
    .locals 2
    .parameter "showBackground"

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 253
    iput-boolean p1, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/lgesettings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 256
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/lgesettings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView;->mColorBar:Lcom/android/lgesettings/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 259
    :cond_0
    return-void
.end method
