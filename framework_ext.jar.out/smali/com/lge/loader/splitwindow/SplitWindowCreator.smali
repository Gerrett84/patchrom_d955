.class public Lcom/lge/loader/splitwindow/SplitWindowCreator;
.super Lcom/lge/loader/InstanceCreator;
.source "SplitWindowCreator.java"


# static fields
.field private static cloader:Ljava/lang/ClassLoader;


# instance fields
.field private mClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/com.lge.zdi.splitwindow.jar"

    const-class v2, Lcom/lge/loader/splitwindow/SplitWindowCreator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/lge/loader/splitwindow/SplitWindowCreator;->cloader:Ljava/lang/ClassLoader;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "windowType"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lge/loader/InstanceCreator;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, constructorName:Ljava/lang/String;
    const-string v0, "com.lge.zdi.splitwindow.nativebridge.SplitWindowBridge"

    .line 25
    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/lge/loader/splitwindow/SplitWindowCreator;->cloader:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/loader/splitwindow/SplitWindowCreator;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v1

    .line 28
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "SplitWindowCreator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "don\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/lge/loader/splitwindow/SplitWindowCreator;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lge/loader/splitwindow/SplitWindowCreator;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 45
    .end local v0           #e:Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
