.class public final Lcom/android/internal/telephony/uicc/LgeUiccManager;
.super Ljava/lang/Object;
.source "LgeUiccManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LGEUICC_IMPL_CLASS_NAME:Ljava/lang/String; = "com.lge.uicc.LgeUiccImpl"

.field private static final LOG_TAG:Ljava/lang/String; = "LgeUiccManager"

.field private static mLUClass:Ljava/lang/Class;

.field private static mLUCons:Ljava/lang/reflect/Constructor;

.field private static mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 27
    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUCons:Ljava/lang/reflect/Constructor;

    .line 28
    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUClass:Ljava/lang/Class;

    .line 29
    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;

    .line 33
    :try_start_0
    const-string v1, "com.lge.uicc.LgeUiccImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUClass:Ljava/lang/Class;

    .line 34
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/android/internal/telephony/Phone;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUCons:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 35
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 36
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "LgeUiccManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get constructor failure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "mPhone"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;

    if-nez v1, :cond_0

    .line 43
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUCons:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/ILgeUicc;

    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LgeUiccManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance creating fail! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/uicc/ILgeUicc;
    .locals 4
    .parameter "mPhone"

    .prologue
    .line 51
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLUCons:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/ILgeUicc;

    sput-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/uicc/LgeUiccManager;->mLgeUicc:Lcom/android/internal/telephony/uicc/ILgeUicc;

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LgeUiccManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance creating fail! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
