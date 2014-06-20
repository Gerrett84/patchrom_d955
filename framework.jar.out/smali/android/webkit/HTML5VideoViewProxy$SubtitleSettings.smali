.class final Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtitleSettings"
.end annotation


# instance fields
.field backgroundColor:I

.field characterColor:I

.field characterEdge:Ljava/lang/String;

.field characterSize:Ljava/lang/String;

.field font:Ljava/lang/String;

.field windowColor:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "characterColor"
    .parameter "backgroundColor"
    .parameter "windowColor"
    .parameter "font"
    .parameter "characterSize"
    .parameter "characterEdge"

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->characterColor:I

    .line 243
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->backgroundColor:I

    .line 244
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->windowColor:I

    .line 245
    iput-object p4, p0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->font:Ljava/lang/String;

    .line 246
    iput-object p5, p0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->characterSize:Ljava/lang/String;

    .line 247
    iput-object p6, p0, Landroid/webkit/HTML5VideoViewProxy$SubtitleSettings;->characterEdge:Ljava/lang/String;

    .line 248
    return-void
.end method
