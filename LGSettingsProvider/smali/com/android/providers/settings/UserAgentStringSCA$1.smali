.class Lcom/android/providers/settings/UserAgentStringSCA$1;
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
        "Ljava/lang/String;",
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
    .line 59
    iput-object p1, p0, Lcom/android/providers/settings/UserAgentStringSCA$1;->this$0:Lcom/android/providers/settings/UserAgentStringSCA;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 61
    const-string v0, "en"

    const-string v1, "en-us"

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/UserAgentStringSCA$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "pt"

    const-string v1, "pt-br"

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/UserAgentStringSCA$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
