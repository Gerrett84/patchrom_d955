.class Lcom/android/internal/policy/impl/PhoneWindowManager$42$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$42;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$42;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$42;)V
    .locals 0
    .parameter

    .prologue
    .line 8657
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$42$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$42;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 8660
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 8661
    return-void
.end method
