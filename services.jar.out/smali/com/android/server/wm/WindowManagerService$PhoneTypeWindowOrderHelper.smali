.class Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneTypeWindowOrderHelper"
.end annotation


# instance fields
.field private lgWindowList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLayer_diff:I

.field mTotal_Layer:I

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field private titleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter

    .prologue
    .line 4888
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4844
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->mTotal_Layer:I

    .line 4845
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->titleList:Ljava/util/ArrayList;

    .line 4846
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->lgWindowList:Ljava/util/HashMap;

    .line 4890
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->windOrderXMLparser()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->mTotal_Layer:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4897
    :goto_0
    const/16 v1, 0x2710

    iget v2, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->mTotal_Layer:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->mLayer_diff:I

    .line 4898
    return-void

    .line 4891
    :catch_0
    move-exception v0

    .line 4892
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "WindowManager"

    const-string v2, "Exception error!!! XML pull parser is not available.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4893
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 4894
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v2, "Exception error!!! XML file io error.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private windOrderXMLparser()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 4850
    const/4 v3, 0x0

    .line 4851
    .local v3, windowNum:I
    const/4 v1, 0x0

    .line 4852
    .local v1, total:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10f0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 4853
    .local v4, xrp:Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_0

    .line 4854
    const-string v5, "lgwinorder"

    const-string v6, "xml file may be invalid.. check xml.. id = com.android.internal.R.xml.lgwinorder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    const/4 v5, 0x0

    .line 4885
    :goto_0
    return v5

    .line 4858
    :cond_0
    const-string v2, ""

    .line 4859
    .local v2, windowName:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 4860
    .local v0, eventType:I
    :goto_1
    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    .line 4861
    if-nez v0, :cond_2

    .line 4862
    const-string v5, "lgwinorder"

    const-string v6, "lgwinorder Start of lgwinorder xml document"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    :cond_1
    :goto_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_1

    .line 4863
    :cond_2
    if-ne v0, v9, :cond_5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4864
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 4865
    if-ne v0, v10, :cond_3

    .line 4866
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4871
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4868
    :cond_3
    const-string v5, "lgwinorder"

    const-string v6, "error!!! lgwinorder.xml file must be wrongly written.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    move v5, v3

    .line 4885
    goto :goto_0

    .line 4872
    :cond_5
    if-ne v0, v9, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4873
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 4874
    if-ne v0, v10, :cond_6

    .line 4875
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->titleList:Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4876
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->lgWindowList:Ljava/util/HashMap;

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4878
    :cond_6
    const-string v5, "lgwinorder"

    const-string v6, "error!!! lgwinorder.xml file must be wrongly written.."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    const/4 v3, 0x0

    .line 4880
    goto :goto_3
.end method


# virtual methods
.method public getSecondaryOffset(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .parameter "lp"

    .prologue
    .line 4901
    const/4 v1, 0x0

    .line 4903
    .local v1, numLayer:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4904
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->titleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4905
    move v1, v0

    .line 4910
    :cond_0
    iget v2, p0, Lcom/android/server/wm/WindowManagerService$PhoneTypeWindowOrderHelper;->mLayer_diff:I

    mul-int/2addr v2, v1

    return v2

    .line 4903
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
