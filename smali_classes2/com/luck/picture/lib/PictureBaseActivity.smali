.class public Lcom/luck/picture/lib/PictureBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field public break:Landroid/support/v4/pd1;

.field public case:I

.field public catch:Landroid/support/v4/pd1;

.field public class:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field public do:Landroid/content/Context;

.field public else:Ljava/lang/String;

.field public for:Z

.field public goto:Ljava/lang/String;

.field public if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field public new:Z

.field public this:Ljava/lang/String;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private class(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 5
    invoke-static {v3}, Landroid/support/v4/rd1;->goto(Ljava/lang/String;)Z

    move-result v5

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    xor-int/lit8 v6, v5, 0x1

    .line 7
    invoke-virtual {v4, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->final(Z)V

    if-eqz v5, :cond_1

    const-string v3, ""

    .line 8
    :cond_1
    invoke-virtual {v4, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->const(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object p2

    new-instance v0, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v1, 0xad2

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/rxbus2/do;->this(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->throw(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureBaseActivity;->while(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private super()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->for:Ljava/lang/String;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->goto:Ljava/lang/String;

    .line 2
    sget v0, Lcom/luck/picture/lib/R$attr;->picture_statusFontColor:I

    .line 3
    invoke-static {p0, v0}, Landroid/support/v4/x4;->do(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->for:Z

    .line 4
    sget v0, Lcom/luck/picture/lib/R$attr;->picture_style_numComplete:I

    invoke-static {p0, v0}, Landroid/support/v4/x4;->do(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_style_checkNumMode:I

    .line 6
    invoke-static {p0, v1}, Landroid/support/v4/x4;->do(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    .line 7
    sget v0, Lcom/luck/picture/lib/R$attr;->colorPrimary:I

    invoke-static {p0, v0}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->try:I

    .line 8
    sget v0, Lcom/luck/picture/lib/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v0}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->case:I

    .line 9
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->class:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->class:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private synthetic throw(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/luck/picture/lib/compress/new;->import(Landroid/content/Context;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/compress/new$if;->static(Ljava/util/List;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->new:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/compress/new$if;->finally(Ljava/lang/String;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->super:I

    .line 5
    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/compress/new$if;->final(I)Lcom/luck/picture/lib/compress/new$if;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/new$if;->const()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method private synthetic while(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureBaseActivity;->class(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 4
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->try()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 5
    :cond_1
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->const(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->final(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->break(Ljava/lang/String;)V

    .line 9
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public case()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->catch:Landroid/support/v4/pd1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->catch:Landroid/support/v4/pd1;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public catch(Z)I
    .locals 7

    const-string v3, "_data like ?"

    const/4 v6, -0x1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/luck/picture/lib/tools/do;->break(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "_id DESC"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    const-string v1, "_id"

    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 7
    :goto_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz p1, :cond_2

    const-string p1, "duration"

    .line 8
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_2
    const-string p1, "date_added"

    .line 9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 10
    :goto_2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 11
    invoke-static {v2, v3}, Landroid/support/v4/cx;->if(J)I

    move-result p1

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_3

    move v6, v1

    :cond_3
    return v6

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method public const(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->default:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->new(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public default(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/do$do;

    invoke-direct {v0}, Lcom/yalantis/ucrop/do$do;-><init>()V

    .line 2
    sget v1, Lcom/luck/picture/lib/R$attr;->picture_crop_toolbar_bg:I

    invoke-static {p0, v1}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v1

    .line 3
    sget v2, Lcom/luck/picture/lib/R$attr;->picture_crop_status_color:I

    invoke-static {p0, v2}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v2

    .line 4
    sget v3, Lcom/luck/picture/lib/R$attr;->picture_crop_title_color:I

    invoke-static {p0, v3}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->continue(I)V

    .line 6
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/do$do;->package(I)V

    .line 7
    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/do$do;->interface(I)V

    .line 8
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->protected:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->try(Z)V

    .line 9
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->transient:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->extends(Z)V

    .line 10
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->implements:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->finally(Z)V

    .line 11
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->d:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->throw(Z)V

    .line 12
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->a:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->default(Z)V

    .line 13
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synchronized:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->throws(Z)V

    .line 14
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->catch:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->else(I)V

    .line 15
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->instanceof:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->import(Z)V

    .line 16
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->interface:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/do$do;->while(Z)V

    .line 17
    invoke-static {p1}, Landroid/support/v4/rd1;->goto(Ljava/lang/String;)Z

    move-result v1

    .line 18
    invoke-static {p1}, Landroid/support/v4/rd1;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v3

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 21
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/luck/picture/lib/tools/do;->const(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/do;->else(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/do;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->native:I

    int-to-float v2, v2

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->public:I

    int-to-float v1, v1

    .line 24
    invoke-virtual {p1, v2, v1}, Lcom/yalantis/ucrop/do;->super(FF)Lcom/yalantis/ucrop/do;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->static:I

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->switch:I

    .line 25
    invoke-virtual {p1, v2, v1}, Lcom/yalantis/ucrop/do;->throw(II)Lcom/yalantis/ucrop/do;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/do;->while(Lcom/yalantis/ucrop/do$do;)Lcom/yalantis/ucrop/do;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/do;->goto(Landroid/app/Activity;)V

    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->break:Landroid/support/v4/pd1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->break:Landroid/support/v4/pd1;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public extends(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yalantis/ucrop/if$do;

    invoke-direct {v0}, Lcom/yalantis/ucrop/if$do;-><init>()V

    .line 2
    sget v1, Lcom/luck/picture/lib/R$attr;->picture_crop_toolbar_bg:I

    invoke-static {p0, v1}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v1

    .line 3
    sget v2, Lcom/luck/picture/lib/R$attr;->picture_crop_status_color:I

    invoke-static {p0, v2}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v2

    .line 4
    sget v3, Lcom/luck/picture/lib/R$attr;->picture_crop_title_color:I

    invoke-static {p0, v3}, Landroid/support/v4/x4;->if(Landroid/content/Context;I)I

    move-result v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->continue(I)V

    .line 6
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/if$do;->package(I)V

    .line 7
    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/if$do;->interface(I)V

    .line 8
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->protected:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->try(Z)V

    .line 9
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->transient:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->extends(Z)V

    .line 10
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->d:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->throw(Z)V

    .line 11
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->implements:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->finally(Z)V

    .line 12
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->a:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->default(Z)V

    .line 13
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synchronized:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->throws(Z)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->import(Z)V

    .line 15
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->catch:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->else(I)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/if$do;->final(Ljava/util/ArrayList;)V

    .line 17
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->interface:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/if$do;->while(Z)V

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 19
    :goto_0
    invoke-static {p1}, Landroid/support/v4/rd1;->goto(Ljava/lang/String;)Z

    move-result v1

    .line 20
    invoke-static {p1}, Landroid/support/v4/rd1;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v3

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/luck/picture/lib/tools/do;->const(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/if;->else(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/if;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->native:I

    int-to-float v2, v2

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->public:I

    int-to-float v1, v1

    .line 26
    invoke-virtual {p1, v2, v1}, Lcom/yalantis/ucrop/if;->super(FF)Lcom/yalantis/ucrop/if;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->static:I

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->switch:I

    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/yalantis/ucrop/if;->throw(II)Lcom/yalantis/ucrop/if;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/if;->while(Lcom/yalantis/ucrop/if$do;)Lcom/yalantis/ucrop/if;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/if;->goto(Landroid/app/Activity;)V

    return-void
.end method

.method public final()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->case:I

    iget v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->try:I

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->for:Z

    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/dm0;->if(Landroid/app/Activity;IIZ)V

    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/luck/picture/lib/R$anim;->fade_out:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$anim;->a3:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public goto(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public import(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 4
    :goto_0
    invoke-static {v1}, Landroid/support/v4/rd1;->class(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->return()V

    .line 6
    :cond_1
    new-instance v2, Lcom/luck/picture/lib/PictureBaseActivity$if;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/luck/picture/lib/PictureBaseActivity$if;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;ZZLjava/util/List;)V

    invoke-static {v2}, Lcom/luck/picture/lib/rxbus2/if;->else(Lcom/luck/picture/lib/rxbus2/if$new;)V

    return-void
.end method

.method public isImmersive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public native(IZ)V
    .locals 6

    const-string v0, "_id=?"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    int-to-long v4, p1

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public new(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->return()V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lio/reactivex/for;->D2(Ljava/lang/Object;)Lio/reactivex/for;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/for;->t3(Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object v0

    new-instance v1, Landroid/support/v4/nd1;

    invoke-direct {v1, p0}, Landroid/support/v4/nd1;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/for;->S2(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/for;->t3(Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object v0

    new-instance v1, Landroid/support/v4/md1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/md1;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/luck/picture/lib/compress/new;->import(Landroid/content/Context;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/compress/new$if;->static(Ljava/util/List;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->super:I

    .line 10
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/new$if;->final(I)Lcom/luck/picture/lib/compress/new$if;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->new:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/new$if;->finally(Ljava/lang/String;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureBaseActivity$do;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$do;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/new$if;->throws(Lcom/luck/picture/lib/compress/OnCompressListener;)Lcom/luck/picture/lib/compress/new$if;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/new$if;->super()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "PictureSelectorConfig"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const-string v0, "CameraPath"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    const-string v0, "OriginalPath"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->case:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 7
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    iput-object p0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    .line 9
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->super()V

    .line 10
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isImmersive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->final()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->case()V

    .line 3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->else()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    const-string v1, "CameraPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    const-string v1, "OriginalPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const-string v1, "PictureSelectorConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public public(ILjava/io/File;)V
    .locals 2

    if-lez p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/do;->static(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/do;->switch(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public return()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->case()V

    .line 3
    new-instance v0, Landroid/support/v4/pd1;

    invoke-direct {v0, p0}, Landroid/support/v4/pd1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->catch:Landroid/support/v4/pd1;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public static()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->else()V

    .line 3
    new-instance v0, Landroid/support/v4/pd1;

    invoke-direct {v0, p0}, Landroid/support/v4/pd1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->break:Landroid/support/v4/pd1;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public switch(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/j20;->do()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public this(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->goto(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public throws(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/j20;->do()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public try(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->const(Ljava/lang/String;)V

    const-string v1, ""

    .line 6
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->final(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->break(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
