.class Lcom/android/providers/settings/UserAgentStringSCA$2;
.super Ljava/util/HashMap;
.source "UserAgentStringSCA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/UserAgentStringSCA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/providers/settings/UserAgentStringSCA$Service;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/UserAgentStringSCA;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/UserAgentStringSCA;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/providers/settings/UserAgentStringSCA$2;->this$0:Lcom/android/providers/settings/UserAgentStringSCA;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v0, "userAgentString"

    new-instance v1, Lcom/android/providers/settings/UserAgentStringSCA$2$1;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/UserAgentStringSCA$2$1;-><init>(Lcom/android/providers/settings/UserAgentStringSCA$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/UserAgentStringSCA$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "userAgentStringTemplate"

    new-instance v1, Lcom/android/providers/settings/UserAgentStringSCA$2$2;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/UserAgentStringSCA$2$2;-><init>(Lcom/android/providers/settings/UserAgentStringSCA$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/UserAgentStringSCA$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "browserUserAgentString"

    new-instance v1, Lcom/android/providers/settings/UserAgentStringSCA$2$3;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/UserAgentStringSCA$2$3;-><init>(Lcom/android/providers/settings/UserAgentStringSCA$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/UserAgentStringSCA$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "browserUserAgentStringTemplate"

    new-instance v1, Lcom/android/providers/settings/UserAgentStringSCA$2$4;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/UserAgentStringSCA$2$4;-><init>(Lcom/android/providers/settings/UserAgentStringSCA$2;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/UserAgentStringSCA$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method
