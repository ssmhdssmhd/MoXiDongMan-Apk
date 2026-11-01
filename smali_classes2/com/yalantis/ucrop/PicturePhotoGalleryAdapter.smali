.class public Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private for:Landroid/view/LayoutInflater;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/jt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v4/jt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->if:Ljava/util/List;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->for:Landroid/view/LayoutInflater;

    .line 4
    iput-object p1, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->do:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/jt;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->if:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public for(Landroid/view/ViewGroup;I)Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->for:Landroid/view/LayoutInflater;

    sget v0, Lcom/yalantis/ucrop/R$layout;->ucrop_picture_gf_adapter_edit_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public if(Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/jt;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/jt;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroid/support/v4/jt;->isCut()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p1, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;->if:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;->if:Landroid/widget/ImageView;

    sget v1, Lcom/yalantis/ucrop/R$drawable;->ucrop_oval_true:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p1, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;->if:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_1
    new-instance p2, Landroid/support/v4/dn1;

    invoke-direct {p2}, Landroid/support/v4/dn1;-><init>()V

    sget v1, Lcom/yalantis/ucrop/R$color;->ucrop_color_grey:I

    .line 8
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    sget-object v1, Lcom/bumptech/glide/load/engine/case;->do:Lcom/bumptech/glide/load/engine/case;

    .line 10
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dn1;

    .line 11
    iget-object v1, p0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->do:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v0

    .line 13
    invoke-static {}, Landroid/support/v4/g30;->const()Landroid/support/v4/g30;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->H0(Lcom/bumptech/glide/this;)Lcom/bumptech/glide/else;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p2

    iget-object p1, p1, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;->do:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->if(Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->for(Landroid/view/ViewGroup;I)Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
