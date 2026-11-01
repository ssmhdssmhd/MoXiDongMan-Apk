.class public Lcc/shinichi/library/tool/image/do;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v0

    new-instance v1, Lcc/shinichi/library/tool/image/do$do;

    invoke-direct {v1, p0, p1}, Lcc/shinichi/library/tool/image/do$do;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
