.class Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->if(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicInfoBean;

.field public final synthetic if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;Lcom/wsw/cospa/bean/ComicInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;->if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;->do:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;->if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->do(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;->if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->do(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;->do:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-interface {p1, v0}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;->callback(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    :cond_0
    return-void
.end method
