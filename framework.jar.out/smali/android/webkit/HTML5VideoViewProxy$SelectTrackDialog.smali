.class Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
.super Landroid/app/AlertDialog;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectTrackDialog"
.end annotation


# instance fields
.field private final mCallBack:Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;

.field private mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

.field private mItems:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/content/Context;ILandroid/webkit/HTML5VideoViewProxy$OnSelectListener;[Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "items"
    .parameter "selection"

    .prologue
    const/4 v5, 0x1

    .line 1494
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    .line 1495
    invoke-direct {p0, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1497
    iput-object p0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    .line 1498
    iput-object p4, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mCallBack:Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;

    .line 1499
    iput-object p5, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mItems:[Ljava/lang/String;

    .line 1500
    iput p6, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mSelection:I

    .line 1502
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1503
    .local v2, themeContext:Landroid/content/Context;
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1504
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->setIcon(I)V

    .line 1505
    const v3, 0x20b03ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1507
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1508
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900c7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mListView:Landroid/widget/ListView;

    .line 1509
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090012

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mItems:[Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1512
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1513
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1514
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mListView:Landroid/widget/ListView;

    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mSelection:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1515
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;

    invoke-direct {v4, p0, p1}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;-><init>(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;Landroid/webkit/HTML5VideoViewProxy;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1527
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->setView(Landroid/view/View;)V

    .line 1528
    return-void
.end method

.method public constructor <init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/content/Context;Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;[Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "callBack"
    .parameter "items"
    .parameter "selection"

    .prologue
    .line 1488
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;-><init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/content/Context;ILandroid/webkit/HTML5VideoViewProxy$OnSelectListener;[Ljava/lang/String;I)V

    .line 1489
    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1476
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mCallBack:Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1476
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1476
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1532
    packed-switch p2, :pswitch_data_0

    .line 1540
    :pswitch_0
    return-void

    .line 1532
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method
