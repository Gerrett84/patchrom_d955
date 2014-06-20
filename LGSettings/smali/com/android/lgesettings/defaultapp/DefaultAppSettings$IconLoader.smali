.class Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;
.super Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;
.source "DefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    .line 250
    invoke-direct {p0, p2}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;-><init>(Landroid/content/Context;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected loadDataFromDatabase(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "name"

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v1, v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "DefaultAppSetting"

    const-string v2, "Can\'t find pacakge name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic loadDataFromDatabase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;->loadDataFromDatabase(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected updateView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "view"
    .parameter "data"

    .prologue
    .line 263
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_0
    return-void
.end method

.method protected bridge synthetic updateView(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;->updateView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
