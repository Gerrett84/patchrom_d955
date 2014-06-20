.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$WidgetContext;
.super Landroid/content/ContextWrapper;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetContext"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 265
    return-void
.end method


# virtual methods
.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 2
    .parameter "packageName"
    .parameter "flags"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 270
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->isIgnoreSecurityPackage(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 p2, 0x3

    .line 272
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$WidgetContext;

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContextWrapper;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$WidgetContext;-><init>(Landroid/content/Context;)V

    .line 274
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContextWrapper;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
