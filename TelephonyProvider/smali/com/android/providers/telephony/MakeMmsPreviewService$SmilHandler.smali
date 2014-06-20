.class Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MakeMmsPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MakeMmsPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilHandler"
.end annotation


# instance fields
.field mPartId:I

.field mPreviewSrc:Ljava/lang/String;

.field mPreviewType:I

.field mSnippetSrc:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;


# direct methods
.method private constructor <init>(Lcom/android/providers/telephony/MakeMmsPreviewService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 192
    iput-object p1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPartId:I

    .line 194
    iput-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mSnippetSrc:Ljava/lang/String;

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewType:I

    .line 196
    iput-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewSrc:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/MakeMmsPreviewService;Lcom/android/providers/telephony/MakeMmsPreviewService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;-><init>(Lcom/android/providers/telephony/MakeMmsPreviewService;)V

    return-void
.end method


# virtual methods
.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 201
    const-string v0, "par"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPartId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPartId:I

    .line 203
    iget v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPartId:I

    if-ne v0, v2, :cond_0

    .line 204
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewType:I

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPartId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    const-string v0, "text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "src"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mSnippetSrc:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "img"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iput v2, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewType:I

    .line 211
    const-string v0, "src"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewSrc:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_3
    const-string v0, "video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewType:I

    goto :goto_0

    .line 214
    :cond_4
    const-string v0, "audio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewType:I

    goto :goto_0
.end method
