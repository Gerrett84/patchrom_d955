.class public Lcom/android/providers/telephony/UniqueValuedStack;
.super Ljava/lang/Object;
.source "UniqueValuedStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/UniqueValuedStack$1;,
        Lcom/android/providers/telephony/UniqueValuedStack$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/providers/telephony/UniqueValuedStack",
            "<TV;>.Node;"
        }
    .end annotation
.end field

.field private mValueToPrevNode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TV;",
            "Lcom/android/providers/telephony/UniqueValuedStack",
            "<TV;>.Node;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    .local p0, this:Lcom/android/providers/telephony/UniqueValuedStack;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/android/providers/telephony/UniqueValuedStack$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/telephony/UniqueValuedStack$Node;-><init>(Lcom/android/providers/telephony/UniqueValuedStack;Lcom/android/providers/telephony/UniqueValuedStack$1;)V

    iput-object v0, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 20
    return-void
.end method


# virtual methods
.method public pop()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/android/providers/telephony/UniqueValuedStack;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>;"
    iget-object v2, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    iget-object v1, v2, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 51
    .local v1, node:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    if-nez v1, :cond_0

    .line 52
    const/4 v2, 0x0

    .line 62
    :goto_0
    return-object v2

    .line 56
    :cond_0
    iget-object v0, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 57
    .local v0, nextNode:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    iget-object v2, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    iput-object v0, v2, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 58
    iget-object v2, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    if-eqz v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/providers/telephony/UniqueValuedStack$Node;->value:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_1
    iget-object v2, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/android/providers/telephony/UniqueValuedStack;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v3, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 24
    .local v2, prevNode:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    const/4 v1, 0x0

    .line 25
    .local v1, node:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    const/4 v0, 0x0

    .line 26
    .local v0, nextNode:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    if-eqz v2, :cond_2

    .line 28
    iget-object v1, v2, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 29
    iget-object v0, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 30
    iput-object v0, v2, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget-object v3, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/providers/telephony/UniqueValuedStack$Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    iget-object v3, v3, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    iput-object v3, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 41
    iget-object v0, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 42
    iget-object v3, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    iput-object v1, v3, Lcom/android/providers/telephony/UniqueValuedStack$Node;->next:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .line 43
    iget-object v3, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mHead:Lcom/android/providers/telephony/UniqueValuedStack$Node;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    if-eqz v0, :cond_1

    .line 45
    iget-object v3, p0, Lcom/android/providers/telephony/UniqueValuedStack;->mValueToPrevNode:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/providers/telephony/UniqueValuedStack$Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    return-void

    .line 35
    :cond_2
    new-instance v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;

    .end local v1           #node:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/providers/telephony/UniqueValuedStack$Node;-><init>(Lcom/android/providers/telephony/UniqueValuedStack;Lcom/android/providers/telephony/UniqueValuedStack$1;)V

    .line 36
    .restart local v1       #node:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    iput-object p1, v1, Lcom/android/providers/telephony/UniqueValuedStack$Node;->value:Ljava/lang/Object;

    goto :goto_0
.end method
