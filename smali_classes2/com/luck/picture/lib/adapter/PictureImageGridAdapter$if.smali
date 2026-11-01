.class Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:I

.field public final synthetic if:I

.field public final synthetic new:Lcom/luck/picture/lib/entity/LocalMedia;

.field public final synthetic try:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Ljava/lang/String;IILcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->do:Ljava/lang/String;

    iput p3, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->if:I

    iput p4, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->for:I

    iput-object p5, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->new:Lcom/luck/picture/lib/entity/LocalMedia;

    iput-object p6, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->try:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 2
    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->if(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/do;->final(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->do:Ljava/lang/String;

    .line 3
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->if(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->if(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/rd1;->native(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->new(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->for:I

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->for:I

    .line 6
    :goto_1
    iget v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->if:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 7
    invoke-static {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->try(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    iget v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->if:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 8
    invoke-static {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->case(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 9
    invoke-static {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->else(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)I

    move-result v1

    if-eq v1, v0, :cond_6

    :cond_4
    iget v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->if:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 10
    invoke-static {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->goto(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 11
    invoke-static {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->else(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)I

    move-result v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 12
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-static {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->this(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->new:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-interface {v0, v1, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;->onPictureClick(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    goto :goto_3

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->case:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->try:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$if;->new:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->for(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$ViewHolder;Lcom/luck/picture/lib/entity/LocalMedia;)V

    :goto_3
    return-void
.end method
