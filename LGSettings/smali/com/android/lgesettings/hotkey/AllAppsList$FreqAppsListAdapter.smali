.class Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/hotkey/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FreqAppsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/lgesettings/hotkey/AllAppsList;


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 424
    move-object v4, p2

    .line 425
    .local v4, row:Landroid/view/View;
    const/4 v5, 0x0

    .line 427
    .local v5, wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    if-nez v4, :cond_0

    .line 428
    iget-object v6, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 429
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04009d

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 430
    new-instance v5, Lcom/android/lgesettings/hotkey/AppListItemWrapper;

    .end local v5           #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    invoke-direct {v5, v4}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;-><init>(Landroid/view/View;)V

    .line 431
    .restart local v5       #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 436
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mFrequentlyApps:Ljava/util/List;
    invoke-static {v6}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$500(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .line 437
    .local v0, appInfo:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    if-nez p1, :cond_1

    .line 439
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.lge.QuickClip"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 440
    .local v3, pInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v5}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getLabel()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v5}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getIcon()Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.lge.QuickClip"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v3           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    const v6, 0x7f0a0136

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 450
    .local v1, divider:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_2

    .line 451
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    :goto_2
    return-object v4

    .line 433
    .end local v0           #appInfo:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    .end local v1           #divider:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    check-cast v5, Lcom/android/lgesettings/hotkey/AppListItemWrapper;

    .restart local v5       #wrapper:Lcom/android/lgesettings/hotkey/AppListItemWrapper;
    goto :goto_0

    .line 445
    .restart local v0       #appInfo:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_1
    invoke-virtual {v5}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getLabel()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    #getter for: Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v6, p0, Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;->this$0:Lcom/android/lgesettings/hotkey/AllAppsList;

    invoke-virtual {v5}, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->getIcon()Landroid/widget/ImageView;

    move-result-object v7

    #calls: Lcom/android/lgesettings/hotkey/AllAppsList;->setAppIcon(Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V
    invoke-static {v6, v7, v0}, Lcom/android/lgesettings/hotkey/AllAppsList;->access$400(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V

    goto :goto_1

    .line 453
    .restart local v1       #divider:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 442
    .end local v1           #divider:Landroid/widget/ImageView;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
