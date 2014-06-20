.class public Lcom/android/internal/telephony/LgeFastDormancyHandler;
.super Ljava/lang/Object;
.source "LgeFastDormancyHandler.java"


# static fields
.field private static fastDormancyConstructor:Ljava/lang/reflect/Constructor;

.field private static mClass:Ljava/lang/Class;

.field private static mILgeFastDormancyHandler:Lcom/android/internal/telephony/ILgeFastDormancyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->fastDormancyConstructor:Ljava/lang/reflect/Constructor;

    .line 33
    sput-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;

    .line 34
    sput-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/ILgeFastDormancyHandler;

    .line 37
    :try_start_0
    const-string v1, "com.android.internal.telephony.LgeFDHandlerInterfaceImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;

    .line 38
    sget-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mClass:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/android/internal/telephony/ServiceStateTracker;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lcom/android/internal/telephony/PhoneBase;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->fastDormancyConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 40
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LgeFastDormancyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Library loading failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/ILgeFastDormancyHandler;
    .locals 4
    .parameter "mContext"
    .parameter "mCm"
    .parameter "mSst"
    .parameter "mDct"
    .parameter "mP"

    .prologue
    .line 47
    sget-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/ILgeFastDormancyHandler;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_LGU:Z

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/ILgeFastDormancyHandler;

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->fastDormancyConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ILgeFastDormancyHandler;

    sput-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/ILgeFastDormancyHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mILgeFastDormancyHandler:Lcom/android/internal/telephony/ILgeFastDormancyHandler;

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LgeFastDormancyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not make newInstance of fastDormancyConstructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
