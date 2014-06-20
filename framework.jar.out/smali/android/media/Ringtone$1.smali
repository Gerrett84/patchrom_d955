.class Landroid/media/Ringtone$1;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Ringtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 773
    packed-switch p2, :pswitch_data_0

    .line 781
    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 782
    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mErrorCheck:I
    invoke-static {v4}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)I

    move-result v4

    if-nez v4, :cond_0

    .line 783
    const-string v4, "Ringtone"

    const-string v5, "LocalPlayer play default ringtone."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #setter for: Landroid/media/Ringtone;->mErrorCheck:I
    invoke-static {v4, v3}, Landroid/media/Ringtone;->access$002(Landroid/media/Ringtone;I)I

    .line 785
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 786
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    const/4 v4, 0x0

    #setter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Landroid/media/Ringtone;->access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 788
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #calls: Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;
    invoke-static {v3}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, defaultPath:Ljava/lang/String;
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE] OnErrorListener... set Default Ring... = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    if-eqz v0, :cond_0

    .line 791
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Landroid/media/Ringtone;->access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 793
    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 794
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mStreamType:I
    invoke-static {v4}, Landroid/media/Ringtone;->access$300(Landroid/media/Ringtone;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 795
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 800
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    const/4 v4, 0x2

    #setter for: Landroid/media/Ringtone;->mErrorCheck:I
    invoke-static {v3, v4}, Landroid/media/Ringtone;->access$002(Landroid/media/Ringtone;I)I

    .line 813
    .end local v0           #defaultPath:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    return v3

    .line 775
    :pswitch_0
    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mErrorCheck:I
    invoke-static {v4}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)I

    move-result v4

    if-nez v4, :cond_1

    .line 776
    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #setter for: Landroid/media/Ringtone;->mErrorCheck:I
    invoke-static {v4, v3}, Landroid/media/Ringtone;->access$002(Landroid/media/Ringtone;I)I

    .line 777
    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    goto :goto_2

    .line 796
    .restart local v0       #defaultPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 797
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "Ringtone"

    const-string v4, "[LGE] default filepath is not set"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 803
    .end local v0           #defaultPath:Ljava/lang/String;
    .end local v2           #ex:Ljava/io/IOException;
    :cond_2
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAllowRemote:Z
    invoke-static {v3}, Landroid/media/Ringtone;->access$400(Landroid/media/Ringtone;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 805
    :try_start_1
    const-string v3, "Ringtone"

    const-string v4, "RemotePlayer play default ringtone."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v3, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;
    invoke-static {v3}, Landroid/media/Ringtone;->access$600(Landroid/media/Ringtone;)Landroid/media/IRingtonePlayer;

    move-result-object v3

    iget-object v4, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;
    invoke-static {v4}, Landroid/media/Ringtone;->access$500(Landroid/media/Ringtone;)Landroid/os/Binder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #calls: Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;
    invoke-static {v5}, Landroid/media/Ringtone;->access$200(Landroid/media/Ringtone;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mStreamType:I
    invoke-static {v6}, Landroid/media/Ringtone;->access$300(Landroid/media/Ringtone;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 807
    :catch_1
    move-exception v1

    .line 808
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem playing default ringtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 773
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
