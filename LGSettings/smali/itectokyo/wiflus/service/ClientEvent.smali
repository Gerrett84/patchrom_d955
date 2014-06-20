.class public Litectokyo/wiflus/service/ClientEvent;
.super Ljava/lang/Object;
.source "ClientEvent.java"


# instance fields
.field private args:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private eventId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "evnetId"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Litectokyo/wiflus/service/ClientEvent;->args:Ljava/util/HashMap;

    .line 14
    iput p1, p0, Litectokyo/wiflus/service/ClientEvent;->eventId:I

    .line 15
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 39
    iget-object v1, p0, Litectokyo/wiflus/service/ClientEvent;->args:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, oRet:Ljava/lang/Object;
    return-object v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Litectokyo/wiflus/service/ClientEvent;->eventId:I

    return v0
.end method

.method public put(II)Z
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    const/4 v0, 0x1

    .line 80
    .local v0, bRet:Z
    iget-object v2, p0, Litectokyo/wiflus/service/ClientEvent;->args:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)Z
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 114
    const/4 v0, 0x1

    .line 116
    .local v0, bRet:Z
    iget-object v2, p0, Litectokyo/wiflus/service/ClientEvent;->args:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
