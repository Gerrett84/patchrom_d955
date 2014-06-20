.class Lcom/android/internal/policy/impl/PhoneWindowManager$43$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$43;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$43;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$43;)V
    .locals 0
    .parameter

    .prologue
    .line 8699
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$43;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 8702
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$43;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGoHomeDialog2()V

    .line 8703
    return-void
.end method
