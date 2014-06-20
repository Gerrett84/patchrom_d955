.class public Lcom/android/lgesettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/lgesettings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/lgesettings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field private static tags:Ljava/lang/String;


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 486
    const-string v0, "com.android.apps.tag"

    sput-object v0, Lcom/android/lgesettings/applications/ManageApplications;->tags:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 181
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mShowBackground:Z

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mDefaultListType:I

    .line 1355
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/ManageApplications$2;-><init>(Lcom/android/lgesettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/lgesettings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/lgesettings/applications/ManageApplications;->tags:Ljava/lang/String;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1062
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1063
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1066
    const-class v1, Lcom/android/lgesettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080567

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1068
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1173
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08058b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1174
    const v1, 0x7f08058c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1175
    const v1, 0x7f08058d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1176
    const v1, 0x7f080106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1177
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1179
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1181
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1044
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1047
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1195
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1197
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1198
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1199
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/applications/ManageApplications$1;-><init>(Lcom/android/lgesettings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1270
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 873
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 875
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 877
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/lgesettings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    .line 878
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 879
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 881
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    :goto_0
    if-nez v0, :cond_0

    .line 884
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 886
    :cond_0
    const-class v1, Lcom/android/lgesettings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move v1, v8

    .line 899
    :goto_1
    if-eqz p1, :cond_9

    .line 900
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    .line 901
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 902
    if-eq v0, v5, :cond_8

    .line 903
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mShowBackground:Z

    .line 906
    :goto_3
    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mDefaultListType:I

    .line 908
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/lgesettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 910
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 912
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 913
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0805ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 915
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f080592

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/lgesettings/applications/ManageApplications;Lcom/android/lgesettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/lgesettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 918
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 923
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080594

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 924
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080d0f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 928
    :cond_2
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/lgesettings/applications/ManageApplications;Lcom/android/lgesettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/lgesettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 931
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_3
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f080593

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/lgesettings/applications/ManageApplications;Lcom/android/lgesettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/lgesettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 937
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mApplicationsState:Lcom/android/lgesettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f080591

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/lgesettings/applications/ManageApplications;Lcom/android/lgesettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/lgesettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 942
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    return-void

    .line 881
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 889
    :cond_5
    const-class v1, Lcom/android/lgesettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 892
    :cond_6
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    move v1, v7

    .line 893
    goto/16 :goto_1

    .line 894
    :cond_7
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v7

    .line 896
    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_3

    :cond_a
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1072
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1076
    const/4 v0, 0x1

    const v1, 0x7f080586

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1079
    const/4 v0, 0x2

    const v1, 0x7f080587

    invoke-interface {p1, v3, v6, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1082
    const v0, 0x7f080588

    invoke-interface {p1, v3, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1084
    const/4 v0, 0x7

    const v1, 0x7f080589

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1086
    const/16 v0, 0x8

    const v1, 0x7f08058a

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportDefaultApps(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    const/16 v0, 0xa

    const v1, 0x7f080f61

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportUnusedApps(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    const/16 v0, 0x9

    const v1, 0x7f080f23

    invoke-interface {p1, v3, v0, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1098
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 951
    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400c0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 953
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 954
    iput-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 956
    const v5, 0x7f0a003b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 957
    new-instance v0, Lcom/android/lgesettings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/lgesettings/applications/ManageApplications;)V

    .line 958
    .local v0, adapter:Lcom/android/lgesettings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 959
    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 960
    const v5, 0x7f0a01a1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 961
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 965
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 966
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 969
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 970
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->buildResetDialog()V

    .line 973
    :cond_1
    if-nez p3, :cond_2

    .line 975
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 976
    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 977
    .local v3, tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/lgesettings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 978
    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 984
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 975
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1113
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1114
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1108
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1033
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1037
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1188
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/lgesettings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1319
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_1

    .line 1320
    iget-object v1, p1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1321
    .local v0, entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 1322
    iget-object v1, v0, Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1323
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1325
    .end local v0           #entry:Lcom/android/lgesettings/applications/ApplicationsState$AppEntry;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f080f23

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1275
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1276
    :cond_0
    iput v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    .line 1277
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :cond_1
    move v6, v7

    .line 1314
    :cond_2
    :goto_0
    return v6

    .line 1281
    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1282
    iput-boolean v6, p0, Lcom/android/lgesettings/applications/ManageApplications;->mShowBackground:Z

    .line 1283
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1284
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView;->mAdapter:Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 1313
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->updateOptionsMenu()V

    move v6, v7

    .line 1314
    goto :goto_0

    .line 1286
    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 1287
    iput-boolean v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mShowBackground:Z

    .line 1288
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1289
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;
    invoke-static {v0}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/applications/RunningProcessesView;->mAdapter:Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0, v7}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_1

    .line 1291
    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 1292
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_1

    .line 1293
    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 1294
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1295
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1296
    const-class v1, Lcom/android/lgesettings/unusedapps/ui/settings/AppCleanupSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    .line 1297
    const-class v1, Lcom/android/lgesettings/unusedapps/ui/settings/AppCleanupSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 1300
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1301
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.appcleanup"

    const-string v3, "com.lge.appcleanup.ui.settings.AppCleanupSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1303
    const-string v1, "fromSettings"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1304
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1306
    :cond_9
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.settings.DEFAULT_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1015
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1016
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mActivityResumed:Z

    .line 1017
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1017
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1103
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 994
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mActivityResumed:Z

    .line 996
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 997
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 998
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1002
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1003
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1004
    iget v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1005
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/lgesettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1008
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1009
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1011
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 989
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 990
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1024
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1025
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1029
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 1050
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1051
    iget-object v2, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 1052
    .local v1, tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1056
    .end local v1           #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1050
    .restart local v1       #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    .end local v1           #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1328
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 1329
    .local v3, tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 1332
    iget-boolean v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1333
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/lgesettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1334
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1338
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1339
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    .line 1340
    .local v2, t:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1341
    invoke-virtual {v2}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1336
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1345
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1346
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1347
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1348
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1349
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1351
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 13

    .prologue
    const/4 v10, 0x4

    const/16 v12, 0xa

    const/16 v11, 0x9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1117
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v8, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mCurTab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    iget v8, v8, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v8, v7, :cond_7

    .line 1126
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/applications/ManageApplications;->tabForType(I)Lcom/android/lgesettings/applications/ManageApplications$TabInfo;

    move-result-object v5

    .line 1127
    .local v5, tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    if-eqz v5, :cond_5

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;
    invoke-static {v5}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;

    move-result-object v8

    if-eqz v8, :cond_5

    #getter for: Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/lgesettings/applications/RunningProcessesView;
    invoke-static {v5}, Lcom/android/lgesettings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/lgesettings/applications/ManageApplications$TabInfo;)Lcom/android/lgesettings/applications/RunningProcessesView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/lgesettings/applications/RunningProcessesView;->mAdapter:Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v8}, Lcom/android/lgesettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v4

    .line 1129
    .local v4, showingBackground:Z
    :goto_1
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1130
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1131
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1132
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v4, :cond_6

    :goto_2
    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1133
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x8

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1134
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1135
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1137
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1138
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v7, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1155
    .end local v4           #showingBackground:Z
    .end local v5           #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_3
    :goto_3
    sget-boolean v7, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v7, :cond_0

    .line 1156
    invoke-virtual {p0}, Lcom/android/lgesettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1158
    .local v2, dm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1159
    .local v0, admins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    .line 1160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1161
    .local v1, comp:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.threelm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1162
    iget-object v7, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v8, 0x8

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v0           #admins:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1           #comp:Landroid/content/ComponentName;
    .end local v2           #dm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v5       #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_5
    move v4, v6

    .line 1127
    goto/16 :goto_1

    .restart local v4       #showingBackground:Z
    :cond_6
    move v7, v6

    .line 1132
    goto :goto_2

    .line 1141
    .end local v4           #showingBackground:Z
    .end local v5           #tab:Lcom/android/lgesettings/applications/ManageApplications$TabInfo;
    :cond_7
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    if-eq v8, v10, :cond_9

    move v8, v7

    :goto_4
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1142
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iget v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mSortOrder:I

    const/4 v10, 0x5

    if-eq v8, v10, :cond_a

    move v8, v7

    :goto_5
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1143
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1144
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1145
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1146
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1147
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1149
    :cond_8
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1150
    iget-object v8, p0, Lcom/android/lgesettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v8, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_9
    move v8, v6

    .line 1141
    goto :goto_4

    :cond_a
    move v8, v6

    .line 1142
    goto :goto_5
.end method
