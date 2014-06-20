.class Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/lgesettings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DeviceAdminSettings;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 244
    invoke-virtual {p1}, Lcom/android/lgesettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 246
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 12
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    iget-object v3, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 304
    .local v7, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;

    .line 305
    .local v11, vh:Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;
    iget-object v3, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    iget-object v3, v3, Lcom/android/lgesettings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo;

    .line 306
    .local v2, item:Landroid/app/admin/DeviceAdminInfo;
    iget-object v3, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v3, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    iget-object v4, v4, Lcom/android/lgesettings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    sget-boolean v3, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v3, :cond_0

    .line 313
    const-string v3, "ro.3LM.extended"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    move v9, v0

    .line 315
    .local v9, isKddi:Z
    :goto_0
    if-eqz v9, :cond_3

    move v8, v0

    .line 316
    .local v8, defaultLocked:I
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "admin_locked"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_4

    move v10, v0

    .line 320
    .local v10, lockAdmin:Z
    :goto_2
    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.threelm.dm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 329
    .end local v8           #defaultLocked:I
    .end local v9           #isKddi:Z
    .end local v10           #lockAdmin:Z
    :cond_0
    :try_start_0
    iget-object v0, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_3
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 335
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    invoke-virtual {v1}, Lcom/android/lgesettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v6, v11, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAdminListEnableDisplayMenu(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    .line 340
    :cond_1
    return-void

    :cond_2
    move v9, v1

    .line 313
    goto :goto_0

    .restart local v9       #isKddi:Z
    :cond_3
    move v8, v1

    .line 315
    goto :goto_1

    .restart local v8       #defaultLocked:I
    :cond_4
    move v10, v1

    .line 316
    goto :goto_2

    .line 330
    .end local v8           #defaultLocked:I
    .end local v9           #isKddi:Z
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/lgesettings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/lgesettings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 261
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 283
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;I)V

    .line 288
    return-object v0

    .line 285
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 270
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/lgesettings/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, v2, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->setAdminListEnableClickMenu(Landroid/content/Context;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/lgesettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04005e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 294
    .local v0, h:Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 295
    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 296
    const v2, 0x7f0a00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 297
    const v2, 0x7f0a00da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/lgesettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 298
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    return-object v1
.end method
