.class Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;
.super Ljava/lang/Object;
.source "SoftReferenceCacheMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHolder"
.end annotation


# instance fields
.field dataRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TD;>;"
        }
    .end annotation
.end field

.field state:I

.field final synthetic this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    invoke-direct {p0, p1}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;-><init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)V

    return-void
.end method
