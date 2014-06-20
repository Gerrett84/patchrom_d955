.class public Lcom/android/lgesettings/ActivityPicker;
.super Lcom/android/internal/app/AlertActivity;
.source "ActivityPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/ActivityPicker$EmptyDrawable;,
        Lcom/android/lgesettings/ActivityPicker$IconResizer;,
        Lcom/android/lgesettings/ActivityPicker$PickAdapter;
    }
.end annotation


# static fields
.field private static sGetThmMethod:Ljava/lang/reflect/Method;

.field private static sSetThmMethod:Ljava/lang/reflect/Method;

.field private static sUseThemeIconMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Lcom/android/lgesettings/ActivityPicker$PickAdapter;

.field private mBaseIntent:Landroid/content/Intent;

.field protected mWantNoThemeIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/android/lgesettings/ActivityPicker;->sUseThemeIconMethod:Ljava/lang/reflect/Method;

    .line 83
    sput-object v0, Lcom/android/lgesettings/ActivityPicker;->sSetThmMethod:Ljava/lang/reflect/Method;

    .line 84
    sput-object v0, Lcom/android/lgesettings/ActivityPicker;->sGetThmMethod:Ljava/lang/reflect/Method;

    .line 87
    :try_start_0
    const-string v0, "android.content.thm.ThemeIconManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    const-string v1, "isUseThemeIcon"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/pm/IPackageManager;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/lgesettings/ActivityPicker;->sUseThemeIconMethod:Ljava/lang/reflect/Method;

    .line 90
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "setThemeIconManager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ActivityPicker;->sSetThmMethod:Ljava/lang/reflect/Method;

    .line 91
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "getThemeIconManager"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/ActivityPicker;->sGetThmMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/ActivityPicker;->mWantNoThemeIcon:Z

    .line 564
    return-void
.end method

.method protected static loadNoThemeIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "pm"
    .parameter "ri"

    .prologue
    const/4 v6, 0x0

    .line 262
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-static {p0, v4, v6, v5}, Lcom/android/lgesettings/ActivityPicker;->loadNoThemeIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 264
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 285
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v2

    .line 268
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 269
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    if-eqz v1, :cond_3

    .line 270
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 271
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_2

    .line 272
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-static {p0, v4, v6, v5}, Lcom/android/lgesettings/ActivityPicker;->loadNoThemeIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 277
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v3

    .line 278
    .local v3, icon:I
    if-eqz v3, :cond_3

    .line 279
    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v4, v6, v3}, Lcom/android/lgesettings/ActivityPicker;->loadNoThemeIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 280
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 285
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #icon:I
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 268
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    :cond_4
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1
.end method

.method protected static loadNoThemeIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "pm"
    .parameter "packageName"
    .parameter "resourceName"
    .parameter "icon"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    .local v2, res:Landroid/content/res/Resources;
    sget-object v5, Lcom/android/lgesettings/ActivityPicker;->sGetThmMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 237
    .local v3, thm:Ljava/lang/Object;
    sget-object v5, Lcom/android/lgesettings/ActivityPicker;->sSetThmMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    if-eqz p2, :cond_0

    .line 240
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, p2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 242
    :cond_0
    if-eqz p3, :cond_1

    .line 243
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 249
    :cond_1
    :goto_0
    :try_start_2
    sget-object v4, Lcom/android/lgesettings/ActivityPicker;->sSetThmMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #thm:Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 245
    .restart local v2       #res:Landroid/content/res/Resources;
    .restart local v3       #thm:Ljava/lang/Object;
    :catch_2
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method protected getIntentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/lgesettings/ActivityPicker;->mAdapter:Lcom/android/lgesettings/ActivityPicker$PickAdapter;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    .line 174
    .local v0, item:Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    iget-object v1, p0, Lcom/android/lgesettings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->getIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected getItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 186
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 190
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 192
    .local v7, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    .local v3, icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 197
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 198
    .local v6, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$ShortcutIconResource;

    .line 204
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    iget-boolean v10, p0, Lcom/android/lgesettings/ActivityPicker;->mWantNoThemeIcon:Z

    if-eqz v10, :cond_0

    .line 205
    iget-object v10, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v8, v10, v11, v12}, Lcom/android/lgesettings/ActivityPicker;->loadNoThemeIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    :goto_1
    new-instance v10, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v10, p0, v6, v1}, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .restart local v2       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    :cond_0
    :try_start_1
    iget-object v10, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 210
    .local v9, res:Landroid/content/res/Resources;
    iget-object v10, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 222
    .end local v0           #i:I
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v6           #label:Ljava/lang/String;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v10, p0, Lcom/android/lgesettings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    if-eqz v10, :cond_2

    .line 223
    iget-object v10, p0, Lcom/android/lgesettings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v10, v5}, Lcom/android/lgesettings/ActivityPicker;->putIntentItems(Landroid/content/Intent;Ljava/util/List;)V

    .line 226
    :cond_2
    return-object v5

    .line 213
    .restart local v0       #i:I
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #label:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ActivityPicker;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->finish()V

    .line 166
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 155
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/ActivityPicker;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/ActivityPicker;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->finish()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iput-boolean v8, p0, Lcom/android/lgesettings/ActivityPicker;->mWantNoThemeIcon:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 104
    sget-object v6, Lcom/android/lgesettings/ActivityPicker;->sUseThemeIconMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/lgesettings/ActivityPicker;->sSetThmMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/lgesettings/ActivityPicker;->sGetThmMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    .line 106
    :try_start_0
    sget-object v6, Lcom/android/lgesettings/ActivityPicker;->sUseThemeIconMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "package"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getCallingPackage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 111
    .local v5, useThemeIcon:Z
    if-nez v5, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/lgesettings/ActivityPicker;->mWantNoThemeIcon:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v5           #useThemeIcon:Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.INTENT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 123
    .local v4, parcel:Landroid/os/Parcelable;
    instance-of v6, v4, Landroid/content/Intent;

    if-eqz v6, :cond_2

    .line 124
    check-cast v4, Landroid/content/Intent;

    .end local v4           #parcel:Landroid/os/Parcelable;
    iput-object v4, p0, Lcom/android/lgesettings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    .line 131
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/ActivityPicker;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 132
    .local v3, params:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 136
    const-string v6, "android.intent.extra.TITLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    const-string v6, "android.intent.extra.TITLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 143
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getItems()Ljava/util/List;

    move-result-object v2

    .line 144
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;>;"
    new-instance v6, Lcom/android/lgesettings/ActivityPicker$PickAdapter;

    invoke-direct {v6, p0, v2}, Lcom/android/lgesettings/ActivityPicker$PickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/android/lgesettings/ActivityPicker;->mAdapter:Lcom/android/lgesettings/ActivityPicker$PickAdapter;

    .line 145
    iget-object v6, p0, Lcom/android/lgesettings/ActivityPicker;->mAdapter:Lcom/android/lgesettings/ActivityPicker$PickAdapter;

    iput-object v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->setupAlert()V

    .line 148
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;>;"
    .end local v3           #params:Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v5       #useThemeIcon:Z
    :cond_1
    move v6, v8

    .line 111
    goto :goto_0

    .line 112
    .end local v5           #useThemeIcon:Z
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #parcel:Landroid/os/Parcelable;
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lcom/android/lgesettings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    .line 127
    iget-object v6, p0, Lcom/android/lgesettings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 139
    .end local v4           #parcel:Landroid/os/Parcelable;
    .restart local v3       #params:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_3
.end method

.method protected putIntentItems(Landroid/content/Intent;Ljava/util/List;)V
    .locals 7
    .parameter "baseIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 294
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 296
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v5, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 299
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 301
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    iget-boolean v6, p0, Lcom/android/lgesettings/ActivityPicker;->mWantNoThemeIcon:Z

    invoke-direct {v5, p0, v3, v4, v6}, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method
