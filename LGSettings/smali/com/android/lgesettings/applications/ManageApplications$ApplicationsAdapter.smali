.class Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/lgesettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/lgesettings/applications/ApplicationsState;

.field private final mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/applications/ApplicationsState;Lcom/android/lgesettings/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .parameter "state"
    .parameter "tab"
    .parameter "filterMode"

    .prologue
    .line 582
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 562
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 583
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    .line 584
    invoke-virtual {p1, p0}, Lcom/android/lgesettings/applications/ApplicationsState;->newSession(Lcom/android/lgesettings/applications/ApplicationsState$Callbacks;)Lcom/android/lgesettings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    .line 585
    iput-object p2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 586
    iget-object v0, p2, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 587
    iput p3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 588
    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getHiddenApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    .line 689
    .local v1, hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "TCL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 690
    invoke-static {}, Lcom/android/lgesettings/applications/ManageApplications;->access$900()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_0
    const-string v7, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 693
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->checkChameleon()V

    .line 696
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 697
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v3, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 700
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 701
    .local v0, entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_4

    iget-object v7, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 703
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    .end local v0           #entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .end local v2           #i:I
    .end local v3           #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 708
    .local v5, prefixStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, spacePrefixStr:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .restart local v3       #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 712
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 713
    .restart local v0       #entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, nlabel:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 715
    :cond_6
    if-eqz v0, :cond_7

    iget-object v7, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 717
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 720
    .end local v0           #entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .end local v4           #nlabel:Ljava/lang/String;
    .end local v5           #prefixStr:Ljava/lang/String;
    .end local v6           #spacePrefixStr:Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method public getAppEntry(I)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 801
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 804
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 793
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 809
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->id:J

    .line 812
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 818
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v3, p2}, Lcom/android/lgesettings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/lgesettings/applications/AppViewHolder;

    move-result-object v1

    .line 819
    .local v1, holder:Lcom/android/lgesettings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/lgesettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 822
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 823
    .local v0, entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 824
    :try_start_0
    iput-object v0, v1, Lcom/android/lgesettings/applications/AppViewHolder;->entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    .line 825
    iget-object v3, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 826
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/applications/ApplicationsState;->ensureIcon(Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;)V

    .line 834
    iget-object v3, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 835
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v3, v4}, Lcom/android/lgesettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 838
    iget-object v3, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 839
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v4, 0x7f080596

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 847
    :goto_0
    iget v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 848
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 849
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 854
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 856
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    return-object p2

    .line 841
    :cond_3
    :try_start_1
    iget-object v3, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_4

    .line 842
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v4, 0x7f080595

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 854
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 845
    :cond_4
    :try_start_2
    iget-object v3, v1, Lcom/android/lgesettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 852
    :cond_5
    iget-object v2, v1, Lcom/android/lgesettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 785
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 868
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 749
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 759
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/applications/AppViewHolder;

    .line 761
    .local v0, holder:Lcom/android/lgesettings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/lgesettings/applications/AppViewHolder;->entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    iget-object v3, v0, Lcom/android/lgesettings/applications/AppViewHolder;->entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/lgesettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 764
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget-object v2, v0, Lcom/android/lgesettings/applications/AppViewHolder;->entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/applications/ManageApplications;->access$1000(Lcom/android/lgesettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 771
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 777
    .end local v0           #holder:Lcom/android/lgesettings/applications/AppViewHolder;
    :cond_1
    return-void

    .line 764
    .restart local v0       #holder:Lcom/android/lgesettings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 759
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 731
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 734
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$700(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$700(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iput-boolean v3, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 740
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 741
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 742
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 743
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 744
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/lgesettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 727
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 605
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ApplicationsState$Session;->pause()V

    .line 607
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .parameter "sort"

    .prologue
    .line 610
    iget v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    iput p1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .parameter "eraseold"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 621
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 622
    .local v1, emulated:Z
    if-eqz v1, :cond_1

    .line 623
    iput v6, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 627
    :goto_0
    iget v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 638
    const/4 v3, 0x0

    .line 641
    .local v3, filterObj:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 656
    sget-object v0, Lcom/android/lgesettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 659
    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    invoke-virtual {v4, v3, v0}, Lcom/android/lgesettings/applications/ApplicationsState$Session;->rebuild(Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 661
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 682
    :goto_3
    return-void

    .line 625
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filterObj:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 629
    :pswitch_0
    sget-object v3, Lcom/android/lgesettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;

    .line 630
    .restart local v3       #filterObj:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 632
    .end local v3           #filterObj:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/lgesettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;

    .line 633
    .restart local v3       #filterObj:Lcom/android/lgesettings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 634
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 643
    :pswitch_2
    iget v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 651
    sget-object v0, Lcom/android/lgesettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 652
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 645
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/lgesettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 646
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 648
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/lgesettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 649
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 665
    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 666
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 667
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 671
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 672
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 674
    if-nez v2, :cond_4

    .line 675
    iput-boolean v7, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 676
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$700(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 669
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 679
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$700(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$800(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 641
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 643
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(I)V
    .locals 2
    .parameter "sort"

    .prologue
    const/4 v1, 0x1

    .line 592
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 593
    iput-boolean v1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 594
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/lgesettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lgesettings/applications/ApplicationsState$Session;->resume()V

    .line 595
    iput p1, p0, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 596
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
