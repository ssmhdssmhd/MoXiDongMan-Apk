.class Lcom/bumptech/glide/load/model/try$do;
.super Landroid/support/v4/jw0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/model/try;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/jw0<",
        "Lcom/bumptech/glide/load/model/try$if<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field public final synthetic try:Lcom/bumptech/glide/load/model/try;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/try;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/model/try$do;->try:Lcom/bumptech/glide/load/model/try;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/jw0;-><init>(J)V

    return-void
.end method


# virtual methods
.method public break(Lcom/bumptech/glide/load/model/try$if;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/try$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/try$if<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/try$if;->for()V

    return-void
.end method

.method public bridge synthetic case(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/model/try$if;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/try$do;->break(Lcom/bumptech/glide/load/model/try$if;Ljava/lang/Object;)V

    return-void
.end method
