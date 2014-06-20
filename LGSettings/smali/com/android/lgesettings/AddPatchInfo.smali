.class public Lcom/android/lgesettings/AddPatchInfo;
.super Ljava/lang/Object;
.source "AddPatchInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/AddPatchInfo$Acccessibility;,
        Lcom/android/lgesettings/AddPatchInfo$ShortCut;,
        Lcom/android/lgesettings/AddPatchInfo$QuickButton;,
        Lcom/android/lgesettings/AddPatchInfo$Sound;,
        Lcom/android/lgesettings/AddPatchInfo$Addinfo;
    }
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/AddPatchInfo$Addinfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/AddPatchInfo;->mList:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/AddPatchInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/android/lgesettings/AddPatchInfo;->mList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getPatchInfo()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 14
    iget-object v3, p0, Lcom/android/lgesettings/AddPatchInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 15
    .local v1, length:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 17
    iget-object v3, p0, Lcom/android/lgesettings/AddPatchInfo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/AddPatchInfo$Addinfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/AddPatchInfo$Addinfo;->getAllinfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-object v2
.end method
