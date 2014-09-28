.class Lcom/android/internal/policy/impl/PhoneWindowManager$VMToast;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mmToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$VMToast;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$VMToast;->mmToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1585
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->mmToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 1586
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x20b0033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->mmToast:Landroid/widget/Toast;

    .line 1590
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->mmToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1591
    return-void
.end method
