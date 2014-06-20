.class Litectokyo/wiflus/SsbEnabler$1$2;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Litectokyo/wiflus/SsbEnabler$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Litectokyo/wiflus/SsbEnabler$1;


# direct methods
.method constructor <init>(Litectokyo/wiflus/SsbEnabler$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$1$2;->this$1:Litectokyo/wiflus/SsbEnabler$1;

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler$1$2;->this$1:Litectokyo/wiflus/SsbEnabler$1;

    #getter for: Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;
    invoke-static {v0}, Litectokyo/wiflus/SsbEnabler$1;->access$0(Litectokyo/wiflus/SsbEnabler$1;)Litectokyo/wiflus/SsbEnabler;

    move-result-object v0

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 152
    return-void
.end method
