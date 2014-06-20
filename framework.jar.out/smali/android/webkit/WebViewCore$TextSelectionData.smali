.class Landroid/webkit/WebViewCore$TextSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectionData"
.end annotation


# static fields
.field static final REASON_ACCESSIBILITY_INJECTOR:I = 0x1

.field static final REASON_SELECT_WORD:I = 0x2

.field static final REASON_UNKNOWN:I


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mSelectionReason:I

.field mStart:I

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "selectTextPtr"

    .prologue
    .line 909
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 910
    iput p1, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 911
    iput p2, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 912
    iput p3, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mText:Ljava/lang/String;

    .line 914
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "selectTextPtr"
    .parameter "text"

    .prologue
    .line 920
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 921
    iput p1, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 922
    iput p2, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 923
    iput p3, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    .line 924
    iput-object p4, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mText:Ljava/lang/String;

    .line 925
    return-void
.end method
