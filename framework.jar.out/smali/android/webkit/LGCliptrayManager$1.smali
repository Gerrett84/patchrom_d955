.class Landroid/webkit/LGCliptrayManager$1;
.super Ljava/lang/Object;
.source "LGCliptrayManager.java"

# interfaces
.implements Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGCliptrayManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGCliptrayManager;


# direct methods
.method constructor <init>(Landroid/webkit/LGCliptrayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Landroid/webkit/LGCliptrayManager$1;->this$0:Landroid/webkit/LGCliptrayManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Landroid/content/ClipData;)V
    .locals 2
    .parameter "clipData"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager$1;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/LGCliptrayManager;->access$100(Landroid/webkit/LGCliptrayManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager$1;->this$0:Landroid/webkit/LGCliptrayManager;

    #getter for: Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/LGCliptrayManager;->access$100(Landroid/webkit/LGCliptrayManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    :cond_0
    return-void
.end method
