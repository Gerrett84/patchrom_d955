.class public Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;
.super Ljava/lang/Object;
.source "SplitWindowCreatorHelper.java"


# static fields
.field private static SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;
    .locals 3

    .prologue
    .line 17
    sget-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    if-nez v1, :cond_0

    .line 18
    sget-object v1, Lcom/lge/loader/RuntimeLibraryLoader;->SPLIT_WINDOW:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    .line 19
    .local v0, creator:Lcom/lge/loader/InstanceCreator;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/splitwindow/ISplitWindow;

    sput-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    .line 23
    :cond_0
    sget-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    if-eqz v1, :cond_1

    .line 24
    sget-object v2, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    invoke-interface {v1}, Lcom/lge/loader/splitwindow/ISplitWindow;->getPolicyService()Lcom/lge/loader/splitwindow/ISplitWindow$ISplitWindowPolicy;

    move-result-object v1

    monitor-exit v2

    .line 28
    :goto_0
    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launchService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    sget-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    if-nez v1, :cond_0

    .line 33
    sget-object v1, Lcom/lge/loader/RuntimeLibraryLoader;->SPLIT_WINDOW:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    .line 34
    .local v0, creator:Lcom/lge/loader/InstanceCreator;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/splitwindow/ISplitWindow;

    sput-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    .line 38
    .end local v0           #creator:Lcom/lge/loader/InstanceCreator;
    :cond_0
    sget-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    if-eqz v1, :cond_1

    .line 39
    sget-object v1, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->SPLITWINDOW_INSTANCE:Lcom/lge/loader/splitwindow/ISplitWindow;

    invoke-interface {v1, p0}, Lcom/lge/loader/splitwindow/ISplitWindow;->launchService(Landroid/content/Context;)V

    .line 42
    :cond_1
    return-void
.end method
