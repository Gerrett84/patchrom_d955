.class public Lcom/android/lgesettings/AddPatchInfo$ShortCut;
.super Ljava/lang/Object;
.source "AddPatchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AddPatchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortCut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AddPatchInfo;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/AddPatchInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/lgesettings/AddPatchInfo$ShortCut;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    #getter for: Lcom/android/lgesettings/AddPatchInfo;->mList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/lgesettings/AddPatchInfo;->access$000(Lcom/android/lgesettings/AddPatchInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/AddPatchInfo$ShortCut;->addInfo(Ljava/util/ArrayList;)V

    .line 85
    return-void
.end method

.method private addInfo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/AddPatchInfo$Addinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, mShortCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/AddPatchInfo$Addinfo;>;"
    return-void
.end method
