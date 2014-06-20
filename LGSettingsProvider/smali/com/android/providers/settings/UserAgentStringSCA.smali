.class public Lcom/android/providers/settings/UserAgentStringSCA;
.super Ljava/lang/Object;
.source "UserAgentStringSCA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/UserAgentStringSCA$Service;
    }
.end annotation


# static fields
.field private static final SCA:Lcom/android/providers/settings/UserAgentStringSCA;


# instance fields
.field private final BROWSER_UAS_TEMPLATE:Ljava/lang/String;

.field private final CLARO_TIM_MNCS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final LOCALES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final MMS_UAS:Ljava/lang/String;

.field private final SCA_MCCS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final UAS_TEMPLATE:Ljava/lang/String;

.field private final UNIFIED_UAS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final VIVO_MNCS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/settings/UserAgentStringSCA$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/providers/settings/UserAgentStringSCA;

    invoke-direct {v0}, Lcom/android/providers/settings/UserAgentStringSCA;-><init>()V

    sput-object v0, Lcom/android/providers/settings/UserAgentStringSCA;->SCA:Lcom/android/providers/settings/UserAgentStringSCA;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30"

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->BROWSER_UAS_TEMPLATE:Ljava/lang/String;

    .line 52
    const-string v0, "MMS/LG-Android-MMS-V2.0/1.2"

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->MMS_UAS:Ljava/lang/String;

    .line 55
    const-string v0, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30 MMS/LG-Android-MMS-V2.0/1.2"

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->UAS_TEMPLATE:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/android/providers/settings/UserAgentStringSCA$1;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/UserAgentStringSCA$1;-><init>(Lcom/android/providers/settings/UserAgentStringSCA;)V

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->LOCALES:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "02"

    aput-object v2, v1, v4

    const-string v2, "03"

    aput-object v2, v1, v5

    const-string v2, "04"

    aput-object v2, v1, v3

    const-string v2, "05"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->CLARO_TIM_MNCS:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "06"

    aput-object v2, v1, v4

    const-string v2, "10"

    aput-object v2, v1, v5

    const-string v2, "11"

    aput-object v2, v1, v3

    const-string v2, "23"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->VIVO_MNCS:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x22

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "344"

    aput-object v2, v1, v4

    const-string v2, "722"

    aput-object v2, v1, v5

    const-string v2, "342"

    aput-object v2, v1, v3

    const-string v2, "702"

    aput-object v2, v1, v6

    const-string v2, "736"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "724"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "730"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "732"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "712"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "368"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "366"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "370"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "740"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "706"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "352"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "704"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "738"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "372"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "708"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "338"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "334"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "710"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "714"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "744"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "716"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "330"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "356"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "358"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "360"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "746"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "364"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "374"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "748"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "734"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->SCA_MCCS:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "732/101"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->UNIFIED_UAS:Ljava/util/Set;

    .line 124
    new-instance v0, Lcom/android/providers/settings/UserAgentStringSCA$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/UserAgentStringSCA$2;-><init>(Lcom/android/providers/settings/UserAgentStringSCA;)V

    iput-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->services:Ljava/util/Map;

    return-void
.end method

.method public static call(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"

    .prologue
    .line 369
    :try_start_0
    const-string v3, "UserAgentStringSCA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v3, Lcom/android/providers/settings/UserAgentStringSCA;->SCA:Lcom/android/providers/settings/UserAgentStringSCA;

    invoke-virtual {v3, p0}, Lcom/android/providers/settings/UserAgentStringSCA;->respond(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, value:Ljava/lang/String;
    const-string v3, "UserAgentStringSCA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() == \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "UserAgentStringSCA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isClaroTimBrazil()Z
    .locals 2

    .prologue
    .line 205
    const-string v0, "724"

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->CLARO_TIM_MNCS:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMNC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLabSCA()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->SCA_MCCS:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMCC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVivoBrazil()Z
    .locals 2

    .prologue
    .line 217
    const-string v0, "724"

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA;->VIVO_MNCS:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMNC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private locale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 239
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, language:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/settings/UserAgentStringSCA;->LOCALES:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, code:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #code:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #code:Ljava/lang/String;
    :cond_0
    const-string v0, "es-sa"

    goto :goto_0
.end method

.method private parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "fallback"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method private simCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, op:Ljava/lang/String;
    return-object v0
.end method

.method private simMCC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simCode()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, op:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private simMNC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simCode()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, op:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public browserUserAgentString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->browserUserAgentStringTemplate()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, template:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 344
    :goto_0
    return-object v1

    .line 338
    :cond_0
    const-string v2, "${VERSION}"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "1.0"

    invoke-direct {p0, v3, v4}, Lcom/android/providers/settings/UserAgentStringSCA;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${LOCALE}"

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->locale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${MODEL}"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "generic"

    invoke-direct {p0, v4, v5}, Lcom/android/providers/settings/UserAgentStringSCA;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${BUILD}"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v5, "MASTER"

    invoke-direct {p0, v4, v5}, Lcom/android/providers/settings/UserAgentStringSCA;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, uas:Ljava/lang/String;
    goto :goto_0
.end method

.method public browserUserAgentStringTemplate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->isVivoBrazil()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30"

    const-string v4, "${LOCALE}"

    const-string v5, "pt-br"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, browserTemplate:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_4

    move-object v0, v2

    .line 329
    .end local v0           #browserTemplate:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->isClaroTimBrazil()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->isLabSCA()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30"

    const-string v4, "${LOCALE}"

    const-string v5, "es-sa"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 323
    .restart local v0       #browserTemplate:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMCC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMNC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, ca:Ljava/lang/String;
    const-string v2, "UserAgentStringSCA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCC/MNC == \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/android/providers/settings/UserAgentStringSCA;->UNIFIED_UAS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MMS/LG-Android-MMS-V2.0/1.2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public respond(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "request"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/providers/settings/UserAgentStringSCA;->services:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/UserAgentStringSCA$Service;

    .line 349
    .local v0, service:Lcom/android/providers/settings/UserAgentStringSCA$Service;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/providers/settings/UserAgentStringSCA$Service;->call()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAgentString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->userAgentStringTemplate()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, template:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 302
    :cond_0
    const-string v2, "${VERSION}"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "1.0"

    invoke-direct {p0, v3, v4}, Lcom/android/providers/settings/UserAgentStringSCA;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${LOCALE}"

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->locale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${MODEL}"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "generic"

    invoke-direct {p0, v4, v5}, Lcom/android/providers/settings/UserAgentStringSCA;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${BUILD}"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v5, "MASTER"

    invoke-direct {p0, v4, v5}, Lcom/android/providers/settings/UserAgentStringSCA;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, uas:Ljava/lang/String;
    goto :goto_0
.end method

.method public userAgentStringTemplate()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMCC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->simMNC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, ca:Ljava/lang/String;
    const-string v2, "UserAgentStringSCA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCC/MNC == \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/providers/settings/UserAgentStringSCA;->UNIFIED_UAS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-object v1

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->isVivoBrazil()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    const-string v1, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30 MMS/LG-Android-MMS-V2.0/1.2"

    const-string v2, "${LOCALE}"

    const-string v3, "pt-br"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->isClaroTimBrazil()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    const-string v1, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30 MMS/LG-Android-MMS-V2.0/1.2"

    goto :goto_0

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/UserAgentStringSCA;->isLabSCA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const-string v1, "Mozilla/5.0 (Linux; U; Android ${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30 MMS/LG-Android-MMS-V2.0/1.2"

    const-string v2, "${LOCALE}"

    const-string v3, "es-sa"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
