.class public Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;
.super Lcom/android/lgesettings/defaultapp/UpdateThread;
.source "DefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAppUpdateThread"
.end annotation


# instance fields
.field mPackageInfo:Ljava/util/List;
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
.method public constructor <init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    .line 176
    invoke-direct {p0, p2}, Lcom/android/lgesettings/defaultapp/UpdateThread;-><init>(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->mPackageInfo:Ljava/util/List;

    .line 177
    return-void
.end method

.method private uiUpdate(Ljava/util/List;)V
    .locals 4
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
    .line 208
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->mPackageInfo:Ljava/util/List;

    .line 209
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v1, v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 210
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v1, v1, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    return-void
.end method

.method private updateApplicationLabel(Ljava/util/List;)V
    .locals 7
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
    .line 214
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    if-nez p1, :cond_1

    .line 237
    :cond_0
    return-void

    .line 218
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    .line 221
    .local v3, info:Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v4, v4, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v4, v4, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    .line 229
    iget-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 230
    iget-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mPackageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    .line 233
    :cond_3
    iget-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 234
    const-string v4, ""

    iput-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 222
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 224
    const-string v4, ""

    iput-object v4, v3, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 180
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return v4

    .line 182
    :pswitch_0
    invoke-static {}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    iget-object v2, v2, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    #getter for: Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;
    invoke-static {v3}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->access$100(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings;->makeDefaultPackageInfo(Landroid/content/pm/PackageManager;Landroid/hardware/usb/IUsbManager;)Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->updateApplicationLabel(Ljava/util/List;)V

    .line 188
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->sort(Ljava/util/List;I)V

    .line 189
    invoke-direct {p0, v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppUpdateThread;->uiUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sort(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, info:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/defaultapp/DefaultAppInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 200
    :pswitch_0
    new-instance v0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;

    invoke-direct {v0}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
