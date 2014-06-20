.class public Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2262
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "app"
    .parameter "label"

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2279
    :goto_0
    return-void

    .line 2268
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2269
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2271
    new-instance v1, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 2272
    .local v1, fragment:Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2273
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2274
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2275
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2276
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2277
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 2278
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 2283
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2284
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 2285
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/DataUsageSummary$AppItem;

    #setter for: Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$3602(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/DataUsageSummary$AppItem;)Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 2286
    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$400(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 2287
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2291
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2292
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/DataUsageSummary;

    .line 2293
    .local v0, target:Lcom/android/lgesettings/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/DataUsageSummary;->mCurrentApp:Lcom/android/lgesettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/lgesettings/DataUsageSummary;->access$3602(Lcom/android/lgesettings/DataUsageSummary;Lcom/android/lgesettings/DataUsageSummary$AppItem;)Lcom/android/lgesettings/DataUsageSummary$AppItem;

    .line 2294
    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$400(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 2295
    return-void
.end method
