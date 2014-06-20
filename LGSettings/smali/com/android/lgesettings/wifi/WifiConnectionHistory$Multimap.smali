.class Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;
.super Ljava/lang/Object;
.source "WifiConnectionHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiConnectionHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private store:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)V
    .locals 1
    .parameter

    .prologue
    .line 569
    .local p0, this:Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;,"Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap<TK;TV;>;"
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;->this$0:Lcom/android/lgesettings/wifi/WifiConnectionHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;->store:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 569
    .local p0, this:Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;,"Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;-><init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)V

    return-void
.end method


# virtual methods
.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, this:Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;,"Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, val:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 579
    .local v0, curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .restart local v0       #curVals:Ljava/util/List;,"Ljava/util/List<TV;>;"
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method
