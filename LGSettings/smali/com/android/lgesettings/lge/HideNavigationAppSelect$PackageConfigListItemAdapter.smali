.class final Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "HideNavigationAppSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/HideNavigationAppSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageConfigListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    .line 325
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 326
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x1

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;

    .line 331
    .local v0, cache:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->packageName:Ljava/lang/String;

    .line 332
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->appName:Ljava/lang/String;

    .line 333
    iget-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const/4 v5, 0x0

    .line 336
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v6, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$200(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 341
    :goto_0
    iget-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v6, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->readDB()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$300(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, enableHideApp:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 345
    const-string v4, ""

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$400()Landroid/text/TextUtils$SimpleStringSplitter;

    move-result-object v1

    .line 349
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 351
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, componentNameString:Ljava/lang/String;
    iget-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    iget-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 360
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_1
    return-void

    .line 337
    .end local v1           #colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4           #enableHideApp:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 339
    .local v3, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v3           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v2       #componentNameString:Ljava/lang/String;
    .restart local v4       #enableHideApp:Ljava/lang/String;
    :cond_2
    iget-object v6, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 364
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;

    invoke-direct {v0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;-><init>()V

    .line 366
    .local v0, cache:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;
    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->iconView:Landroid/widget/ImageView;

    .line 367
    const v2, 0x7f0a0130

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->nameView:Landroid/widget/TextView;

    .line 368
    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;->checkBox:Landroid/widget/CheckBox;

    .line 370
    new-instance v2, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter$1;-><init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    return-object v1
.end method
