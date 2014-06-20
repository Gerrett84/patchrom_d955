.class Lcom/android/lgesettings/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/lgesettings/CryptKeeper$5;->this$0:Lcom/android/lgesettings/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/lgesettings/CryptKeeper$5;->this$0:Lcom/android/lgesettings/CryptKeeper;

    #calls: Lcom/android/lgesettings/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/lgesettings/CryptKeeper;->access$1100(Lcom/android/lgesettings/CryptKeeper;)V

    .line 773
    return-void
.end method
