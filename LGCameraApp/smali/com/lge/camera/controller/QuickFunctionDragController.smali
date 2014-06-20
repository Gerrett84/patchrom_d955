.class public Lcom/lge/camera/controller/QuickFunctionDragController;
.super Lcom/lge/camera/controller/Controller;
.source "QuickFunctionDragController.java"


# static fields
.field private static final CLEAR_X:I = -0xc8

.field private static final CLEAR_Y:I = -0xc8

.field public static final COL_MIN_NUM_LANDSCAPE:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final COL_MIN_NUM_PORTRAIT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ROW_NUM_LANDSCAPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ROW_NUM_PORTRAIT:I = 0x0

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private QUICKFUNCTION_WIDTH:I

.field private SELECT_MENU_ITEM_HEIGHT:I

.field private SELECT_MENU_VIEW_HEIGHT:I

.field private SELECT_MENU_VIEW_WIDTH:I

.field private final mCoordinatesTemp:[I

.field private mDegree:I

.field private mDragLayout:Lcom/lge/camera/components/DragLayout;

.field private mDragView:Lcom/lge/camera/components/RotateDragView;

.field private mDragViewGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/RotateImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGridViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnMenuClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mOnTouchDragListener:Landroid/view/View$OnTouchListener;

.field private mOriginator:Landroid/view/View;

.field private mSelectIndex:I

.field private mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

.field private mSelectMenuGridView:Landroid/widget/GridView;

.field mSelectMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/setting/SettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectMenuListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectMenuView:Landroid/view/View;

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/lge/camera/controller/QuickFunctionDragController;->getRowNumLandscape()I

    move-result v0

    sput v0, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    .line 53
    invoke-static {}, Lcom/lge/camera/controller/QuickFunctionDragController;->getRowNumPortrait()I

    move-result v0

    sput v0, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    .line 55
    invoke-static {}, Lcom/lge/camera/controller/QuickFunctionDragController;->getColMinNumPortrait()I

    move-result v0

    sput v0, Lcom/lge/camera/controller/QuickFunctionDragController;->COL_MIN_NUM_PORTRAIT:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mCoordinatesTemp:[I

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$2;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 512
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$3;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    .line 524
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$4;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 542
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$5;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnGridViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 744
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController$6;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnTouchDragListener:Landroid/view/View$OnTouchListener;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->removeSelectMenuView()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/QuickFunctionDragController;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->checkMenuDuplicated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/QuickFunctionDragController;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->isOverlapTrashIcon(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/QuickFunctionDragController;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->drop(FF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/setting/SelectMenuGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/QuickFunctionDragController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/QuickFunctionDragController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/QuickFunctionDragController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/QuickFunctionDragController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->clearSelectedDragViewGroup()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/QuickFunctionDragController;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->getDragViewGroupIndex(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/DragLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/QuickFunctionDragController;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/QuickFunctionDragController;)Lcom/lge/camera/components/RotateDragView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    return-object v0
.end method

.method private checkMenuDuplicated(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 283
    :goto_0
    return v2

    .line 276
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    .line 279
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    const/4 v2, 0x1

    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 283
    goto :goto_0
.end method

.method private clearSelectedDragViewGroup()V
    .locals 3

    .prologue
    .line 492
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 498
    :cond_0
    return-void

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 496
    .local v1, ib:Lcom/lge/camera/components/RotateImageButton;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    goto :goto_0
.end method

.method private displaySelectMenuView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 222
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->makeSelectMenuList()V

    .line 226
    new-instance v1, Lcom/lge/camera/setting/SelectMenuGridAdapter;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lge/camera/setting/SelectMenuGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    .line 227
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    sget v2, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->setRowNumLandscape(I)V

    .line 228
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f030036

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 231
    .local v0, vg:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 233
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09018a

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    .line 235
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 236
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setSelected(Z)V

    .line 238
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.Rotate"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->qflDragAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private drop(FF)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x7f090171

    .line 688
    iget-boolean v6, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v6, :cond_0

    .line 728
    :goto_0
    return-void

    .line 691
    :cond_0
    float-to-int v6, p1

    float-to-int v7, p2

    invoke-direct {p0, v6, v7}, Lcom/lge/camera/controller/QuickFunctionDragController;->findDropTarget(II)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v3

    .line 692
    .local v3, dropTraget:Landroid/view/View;
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    if-nez v6, :cond_1

    .line 693
    const-string v6, "CameraApp"

    const-string v7, "drop-mOriginator is null."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/ListPreference;

    .line 698
    .local v4, srcPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_5

    .line 699
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 700
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setPressed(Z)V

    .line 701
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 702
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    .line 703
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    if-eqz v6, :cond_2

    .line 704
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v6}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->notifyDataSetChanged()V

    .line 726
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    .line 727
    .local v5, trashCanView:Lcom/lge/camera/components/RotateImageButton;
    const v6, 0x7f0202b8

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto :goto_0

    .line 708
    .end local v5           #trashCanView:Lcom/lge/camera/components/RotateImageButton;
    :cond_3
    invoke-virtual {v3}, Lcom/lge/camera/components/RotateImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/ListPreference;

    .line 710
    .local v2, destPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_4

    move-object v6, v3

    .line 711
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 712
    .local v0, destBd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 713
    .local v1, destBitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-direct {p0, v6, v2, v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 717
    .end local v0           #destBd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #destBitmap:Landroid/graphics/Bitmap;
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v4, v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 718
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->getDragViewGroupIndex(Landroid/view/View;)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    .line 719
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget v7, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v9}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    goto :goto_1

    .line 715
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 722
    .end local v2           #destPref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setPressed(Z)V

    .line 723
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    iget-object v7, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v4, v7}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 724
    iget-object v6, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method private endDrag()V
    .locals 2

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v0}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/DragLayout;->setDrag(Z)V

    .line 737
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateDragView;->remove()V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    goto :goto_0
.end method

.method private findDropTarget(II)Lcom/lge/camera/components/RotateImageButton;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v4, :cond_0

    move-object v2, v3

    .line 670
    :goto_0
    return-object v2

    .line 658
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 659
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 660
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 661
    iget-object v4, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 662
    .restart local v2       #view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 663
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 664
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    goto :goto_0

    .line 660
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 670
    goto :goto_0
.end method

.method private static getColMinNumPortrait()I
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 92
    const/4 v0, 0x4

    return v0
.end method

.method private getDragViewGroupIndex(Landroid/view/View;)I
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, -0x1

    .line 501
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    move v0, v2

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v1

    if-eq v3, v1, :cond_0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 509
    goto :goto_0
.end method

.method private static getRowNumLandscape()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 76
    const/4 v0, 0x4

    return v0
.end method

.method private static getRowNumPortrait()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 83
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method private initDragDropViews()V
    .locals 4

    .prologue
    .line 446
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 464
    :cond_0
    return-void

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 453
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    .line 454
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09016d

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09016e

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09016f

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090170

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090171

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnMenuLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isOverlapTrashIcon(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v1

    .line 677
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->findDropTarget(II)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 679
    .local v0, overlabView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v2

    const v3, 0x7f090171

    if-ne v2, v3, :cond_0

    .line 681
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeSelectMenuList()V
    .locals 3

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 174
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->initSettingMenu()V

    .line 170
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSettingMenuCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeSelectMenuView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    .line 254
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 256
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 262
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 264
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 267
    :cond_3
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    .line 269
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_4
    iput-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    goto :goto_0
.end method

.method private rotateSelectMenu(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const v6, 0x7f0a01f3

    const v5, 0x7f090189

    .line 366
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 371
    .local v0, cl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 373
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->updateSelectMenuGridLayout()V

    .line 375
    const/4 v2, 0x0

    .line 376
    .local v2, marginTop:I
    const/4 v1, 0x0

    .line 377
    .local v1, marginLeft:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    :goto_1
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 379
    .local v3, params:Landroid/view/ViewGroup$MarginLayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 393
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 395
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 400
    :goto_3
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 377
    .end local v3           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    goto :goto_1

    .line 382
    .restart local v3       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :sswitch_0
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    .line 383
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->QUICKFUNCTION_WIDTH:I

    .line 384
    goto :goto_2

    .line 387
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    .line 388
    iget v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->QUICKFUNCTION_WIDTH:I

    .line 389
    goto :goto_2

    .line 397
    :cond_3
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 398
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;I)V
    .locals 3
    .parameter "v"
    .parameter "pref"
    .parameter "resId"

    .prologue
    .line 633
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 648
    .end local p1
    :goto_0
    return-void

    .line 636
    .restart local p1
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 637
    if-eqz p2, :cond_1

    .line 638
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 639
    .local v0, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v0, :cond_1

    .line 640
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 641
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 647
    .end local v0           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :cond_1
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .restart local v0       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    .restart local p1
    :cond_2
    move-object v1, p1

    .line 643
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "v"
    .parameter "pref"
    .parameter "bitmap"

    .prologue
    .line 614
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 630
    .end local p1
    :goto_0
    return-void

    .line 617
    .restart local p1
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 618
    if-eqz p2, :cond_1

    .line 619
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 620
    .local v0, menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    if-eqz v0, :cond_1

    .line 621
    iget-boolean v1, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 622
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_1
    move-object v1, p1

    .line 626
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getMenuIconStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 629
    .end local v0           #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    :cond_1
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .restart local v0       #menuItem:Lcom/lge/camera/setting/SettingMenuItem;
    .restart local p1
    :cond_2
    move-object v1, p1

    .line 624
    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getDimColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method private setEmptyIcon(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 611
    .end local p1
    :goto_0
    return-void

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 607
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    move-object v0, p1

    .line 608
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0b0311

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSelectMenuGridLayout()V
    .locals 5

    .prologue
    .line 404
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 410
    .local v0, col:I
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    const/16 v4, 0xb4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    :cond_1
    const v2, 0x7f0a01fa

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    .line 413
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->setRowNum(I)V

    .line 414
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 415
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->getCount()I

    move-result v2

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_LANDSCAPE:I

    div-int v0, v2, v3

    .line 416
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 417
    const v2, 0x7f0a01f5

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    .line 421
    :goto_1
    const v2, 0x7f0a01f4

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    .line 423
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 438
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 419
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    goto :goto_1

    .line 425
    :cond_3
    const v2, 0x7f0a01fc

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    .line 426
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->setRowNum(I)V

    .line 427
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 428
    iget-object v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuAdapter:Lcom/lge/camera/setting/SelectMenuGridAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SelectMenuGridAdapter;->getCount()I

    move-result v2

    sget v3, Lcom/lge/camera/controller/QuickFunctionDragController;->ROW_NUM_PORTRAIT:I

    div-int v0, v2, v3

    .line 429
    sget v2, Lcom/lge/camera/controller/QuickFunctionDragController;->COL_MIN_NUM_PORTRAIT:I

    if-le v0, v2, :cond_4

    .line 430
    const v2, 0x7f0a01f7

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    .line 434
    :goto_3
    const v2, 0x7f0a01f6

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    .line 435
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    iget v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_2

    .line 432
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_HEIGHT:I

    goto :goto_3
.end method


# virtual methods
.method public cancelDrag()V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V

    .line 652
    return-void
.end method

.method public getDragView(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->hide(Z)V

    .line 145
    return-void
.end method

.method public hide(Z)V
    .locals 3
    .parameter "showAnimation"

    .prologue
    const/high16 v2, -0x3cb8

    .line 126
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v1}, Lcom/lge/camera/components/DragLayout;->getDrag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    invoke-direct {p0, v2, v2}, Lcom/lge/camera/controller/QuickFunctionDragController;->drop(FF)V

    .line 131
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->endDrag()V

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09016b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, qflDragView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/QuickFunctionDragController;->qflDragAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0900dc

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 107
    const v0, 0x7f0a01f4

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_VIEW_WIDTH:I

    .line 108
    const v0, 0x7f0a01fa

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->SELECT_MENU_ITEM_HEIGHT:I

    .line 111
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->QUICKFUNCTION_WIDTH:I

    .line 113
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 116
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->initDragDropViews()V

    .line 117
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->initDragDropMenus()V

    .line 119
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09016c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/DragLayout;

    iput-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 120
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOnTouchDragListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/DragLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09016b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initDragDropMenus()V
    .locals 5

    .prologue
    .line 467
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 489
    :cond_0
    return-void

    .line 470
    :cond_1
    const/4 v2, 0x0

    .line 471
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    .line 472
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 473
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateImageButton;->setTag(Ljava/lang/Object;)V

    .line 474
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->getQuickFunctionControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_0

    .line 478
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 479
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->getQuickFunctionControllerMenuView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 480
    .restart local v0       #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_2

    .line 481
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v3, v2, v4}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;Landroid/graphics/Bitmap;)V

    .line 472
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/QuickFunctionDragController;->setEmptyIcon(Landroid/view/View;)V

    goto :goto_1

    .line 486
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0202b8

    invoke-direct {p0, v3, v2, v4}, Lcom/lge/camera/controller/QuickFunctionDragController;->setDragDropIcon(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;I)V

    goto :goto_1
.end method

.method public isNullSelectMenuView()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuGridView:Landroid/widget/GridView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09016b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 340
    :cond_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 800
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/DragLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 802
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    .line 804
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    .line 805
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mVibrator:Landroid/os/Vibrator;

    .line 806
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectMenuView:Landroid/view/View;

    .line 807
    iget-object v0, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 808
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 810
    :cond_1
    iput-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    .line 811
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 812
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 795
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public qflDragAnimation(Landroid/view/View;Z)V
    .locals 8
    .parameter "aniView"
    .parameter "show"

    .prologue
    .line 177
    const-string v6, "CameraApp"

    const-string v7, "qflSettingAnimation-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-boolean v6, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v6, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-eqz p1, :cond_0

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 184
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    const v5, 0x7f04000f

    .line 187
    .local v5, showResId:I
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    const v3, 0x7f04000d

    .line 188
    .local v3, hideResId:I
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 189
    .local v4, showAni:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 191
    .local v2, hideAni:Landroid/view/animation/Animation;
    if-eqz p2, :cond_4

    move-object v0, v4

    .line 192
    .local v0, animation:Landroid/view/animation/Animation;
    :goto_3
    new-instance v6, Lcom/lge/camera/controller/QuickFunctionDragController$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController$1;-><init>(Lcom/lge/camera/controller/QuickFunctionDragController;Landroid/view/View;Z)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v2           #hideAni:Landroid/view/animation/Animation;
    .end local v3           #hideResId:I
    .end local v4           #showAni:Landroid/view/animation/Animation;
    .end local v5           #showResId:I
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException : "

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_2
    const v5, 0x7f040010

    goto :goto_1

    .line 187
    .restart local v5       #showResId:I
    :cond_3
    const v3, 0x7f04000e

    goto :goto_2

    .restart local v2       #hideAni:Landroid/view/animation/Animation;
    .restart local v3       #hideResId:I
    .restart local v4       #showAni:Landroid/view/animation/Animation;
    :cond_4
    move-object v0, v2

    .line 191
    goto :goto_3
.end method

.method public setSelectIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 442
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    .line 443
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 148
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->clearSelectedDragViewGroup()V

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSelectIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setSelected(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->initDragDropMenus()V

    .line 156
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09016b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, qflDragView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-direct {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->displaySelectMenuView()V

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lge/camera/setting/ListPreference;

    .line 562
    .local v14, pref:Lcom/lge/camera/setting/ListPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    if-eqz v2, :cond_0

    if-eqz v14, :cond_0

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mVibrator:Landroid/os/Vibrator;

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x23

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 567
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/controller/QuickFunctionDragController;->mOriginator:Landroid/view/View;

    move-object/from16 v2, p1

    .line 568
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 569
    .local v11, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v11, :cond_0

    .line 572
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mCoordinatesTemp:[I

    .line 578
    .local v13, loc:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 579
    const/4 v2, 0x0

    aget v15, v13, v2

    .line 580
    .local v15, screenX:I
    const/4 v2, 0x1

    aget v16, v13, v2

    .line 582
    .local v16, screenY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v2}, Lcom/lge/camera/components/DragLayout;->getMotionDownX()F

    move-result v2

    float-to-int v2, v2

    sub-int v5, v2, v15

    .line 583
    .local v5, regX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v2}, Lcom/lge/camera/components/DragLayout;->getMotionDownY()F

    move-result v2

    float-to-int v2, v2

    sub-int v6, v2, v16

    .line 585
    .local v6, regY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/DragLayout;->setDrag(Z)V

    .line 586
    new-instance v2, Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/lge/camera/components/RotateDragView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateDragView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0202ba

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 590
    .local v12, dragBackGround:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_2

    .line 591
    const/16 v2, 0xb2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    invoke-virtual {v2, v12}, Lcom/lge/camera/components/RotateDragView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 594
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/components/RotateDragView;->setDegree(IZ)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v3}, Lcom/lge/camera/components/DragLayout;->getMotionDownX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragLayout:Lcom/lge/camera/components/DragLayout;

    invoke-virtual {v4}, Lcom/lge/camera/components/DragLayout;->getMotionDownY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/components/RotateDragView;->show(II)V

    .line 597
    invoke-direct/range {p0 .. p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->setEmptyIcon(Landroid/view/View;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090171

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lge/camera/components/RotateImageButton;

    .line 600
    .local v17, trashCanView:Lcom/lge/camera/components/RotateImageButton;
    const v2, 0x7f02028d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public startRotation(IZ)V
    .locals 3
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 349
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDegree:I

    .line 353
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 354
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragViewGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v1

    invoke-interface {v2, v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/QuickFunctionDragController;->isNullSelectMenuView()Z

    move-result v1

    if-nez v1, :cond_3

    .line 357
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->rotateSelectMenu(I)V

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/lge/camera/controller/QuickFunctionDragController;->mDragView:Lcom/lge/camera/components/RotateDragView;

    invoke-virtual {v1, p1, p2}, Lcom/lge/camera/components/RotateDragView;->setDegree(IZ)V

    goto :goto_0
.end method
