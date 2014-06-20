.class Landroid/webkit/HTML5VideoViewProxy$1;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V
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
    .line 1119
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1122
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1171
    :goto_0
    return-void

    .line 1124
    :sswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    .line 1125
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "dur"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1126
    .local v8, duration:Ljava/lang/Integer;
    const-string/jumbo v0, "width"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1127
    .local v13, width:Ljava/lang/Integer;
    const-string v0, "height"

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1128
    .local v9, height:Ljava/lang/Integer;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v4, v4, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/HTML5VideoViewProxy;->access$1600(Landroid/webkit/HTML5VideoViewProxy;IIII)V

    goto :goto_0

    .line 1133
    .end local v8           #duration:Ljava/lang/Integer;
    .end local v9           #height:Ljava/lang/Integer;
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13           #width:Ljava/lang/Integer;
    :sswitch_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$1702(Landroid/webkit/HTML5VideoViewProxy;I)I

    .line 1134
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$1800(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 1137
    :sswitch_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$1900(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 1140
    :sswitch_3
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Bitmap;

    .line 1141
    .local v11, poster:Landroid/graphics/Bitmap;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
    invoke-static {v0, v11, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$2000(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 1144
    .end local v11           #poster:Landroid/graphics/Bitmap;
    :sswitch_4
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v2, v2, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$2100(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto :goto_0

    .line 1147
    :sswitch_5
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v2, v2, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$2200(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto :goto_0

    .line 1150
    :sswitch_6
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnRestoreState(I)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$2300(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto :goto_0

    .line 1154
    :sswitch_7
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnterFromLGBrowser(I)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$2400(Landroid/webkit/HTML5VideoViewProxy;I)V

    goto/16 :goto_0

    .line 1158
    :sswitch_8
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v2, v2, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSetDuration(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$2500(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto/16 :goto_0

    .line 1162
    :sswitch_9
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v2, v2, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnChangeTrackPlayed(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$2600(Landroid/webkit/HTML5VideoViewProxy;II)V

    goto/16 :goto_0

    .line 1165
    :sswitch_a
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;

    .line 1166
    .local v12, settings:Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v1, v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->characterColor:I

    iget v2, v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->backgroundColor:I

    iget v3, v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->windowColor:I

    iget-object v4, v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->font:Ljava/lang/String;

    iget-object v5, v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->characterSize:Ljava/lang/String;

    iget-object v6, v12, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->characterEdge:Ljava/lang/String;

    iget-object v7, p0, Landroid/webkit/HTML5VideoViewProxy$1;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v7, v7, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeOnChangeSubtitleSettings(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v7}, Landroid/webkit/HTML5VideoViewProxy;->access$2700(Landroid/webkit/HTML5VideoViewProxy;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1122
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_3
        0xcb -> :sswitch_2
        0xcc -> :sswitch_5
        0xcd -> :sswitch_6
        0xce -> :sswitch_7
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_9
        0xd1 -> :sswitch_a
        0x12c -> :sswitch_4
    .end sparse-switch
.end method
