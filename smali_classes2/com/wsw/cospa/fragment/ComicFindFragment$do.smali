.class Lcom/wsw/cospa/fragment/ComicFindFragment$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/ComicFindFragment;->catch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/ComicFindFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/ComicFindFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicFindFragment$do;->do:Lcom/wsw/cospa/fragment/ComicFindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment$do;->do:Lcom/wsw/cospa/fragment/ComicFindFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/wsw/cospa/fragment/ComicFindFragment;->goto(Lcom/wsw/cospa/fragment/ComicFindFragment;Z)Z

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/fragment/ComicFindFragment$do;->do:Lcom/wsw/cospa/fragment/ComicFindFragment;

    invoke-virtual {p1}, Lcom/wsw/cospa/fragment/ComicFindFragment;->super()V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
