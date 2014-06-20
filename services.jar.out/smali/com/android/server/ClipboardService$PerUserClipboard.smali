.class Lcom/android/server/ClipboardService$PerUserClipboard;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerUserClipboard"
.end annotation


# instance fields
.field final activePermissionOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hasNoValidCliptrayClip:Z

.field mdmClip:Landroid/content/ClipData;

.field primaryClip:Landroid/content/ClipData;

.field primaryClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field final primaryClipListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/IOnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ClipboardService;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/ClipboardService;I)V
    .locals 1
    .parameter
    .parameter "userId"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->this$0:Lcom/android/server/ClipboardService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipList:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->hasNoValidCliptrayClip:Z

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 113
    iput p2, p0, Lcom/android/server/ClipboardService$PerUserClipboard;->userId:I

    .line 114
    return-void
.end method
