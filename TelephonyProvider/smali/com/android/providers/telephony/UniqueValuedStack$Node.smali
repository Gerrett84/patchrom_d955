.class Lcom/android/providers/telephony/UniqueValuedStack$Node;
.super Ljava/lang/Object;
.source "UniqueValuedStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/UniqueValuedStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field public next:Lcom/android/providers/telephony/UniqueValuedStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/providers/telephony/UniqueValuedStack",
            "<TV;>.Node;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/telephony/UniqueValuedStack;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/providers/telephony/UniqueValuedStack;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    .local p0, this:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    iput-object p1, p0, Lcom/android/providers/telephony/UniqueValuedStack$Node;->this$0:Lcom/android/providers/telephony/UniqueValuedStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/UniqueValuedStack;Lcom/android/providers/telephony/UniqueValuedStack$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    .local p0, this:Lcom/android/providers/telephony/UniqueValuedStack$Node;,"Lcom/android/providers/telephony/UniqueValuedStack<TV;>.Node;"
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/UniqueValuedStack$Node;-><init>(Lcom/android/providers/telephony/UniqueValuedStack;)V

    return-void
.end method
