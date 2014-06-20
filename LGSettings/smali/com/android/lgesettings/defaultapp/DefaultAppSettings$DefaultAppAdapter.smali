.class public Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAppAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mContext:Landroid/content/Context;

    .line 286
    iput-object p2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mContext:Landroid/content/Context;

    .line 287
    iput-object p3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    .line 288
    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->onButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private onButtonClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v2, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    #getter for: Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;
    invoke-static {v2}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->access$100(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v2, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v2, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUpdateThread:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;

    invoke-virtual {v2}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->requestUpdate()V

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DefaultAppSetting"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->getItem(I)Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 309
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, v:Landroid/view/View;
    const/4 v2, 0x0

    .line 332
    .local v2, vh:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;
    if-nez p2, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    #getter for: Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->access$200(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040058

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 334
    new-instance v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;

    .end local v2           #vh:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;-><init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)V

    .line 335
    .restart local v2       #vh:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;
    const v3, 0x7f0a00c7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 336
    const v3, 0x7f0a00c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mNameView:Landroid/widget/TextView;

    .line 337
    const v3, 0x7f0a00ca

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mButtonView:Landroid/widget/Button;

    .line 338
    const v3, 0x7f0a00c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mButtonView:Landroid/widget/Button;

    new-instance v4, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter$1;-><init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->getItem(I)Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    move-result-object v0

    .line 351
    .local v0, info:Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    if-nez v0, :cond_1

    .line 352
    new-instance v1, Landroid/view/View;

    .end local v1           #v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 365
    :goto_1
    return-object v1

    .line 346
    .end local v0           #info:Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    .restart local v1       #v:Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 347
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #vh:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;
    check-cast v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;

    .restart local v2       #vh:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;
    goto :goto_0

    .line 355
    .restart local v0       #info:Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v3, v3, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v3, v3, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mIconLoader:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;

    iget-object v4, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$IconLoader;->loadData(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 359
    :cond_2
    iget-object v3, v0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 360
    iget-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_2
    iget-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mButtonView:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    :cond_3
    iget-object v3, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public updatePackageInfo(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->mList:Ljava/util/List;

    .line 292
    return-void
.end method
