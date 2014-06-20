.class Landroid/webkit/HTML5VideoViewProxy$2;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy;->selectTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 1462
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$2;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 2
    .parameter "newSelection"

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$2;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    add-int/lit8 v1, p1, -0x1

    #calls: Landroid/webkit/HTML5VideoViewProxy;->onTrackPlayedUpdate(I)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$700(Landroid/webkit/HTML5VideoViewProxy;I)V

    .line 1466
    return-void
.end method
