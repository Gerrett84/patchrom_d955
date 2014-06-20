.class Lcom/android/providers/settings/UserAgentStringSCA$2$4;
.super Ljava/lang/Object;
.source "UserAgentStringSCA.java"

# interfaces
.implements Lcom/android/providers/settings/UserAgentStringSCA$Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/UserAgentStringSCA$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/settings/UserAgentStringSCA$2;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/UserAgentStringSCA$2;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/providers/settings/UserAgentStringSCA$2$4;->this$1:Lcom/android/providers/settings/UserAgentStringSCA$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/providers/settings/UserAgentStringSCA$2$4;->this$1:Lcom/android/providers/settings/UserAgentStringSCA$2;

    iget-object v0, v0, Lcom/android/providers/settings/UserAgentStringSCA$2;->this$0:Lcom/android/providers/settings/UserAgentStringSCA;

    invoke-virtual {v0}, Lcom/android/providers/settings/UserAgentStringSCA;->browserUserAgentStringTemplate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
