.class public Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 171
    const v0, 0x7f0a004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0a0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0a00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0a0292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0a002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/lgesettings/applications/RunningState;Lcom/android/lgesettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;
    .locals 12
    .parameter "state"
    .parameter "item"
    .parameter "builder"

    .prologue
    .line 181
    iget-object v9, p1, Lcom/android/lgesettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 182
    :try_start_0
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 183
    .local v6, pm:Landroid/content/pm/PackageManager;
    iget-object v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v8, :cond_0

    instance-of v8, p2, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    if-eqz v8, :cond_0

    .line 186
    move-object v0, p2

    check-cast v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object v5, v0

    .line 187
    .local v5, mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    iget-object v8, v5, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    if-eqz v8, :cond_0

    .line 188
    move-object v0, p2

    check-cast v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    invoke-virtual {v8, v6}, Lcom/android/lgesettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 189
    move-object v0, p2

    check-cast v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 190
    move-object v0, p2

    check-cast v0, Lcom/android/lgesettings/applications/RunningState$MergedItem;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/lgesettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/lgesettings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 193
    .end local v5           #mergedItem:Lcom/android/lgesettings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v10, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v1, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 195
    .local v1, ai:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v8, v1, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 196
    iput-object p2, v1, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/lgesettings/applications/RunningState$BaseItem;

    .line 197
    iput-object p0, v1, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;

    .line 198
    iget-wide v10, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v10, v1, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 199
    iget-boolean v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v8, :cond_2

    .line 200
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0805ce

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    const/4 v8, 0x0

    iput-object v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 205
    iget-object v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v8, :cond_1

    .line 207
    const-string v8, "com.nttdocomo.android.socialphonebook"

    iget-object v10, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_3

    .line 208
    const/4 v3, 0x0

    .line 210
    .local v3, dr:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    const-string v8, "com.nttdocomo.android.socialphonebook"

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :goto_1
    if-eqz v3, :cond_1

    .line 214
    :try_start_2
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 215
    .local v7, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 216
    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    .end local v2           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #dr:Landroid/graphics/drawable/BitmapDrawable;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1, v8, p3}, Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 225
    monitor-exit v9

    return-object v1

    .line 202
    :cond_2
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v10, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    .end local v1           #ai:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 219
    .restart local v1       #ai:Lcom/android/lgesettings/applications/RunningProcessesView$ActiveItem;
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    iget-object v8, p2, Lcom/android/lgesettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 220
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/lgesettings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 211
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #dr:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
