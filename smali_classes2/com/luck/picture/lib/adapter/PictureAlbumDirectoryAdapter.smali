.class public Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;,
        Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private for:I

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field private new:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->do:Landroid/content/Context;

    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->do:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic for(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;)Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->new:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public case(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 2
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->try()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->for()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->if()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->else()Z

    move-result v3

    .line 6
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->do()I

    move-result v4

    .line 7
    iget-object v5, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->new:Landroid/widget/TextView;

    if-lez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 9
    iget v3, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->for:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 10
    iget-object v2, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->do:Landroid/widget/ImageView;

    sget v3, Lcom/luck/picture/lib/R$drawable;->audio_placeholder:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v3, Landroid/support/v4/dn1;

    invoke-direct {v3}, Landroid/support/v4/dn1;-><init>()V

    sget v4, Lcom/luck/picture/lib/R$drawable;->ic_placeholder:I

    .line 12
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dn1;

    .line 13
    invoke-virtual {v3}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dn1;

    const/high16 v4, 0x3f000000    # 0.5f

    .line 14
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/do;->J(F)Lcom/bumptech/glide/request/do;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dn1;

    sget-object v4, Lcom/bumptech/glide/load/engine/case;->do:Lcom/bumptech/glide/load/engine/case;

    .line 15
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dn1;

    const/16 v4, 0xa0

    .line 16
    invoke-virtual {v3, v4, v4}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object v3

    check-cast v3, Landroid/support/v4/dn1;

    .line 17
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v2

    new-instance v3, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;

    iget-object v4, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->do:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$do;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/widget/ImageView;Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;)V

    .line 21
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 22
    :goto_1
    iget-object v2, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->for:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;->if:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$if;

    invoke-direct {v0, p0, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$if;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Lcom/luck/picture/lib/entity/LocalMediaFolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public else(Landroid/view/ViewGroup;I)Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->do:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/luck/picture/lib/R$layout;->picture_album_folder_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;

    invoke-direct {p2, p0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->for:I

    return-void
.end method

.method public new(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->case(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->else(Landroid/view/ViewGroup;I)Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$for;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->new:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;

    return-void
.end method

.method public try()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->if:Ljava/util/List;

    return-object v0
.end method
